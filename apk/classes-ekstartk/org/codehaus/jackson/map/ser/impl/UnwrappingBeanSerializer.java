package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.BeanSerializerBase;

public class UnwrappingBeanSerializer extends BeanSerializerBase
{
  public UnwrappingBeanSerializer(BeanSerializerBase paramBeanSerializerBase)
  {
    super(paramBeanSerializerBase);
  }

  public boolean isUnwrappingSerializer()
  {
    return true;
  }

  public final void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this._propertyFilterId != null)
    {
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
  }

  public String toString()
  {
    return "UnwrappingBeanSerializer for " + handledType().getName();
  }

  public JsonSerializer<Object> unwrappingSerializer()
  {
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.UnwrappingBeanSerializer
 * JD-Core Version:    0.6.2
 */