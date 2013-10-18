package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public abstract interface BeanPropertyFilter
{
  public abstract void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, BeanPropertyWriter paramBeanPropertyWriter);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanPropertyFilter
 * JD-Core Version:    0.6.2
 */