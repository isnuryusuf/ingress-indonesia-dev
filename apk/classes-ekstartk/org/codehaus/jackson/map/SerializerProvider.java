package org.codehaus.jackson.map;

import java.lang.reflect.Type;
import java.util.Date;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.ser.FilterProvider;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public abstract class SerializerProvider
{
  protected static final JavaType TYPE_OBJECT = TypeFactory.defaultInstance().uncheckedSimpleType(Object.class);
  protected final SerializationConfig _config;
  protected final Class<?> _serializationView;

  protected SerializerProvider(SerializationConfig paramSerializationConfig)
  {
    this._config = paramSerializationConfig;
    if (paramSerializationConfig == null);
    for (Class localClass = null; ; localClass = this._config.getSerializationView())
    {
      this._serializationView = localClass;
      return;
    }
  }

  public JavaType constructSpecializedType(JavaType paramJavaType, Class<?> paramClass)
  {
    return this._config.constructSpecializedType(paramJavaType, paramClass);
  }

  public JavaType constructType(Type paramType)
  {
    return this._config.getTypeFactory().constructType(paramType);
  }

  public abstract void defaultSerializeDateKey(long paramLong, JsonGenerator paramJsonGenerator);

  public abstract void defaultSerializeDateKey(Date paramDate, JsonGenerator paramJsonGenerator);

  public abstract void defaultSerializeDateValue(long paramLong, JsonGenerator paramJsonGenerator);

  public abstract void defaultSerializeDateValue(Date paramDate, JsonGenerator paramJsonGenerator);

  public final void defaultSerializeNull(JsonGenerator paramJsonGenerator)
  {
    getNullValueSerializer().serialize(null, paramJsonGenerator, this);
  }

  public final void defaultSerializeValue(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    if (paramObject == null)
    {
      getNullValueSerializer().serialize(null, paramJsonGenerator, this);
      return;
    }
    findTypedValueSerializer(paramObject.getClass(), true, null).serialize(paramObject, paramJsonGenerator, this);
  }

  public abstract JsonSerializer<Object> findKeySerializer(JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract JsonSerializer<Object> findTypedValueSerializer(Class<?> paramClass, boolean paramBoolean, BeanProperty paramBeanProperty);

  public abstract JsonSerializer<Object> findTypedValueSerializer(JavaType paramJavaType, boolean paramBoolean, BeanProperty paramBeanProperty);

  public abstract JsonSerializer<Object> findValueSerializer(Class<?> paramClass, BeanProperty paramBeanProperty);

  public abstract JsonSerializer<Object> findValueSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty);

  public final FilterProvider getFilterProvider()
  {
    return this._config.getFilterProvider();
  }

  public abstract JsonSerializer<Object> getNullKeySerializer();

  public abstract JsonSerializer<Object> getNullValueSerializer();

  public final Class<?> getSerializationView()
  {
    return this._serializationView;
  }

  public final boolean isEnabled(SerializationConfig.Feature paramFeature)
  {
    return this._config.isEnabled(paramFeature);
  }

  public abstract void serializeValue(SerializationConfig paramSerializationConfig, JsonGenerator paramJsonGenerator, Object paramObject, SerializerFactory paramSerializerFactory);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.SerializerProvider
 * JD-Core Version:    0.6.2
 */