package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.ResolvableDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.impl.PropertyBasedCreator;
import org.codehaus.jackson.map.deser.impl.PropertyValueBuffer;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class MapDeserializer extends ContainerDeserializerBase<Map<Object, Object>>
  implements ResolvableDeserializer
{
  protected JsonDeserializer<Object> _delegateDeserializer;
  protected final boolean _hasDefaultCreator;
  protected HashSet<String> _ignorableProperties;
  protected final KeyDeserializer _keyDeserializer;
  protected final JavaType _mapType;
  protected PropertyBasedCreator _propertyBasedCreator;
  protected final JsonDeserializer<Object> _valueDeserializer;
  protected final ValueInstantiator _valueInstantiator;
  protected final TypeDeserializer _valueTypeDeserializer;

  public MapDeserializer(JavaType paramJavaType, ValueInstantiator paramValueInstantiator, KeyDeserializer paramKeyDeserializer, JsonDeserializer<Object> paramJsonDeserializer, TypeDeserializer paramTypeDeserializer)
  {
    super(Map.class);
    this._mapType = paramJavaType;
    this._keyDeserializer = paramKeyDeserializer;
    this._valueDeserializer = paramJsonDeserializer;
    this._valueTypeDeserializer = paramTypeDeserializer;
    this._valueInstantiator = paramValueInstantiator;
    if (paramValueInstantiator.canCreateFromObjectWith());
    for (this._propertyBasedCreator = new PropertyBasedCreator(paramValueInstantiator); ; this._propertyBasedCreator = null)
    {
      this._hasDefaultCreator = paramValueInstantiator.canCreateUsingDefault();
      return;
    }
  }

  public Map<Object, Object> _deserializeUsingCreator(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    PropertyBasedCreator localPropertyBasedCreator = this._propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext);
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.START_OBJECT)
      localJsonToken1 = paramJsonParser.nextToken();
    JsonDeserializer localJsonDeserializer = this._valueDeserializer;
    TypeDeserializer localTypeDeserializer = this._valueTypeDeserializer;
    if (localJsonToken1 == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      JsonToken localJsonToken2 = paramJsonParser.nextToken();
      if ((this._ignorableProperties != null) && (this._ignorableProperties.contains(str)))
        paramJsonParser.skipChildren();
      SettableBeanProperty localSettableBeanProperty;
      Object localObject3;
      do
      {
        localJsonToken1 = paramJsonParser.nextToken();
        break;
        localSettableBeanProperty = localPropertyBasedCreator.findCreatorProperty(str);
        if (localSettableBeanProperty == null)
          break label179;
        localObject3 = localSettableBeanProperty.deserialize(paramJsonParser, paramDeserializationContext);
      }
      while (!localPropertyValueBuffer.assignParameter(localSettableBeanProperty.getPropertyIndex(), localObject3));
      paramJsonParser.nextToken();
      try
      {
        Map localMap2 = (Map)localPropertyBasedCreator.build(localPropertyValueBuffer);
        _readAndBind(paramJsonParser, paramDeserializationContext, localMap2);
        return localMap2;
      }
      catch (Exception localException2)
      {
        wrapAndThrow(localException2, this._mapType.getRawClass());
        return null;
      }
      label179: Object localObject1 = paramJsonParser.getCurrentName();
      label192: Object localObject2;
      if (this._keyDeserializer == null)
      {
        if (localJsonToken2 != JsonToken.VALUE_NULL)
          break label230;
        localObject2 = null;
      }
      while (true)
      {
        localPropertyValueBuffer.bufferMapProperty(localObject1, localObject2);
        break;
        localObject1 = this._keyDeserializer.deserializeKey((String)localObject1, paramDeserializationContext);
        break label192;
        label230: if (localTypeDeserializer == null)
          localObject2 = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        else
          localObject2 = localJsonDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
      }
    }
    try
    {
      Map localMap1 = (Map)localPropertyBasedCreator.build(localPropertyValueBuffer);
      return localMap1;
    }
    catch (Exception localException1)
    {
      wrapAndThrow(localException1, this._mapType.getRawClass());
    }
    return null;
  }

  protected final void _readAndBind(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Map<Object, Object> paramMap)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.START_OBJECT)
      localJsonToken1 = paramJsonParser.nextToken();
    KeyDeserializer localKeyDeserializer = this._keyDeserializer;
    JsonDeserializer localJsonDeserializer = this._valueDeserializer;
    TypeDeserializer localTypeDeserializer = this._valueTypeDeserializer;
    if (localJsonToken1 == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      if (localKeyDeserializer == null);
      JsonToken localJsonToken2;
      for (Object localObject1 = str; ; localObject1 = localKeyDeserializer.deserializeKey(str, paramDeserializationContext))
      {
        localJsonToken2 = paramJsonParser.nextToken();
        if ((this._ignorableProperties == null) || (!this._ignorableProperties.contains(str)))
          break label113;
        paramJsonParser.skipChildren();
        localJsonToken1 = paramJsonParser.nextToken();
        break;
      }
      label113: Object localObject2;
      if (localJsonToken2 == JsonToken.VALUE_NULL)
        localObject2 = null;
      while (true)
      {
        paramMap.put(localObject1, localObject2);
        break;
        if (localTypeDeserializer == null)
          localObject2 = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        else
          localObject2 = localJsonDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
      }
    }
  }

  public Map<Object, Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (this._propertyBasedCreator != null)
      return _deserializeUsingCreator(paramJsonParser, paramDeserializationContext);
    if (this._delegateDeserializer != null)
      return (Map)this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    if (!this._hasDefaultCreator)
      throw paramDeserializationContext.instantiationException(getMapClass(), "No default constructor found");
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken != JsonToken.START_OBJECT) && (localJsonToken != JsonToken.FIELD_NAME) && (localJsonToken != JsonToken.END_OBJECT))
    {
      if (localJsonToken == JsonToken.VALUE_STRING)
        return (Map)this._valueInstantiator.createFromString(paramJsonParser.getText());
      throw paramDeserializationContext.mappingException(getMapClass());
    }
    Map localMap = (Map)this._valueInstantiator.createUsingDefault();
    _readAndBind(paramJsonParser, paramDeserializationContext, localMap);
    return localMap;
  }

  public Map<Object, Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Map<Object, Object> paramMap)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken != JsonToken.START_OBJECT) && (localJsonToken != JsonToken.FIELD_NAME))
      throw paramDeserializationContext.mappingException(getMapClass());
    _readAndBind(paramJsonParser, paramDeserializationContext, paramMap);
    return paramMap;
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }

  public JsonDeserializer<Object> getContentDeserializer()
  {
    return this._valueDeserializer;
  }

  public final Class<?> getMapClass()
  {
    return this._mapType.getRawClass();
  }

  public void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
  {
    if (this._valueInstantiator.canCreateUsingDelegate())
    {
      JavaType localJavaType = this._valueInstantiator.getDelegateType();
      if (localJavaType == null)
        throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._mapType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
      this._delegateDeserializer = findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localJavaType, new BeanProperty.Std(null, localJavaType, null, this._valueInstantiator.getDelegateCreator()));
    }
    if (this._propertyBasedCreator != null)
    {
      Iterator localIterator = this._propertyBasedCreator.getCreatorProperties().iterator();
      while (localIterator.hasNext())
      {
        SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)localIterator.next();
        if (!localSettableBeanProperty.hasValueDeserializer())
          this._propertyBasedCreator.assignDeserializer(localSettableBeanProperty, findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localSettableBeanProperty.getType(), localSettableBeanProperty));
      }
    }
  }

  public void setIgnorableProperties(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0));
    for (HashSet localHashSet = null; ; localHashSet = ArrayBuilders.arrayToSet(paramArrayOfString))
    {
      this._ignorableProperties = localHashSet;
      return;
    }
  }

  protected void wrapAndThrow(Throwable paramThrowable, Object paramObject)
  {
    for (Throwable localThrowable = paramThrowable; ((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null); localThrowable = localThrowable.getCause());
    if ((localThrowable instanceof Error))
      throw ((Error)localThrowable);
    if (((localThrowable instanceof IOException)) && (!(localThrowable instanceof JsonMappingException)))
      throw ((IOException)localThrowable);
    throw JsonMappingException.wrapWithPath(localThrowable, paramObject, null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.MapDeserializer
 * JD-Core Version:    0.6.2
 */