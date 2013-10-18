package org.codehaus.jackson.map.ser;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import org.codehaus.jackson.map.ser.impl.UnwrappingBeanPropertyWriter;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class BeanPropertyWriter
  implements BeanProperty
{
  protected final Method _accessorMethod;
  protected final JavaType _cfgSerializationType;
  protected final Annotations _contextAnnotations;
  protected final JavaType _declaredType;
  protected PropertySerializerMap _dynamicSerializers;
  protected final Field _field;
  protected Class<?>[] _includeInViews;
  protected HashMap<Object, Object> _internalSettings;
  protected final AnnotatedMember _member;
  protected final SerializedString _name;
  protected JavaType _nonTrivialBaseType;
  protected final JsonSerializer<Object> _serializer;
  protected final boolean _suppressNulls;
  protected final Object _suppressableValue;
  protected TypeSerializer _typeSerializer;

  public BeanPropertyWriter(AnnotatedMember paramAnnotatedMember, Annotations paramAnnotations, String paramString, JavaType paramJavaType1, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer, JavaType paramJavaType2, Method paramMethod, Field paramField, boolean paramBoolean, Object paramObject)
  {
    this(paramAnnotatedMember, paramAnnotations, new SerializedString(paramString), paramJavaType1, paramJsonSerializer, paramTypeSerializer, paramJavaType2, paramMethod, paramField, paramBoolean, paramObject);
  }

  public BeanPropertyWriter(AnnotatedMember paramAnnotatedMember, Annotations paramAnnotations, SerializedString paramSerializedString, JavaType paramJavaType1, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer, JavaType paramJavaType2, Method paramMethod, Field paramField, boolean paramBoolean, Object paramObject)
  {
    this._member = paramAnnotatedMember;
    this._contextAnnotations = paramAnnotations;
    this._name = paramSerializedString;
    this._declaredType = paramJavaType1;
    this._serializer = paramJsonSerializer;
    if (paramJsonSerializer == null);
    for (PropertySerializerMap localPropertySerializerMap = PropertySerializerMap.emptyMap(); ; localPropertySerializerMap = null)
    {
      this._dynamicSerializers = localPropertySerializerMap;
      this._typeSerializer = paramTypeSerializer;
      this._cfgSerializationType = paramJavaType2;
      this._accessorMethod = paramMethod;
      this._field = paramField;
      this._suppressNulls = paramBoolean;
      this._suppressableValue = paramObject;
      return;
    }
  }

  protected BeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter)
  {
    this(paramBeanPropertyWriter, paramBeanPropertyWriter._serializer);
  }

  protected BeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter, JsonSerializer<Object> paramJsonSerializer)
  {
    this._serializer = paramJsonSerializer;
    this._member = paramBeanPropertyWriter._member;
    this._contextAnnotations = paramBeanPropertyWriter._contextAnnotations;
    this._declaredType = paramBeanPropertyWriter._declaredType;
    this._accessorMethod = paramBeanPropertyWriter._accessorMethod;
    this._field = paramBeanPropertyWriter._field;
    if (paramBeanPropertyWriter._internalSettings != null)
      this._internalSettings = new HashMap(paramBeanPropertyWriter._internalSettings);
    this._name = paramBeanPropertyWriter._name;
    this._cfgSerializationType = paramBeanPropertyWriter._cfgSerializationType;
    this._dynamicSerializers = paramBeanPropertyWriter._dynamicSerializers;
    this._suppressNulls = paramBeanPropertyWriter._suppressNulls;
    this._suppressableValue = paramBeanPropertyWriter._suppressableValue;
    this._includeInViews = paramBeanPropertyWriter._includeInViews;
    this._typeSerializer = paramBeanPropertyWriter._typeSerializer;
    this._nonTrivialBaseType = paramBeanPropertyWriter._nonTrivialBaseType;
  }

  protected JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    if (this._nonTrivialBaseType != null);
    for (PropertySerializerMap.SerializerAndMapResult localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramSerializerProvider.constructSpecializedType(this._nonTrivialBaseType, paramClass), paramSerializerProvider, this); ; localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramClass, paramSerializerProvider, this))
    {
      if (paramPropertySerializerMap != localSerializerAndMapResult.map)
        this._dynamicSerializers = localSerializerAndMapResult.map;
      return localSerializerAndMapResult.serializer;
    }
  }

  protected void _reportSelfReference(Object paramObject)
  {
    throw new JsonMappingException("Direct self-reference leading to cycle");
  }

  public final Object get(Object paramObject)
  {
    if (this._accessorMethod != null)
      return this._accessorMethod.invoke(paramObject, new Object[0]);
    return this._field.get(paramObject);
  }

  public Type getGenericPropertyType()
  {
    if (this._accessorMethod != null)
      return this._accessorMethod.getGenericReturnType();
    return this._field.getGenericType();
  }

  public AnnotatedMember getMember()
  {
    return this._member;
  }

  public String getName()
  {
    return this._name.getValue();
  }

  public JavaType getSerializationType()
  {
    return this._cfgSerializationType;
  }

  public JavaType getType()
  {
    return this._declaredType;
  }

  public Class<?>[] getViews()
  {
    return this._includeInViews;
  }

  public boolean hasSerializer()
  {
    return this._serializer != null;
  }

  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject = get(paramObject);
    if (localObject == null)
      if (!this._suppressNulls)
      {
        paramJsonGenerator.writeFieldName(this._name);
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      }
    do
    {
      return;
      if (localObject == paramObject)
        _reportSelfReference(paramObject);
    }
    while ((this._suppressableValue != null) && (this._suppressableValue.equals(localObject)));
    JsonSerializer localJsonSerializer = this._serializer;
    if (localJsonSerializer == null)
    {
      Class localClass = localObject.getClass();
      PropertySerializerMap localPropertySerializerMap = this._dynamicSerializers;
      localJsonSerializer = localPropertySerializerMap.serializerFor(localClass);
      if (localJsonSerializer == null)
        localJsonSerializer = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
    }
    paramJsonGenerator.writeFieldName(this._name);
    if (this._typeSerializer == null)
    {
      localJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    localJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, this._typeSerializer);
  }

  public void setNonTrivialBaseType(JavaType paramJavaType)
  {
    this._nonTrivialBaseType = paramJavaType;
  }

  public void setViews(Class<?>[] paramArrayOfClass)
  {
    this._includeInViews = paramArrayOfClass;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(40);
    localStringBuilder.append("property '").append(getName()).append("' (");
    if (this._accessorMethod != null)
    {
      localStringBuilder.append("via method ").append(this._accessorMethod.getDeclaringClass().getName()).append("#").append(this._accessorMethod.getName());
      if (this._serializer != null)
        break label135;
      localStringBuilder.append(", no static serializer");
    }
    while (true)
    {
      localStringBuilder.append(')');
      return localStringBuilder.toString();
      localStringBuilder.append("field \"").append(this._field.getDeclaringClass().getName()).append("#").append(this._field.getName());
      break;
      label135: localStringBuilder.append(", static serializer of type " + this._serializer.getClass().getName());
    }
  }

  public BeanPropertyWriter unwrappingWriter()
  {
    return new UnwrappingBeanPropertyWriter(this);
  }

  public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if (getClass() != BeanPropertyWriter.class)
      throw new IllegalStateException("BeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
    return new BeanPropertyWriter(this, paramJsonSerializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanPropertyWriter
 * JD-Core Version:    0.6.2
 */