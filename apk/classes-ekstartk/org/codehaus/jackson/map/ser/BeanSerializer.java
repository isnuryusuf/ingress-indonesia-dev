package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.impl.UnwrappingBeanSerializer;
import org.codehaus.jackson.map.ser.std.BeanSerializerBase;
import org.codehaus.jackson.type.JavaType;

public class BeanSerializer extends BeanSerializerBase
{
  public BeanSerializer(Class<?> paramClass, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramClass, paramArrayOfBeanPropertyWriter1, paramArrayOfBeanPropertyWriter2, paramAnyGetterWriter, paramObject);
  }

  public BeanSerializer(JavaType paramJavaType, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramJavaType, paramArrayOfBeanPropertyWriter1, paramArrayOfBeanPropertyWriter2, paramAnyGetterWriter, paramObject);
  }

  public static BeanSerializer createDummy(Class<?> paramClass)
  {
    return new BeanSerializer(paramClass, NO_PROPS, null, null, null);
  }

  public final void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    if (this._propertyFilterId != null)
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
    while (true)
    {
      paramJsonGenerator.writeEndObject();
      return;
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
  }

  public String toString()
  {
    return "BeanSerializer for " + handledType().getName();
  }

  public JsonSerializer<Object> unwrappingSerializer()
  {
    return new UnwrappingBeanSerializer(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanSerializer
 * JD-Core Version:    0.6.2
 */