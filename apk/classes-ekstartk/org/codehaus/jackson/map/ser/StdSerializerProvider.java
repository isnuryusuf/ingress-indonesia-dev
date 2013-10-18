package org.codehaus.jackson.map.ser;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.ContextualSerializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerFactory;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.impl.FailingSerializer;
import org.codehaus.jackson.map.ser.impl.ReadOnlyClassToSerializerMap;
import org.codehaus.jackson.map.ser.impl.SerializerCache;
import org.codehaus.jackson.map.ser.impl.UnknownSerializer;
import org.codehaus.jackson.map.ser.std.NullSerializer;
import org.codehaus.jackson.map.ser.std.StdKeySerializer;
import org.codehaus.jackson.map.ser.std.StdKeySerializers;
import org.codehaus.jackson.map.util.RootNameLookup;
import org.codehaus.jackson.type.JavaType;

public class StdSerializerProvider extends SerializerProvider
{

  @Deprecated
  public static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
  public static final JsonSerializer<Object> DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");
  public static final JsonSerializer<Object> DEFAULT_UNKNOWN_SERIALIZER = new UnknownSerializer();
  protected DateFormat _dateFormat;
  protected JsonSerializer<Object> _keySerializer;
  protected final ReadOnlyClassToSerializerMap _knownSerializers;
  protected JsonSerializer<Object> _nullKeySerializer = DEFAULT_NULL_KEY_SERIALIZER;
  protected JsonSerializer<Object> _nullValueSerializer = NullSerializer.instance;
  protected final RootNameLookup _rootNames;
  protected final SerializerCache _serializerCache;
  protected final SerializerFactory _serializerFactory;
  protected JsonSerializer<Object> _unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;

  public StdSerializerProvider()
  {
    super(null);
    this._serializerFactory = null;
    this._serializerCache = new SerializerCache();
    this._knownSerializers = null;
    this._rootNames = new RootNameLookup();
  }

  protected StdSerializerProvider(SerializationConfig paramSerializationConfig, StdSerializerProvider paramStdSerializerProvider, SerializerFactory paramSerializerFactory)
  {
    super(paramSerializationConfig);
    if (paramSerializationConfig == null)
      throw new NullPointerException();
    this._serializerFactory = paramSerializerFactory;
    this._serializerCache = paramStdSerializerProvider._serializerCache;
    this._unknownTypeSerializer = paramStdSerializerProvider._unknownTypeSerializer;
    this._keySerializer = paramStdSerializerProvider._keySerializer;
    this._nullValueSerializer = paramStdSerializerProvider._nullValueSerializer;
    this._nullKeySerializer = paramStdSerializerProvider._nullKeySerializer;
    this._rootNames = paramStdSerializerProvider._rootNames;
    this._knownSerializers = this._serializerCache.getReadOnlyLookupMap();
  }

  protected JsonSerializer<Object> _createAndCacheUntypedSerializer(Class<?> paramClass, BeanProperty paramBeanProperty)
  {
    try
    {
      JsonSerializer localJsonSerializer = _createUntypedSerializer(this._config.constructType(paramClass), paramBeanProperty);
      if (localJsonSerializer != null)
        this._serializerCache.addAndResolveNonTypedSerializer(paramClass, localJsonSerializer, this);
      return localJsonSerializer;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new JsonMappingException(localIllegalArgumentException.getMessage(), null, localIllegalArgumentException);
    }
  }

  protected JsonSerializer<Object> _createAndCacheUntypedSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    try
    {
      JsonSerializer localJsonSerializer = _createUntypedSerializer(paramJavaType, paramBeanProperty);
      if (localJsonSerializer != null)
        this._serializerCache.addAndResolveNonTypedSerializer(paramJavaType, localJsonSerializer, this);
      return localJsonSerializer;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new JsonMappingException(localIllegalArgumentException.getMessage(), null, localIllegalArgumentException);
    }
  }

  protected JsonSerializer<Object> _createUntypedSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    return this._serializerFactory.createSerializer(this._config, paramJavaType, paramBeanProperty);
  }

  protected JsonSerializer<Object> _handleContextualResolvable(JsonSerializer<Object> paramJsonSerializer, BeanProperty paramBeanProperty)
  {
    if (!(paramJsonSerializer instanceof ContextualSerializer))
      return paramJsonSerializer;
    Object localObject = ((ContextualSerializer)paramJsonSerializer).createContextual(this._config, paramBeanProperty);
    if (localObject != paramJsonSerializer)
      if ((localObject instanceof ResolvableSerializer))
        ((ResolvableSerializer)localObject).resolve(this);
    while (true)
    {
      return localObject;
      localObject = paramJsonSerializer;
    }
  }

  protected void _serializeValue(JsonGenerator paramJsonGenerator, Object paramObject)
  {
    JsonSerializer localJsonSerializer;
    boolean bool;
    if (paramObject == null)
    {
      localJsonSerializer = getNullValueSerializer();
      bool = false;
    }
    try
    {
      while (true)
      {
        localJsonSerializer.serialize(paramObject, paramJsonGenerator, this);
        if (bool)
          paramJsonGenerator.writeEndObject();
        return;
        localJsonSerializer = findTypedValueSerializer(paramObject.getClass(), true, null);
        bool = this._config.isEnabled(SerializationConfig.Feature.WRAP_ROOT_VALUE);
        if (bool)
        {
          paramJsonGenerator.writeStartObject();
          paramJsonGenerator.writeFieldName(this._rootNames.findRootName(paramObject.getClass(), this._config));
        }
      }
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
    catch (Exception localException)
    {
      String str = localException.getMessage();
      if (str == null)
        str = "[no message for " + localException.getClass().getName() + "]";
      throw new JsonMappingException(str, localException);
    }
  }

  protected StdSerializerProvider createInstance(SerializationConfig paramSerializationConfig, SerializerFactory paramSerializerFactory)
  {
    return new StdSerializerProvider(paramSerializationConfig, this, paramSerializerFactory);
  }

  public void defaultSerializeDateKey(long paramLong, JsonGenerator paramJsonGenerator)
  {
    if (isEnabled(SerializationConfig.Feature.WRITE_DATE_KEYS_AS_TIMESTAMPS))
    {
      paramJsonGenerator.writeFieldName(String.valueOf(paramLong));
      return;
    }
    if (this._dateFormat == null)
      this._dateFormat = ((DateFormat)this._config.getDateFormat().clone());
    paramJsonGenerator.writeFieldName(this._dateFormat.format(new Date(paramLong)));
  }

  public void defaultSerializeDateKey(Date paramDate, JsonGenerator paramJsonGenerator)
  {
    if (isEnabled(SerializationConfig.Feature.WRITE_DATE_KEYS_AS_TIMESTAMPS))
    {
      paramJsonGenerator.writeFieldName(String.valueOf(paramDate.getTime()));
      return;
    }
    if (this._dateFormat == null)
      this._dateFormat = ((DateFormat)this._config.getDateFormat().clone());
    paramJsonGenerator.writeFieldName(this._dateFormat.format(paramDate));
  }

  public final void defaultSerializeDateValue(long paramLong, JsonGenerator paramJsonGenerator)
  {
    if (isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS))
    {
      paramJsonGenerator.writeNumber(paramLong);
      return;
    }
    if (this._dateFormat == null)
      this._dateFormat = ((DateFormat)this._config.getDateFormat().clone());
    paramJsonGenerator.writeString(this._dateFormat.format(new Date(paramLong)));
  }

  public final void defaultSerializeDateValue(Date paramDate, JsonGenerator paramJsonGenerator)
  {
    if (isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS))
    {
      paramJsonGenerator.writeNumber(paramDate.getTime());
      return;
    }
    if (this._dateFormat == null)
      this._dateFormat = ((DateFormat)this._config.getDateFormat().clone());
    paramJsonGenerator.writeString(this._dateFormat.format(paramDate));
  }

  public JsonSerializer<Object> findKeySerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    JsonSerializer localJsonSerializer = this._serializerFactory.createKeySerializer(this._config, paramJavaType, paramBeanProperty);
    if (localJsonSerializer == null)
      if (this._keySerializer != null)
        break label54;
    label54: for (localJsonSerializer = StdKeySerializers.getStdKeySerializer(paramJavaType); ; localJsonSerializer = this._keySerializer)
    {
      if ((localJsonSerializer instanceof ContextualSerializer))
        localJsonSerializer = ((ContextualSerializer)localJsonSerializer).createContextual(this._config, paramBeanProperty);
      return localJsonSerializer;
    }
  }

  public JsonSerializer<Object> findTypedValueSerializer(Class<?> paramClass, boolean paramBoolean, BeanProperty paramBeanProperty)
  {
    Object localObject = this._knownSerializers.typedValueSerializer(paramClass);
    if (localObject != null);
    while (true)
    {
      return localObject;
      localObject = this._serializerCache.typedValueSerializer(paramClass);
      if (localObject == null)
      {
        JsonSerializer localJsonSerializer = findValueSerializer(paramClass, paramBeanProperty);
        TypeSerializer localTypeSerializer = this._serializerFactory.createTypeSerializer(this._config, this._config.constructType(paramClass), paramBeanProperty);
        if (localTypeSerializer != null);
        for (localObject = new StdSerializerProvider.WrappedSerializer(localTypeSerializer, localJsonSerializer); paramBoolean; localObject = localJsonSerializer)
        {
          this._serializerCache.addTypedSerializer(paramClass, (JsonSerializer)localObject);
          return localObject;
        }
      }
    }
  }

  public JsonSerializer<Object> findTypedValueSerializer(JavaType paramJavaType, boolean paramBoolean, BeanProperty paramBeanProperty)
  {
    Object localObject = this._knownSerializers.typedValueSerializer(paramJavaType);
    if (localObject != null);
    while (true)
    {
      return localObject;
      localObject = this._serializerCache.typedValueSerializer(paramJavaType);
      if (localObject == null)
      {
        JsonSerializer localJsonSerializer = findValueSerializer(paramJavaType, paramBeanProperty);
        TypeSerializer localTypeSerializer = this._serializerFactory.createTypeSerializer(this._config, paramJavaType, paramBeanProperty);
        if (localTypeSerializer != null);
        for (localObject = new StdSerializerProvider.WrappedSerializer(localTypeSerializer, localJsonSerializer); paramBoolean; localObject = localJsonSerializer)
        {
          this._serializerCache.addTypedSerializer(paramJavaType, (JsonSerializer)localObject);
          return localObject;
        }
      }
    }
  }

  public JsonSerializer<Object> findValueSerializer(Class<?> paramClass, BeanProperty paramBeanProperty)
  {
    JsonSerializer localJsonSerializer = this._knownSerializers.untypedValueSerializer(paramClass);
    if (localJsonSerializer == null)
    {
      localJsonSerializer = this._serializerCache.untypedValueSerializer(paramClass);
      if (localJsonSerializer == null)
      {
        localJsonSerializer = this._serializerCache.untypedValueSerializer(this._config.constructType(paramClass));
        if (localJsonSerializer == null)
        {
          localJsonSerializer = _createAndCacheUntypedSerializer(paramClass, paramBeanProperty);
          if (localJsonSerializer == null)
            return getUnknownTypeSerializer(paramClass);
        }
      }
    }
    return _handleContextualResolvable(localJsonSerializer, paramBeanProperty);
  }

  public JsonSerializer<Object> findValueSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    JsonSerializer localJsonSerializer = this._knownSerializers.untypedValueSerializer(paramJavaType);
    if (localJsonSerializer == null)
    {
      localJsonSerializer = this._serializerCache.untypedValueSerializer(paramJavaType);
      if (localJsonSerializer == null)
      {
        localJsonSerializer = _createAndCacheUntypedSerializer(paramJavaType, paramBeanProperty);
        if (localJsonSerializer == null)
          return getUnknownTypeSerializer(paramJavaType.getRawClass());
      }
    }
    return _handleContextualResolvable(localJsonSerializer, paramBeanProperty);
  }

  public JsonSerializer<Object> getNullKeySerializer()
  {
    return this._nullKeySerializer;
  }

  public JsonSerializer<Object> getNullValueSerializer()
  {
    return this._nullValueSerializer;
  }

  public JsonSerializer<Object> getUnknownTypeSerializer(Class<?> paramClass)
  {
    return this._unknownTypeSerializer;
  }

  public final void serializeValue(SerializationConfig paramSerializationConfig, JsonGenerator paramJsonGenerator, Object paramObject, SerializerFactory paramSerializerFactory)
  {
    if (paramSerializerFactory == null)
      throw new IllegalArgumentException("Can not pass null serializerFactory");
    StdSerializerProvider localStdSerializerProvider = createInstance(paramSerializationConfig, paramSerializerFactory);
    if (localStdSerializerProvider.getClass() != getClass())
      throw new IllegalStateException("Broken serializer provider: createInstance returned instance of type " + localStdSerializerProvider.getClass() + "; blueprint of type " + getClass());
    localStdSerializerProvider._serializeValue(paramJsonGenerator, paramObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializerProvider
 * JD-Core Version:    0.6.2
 */