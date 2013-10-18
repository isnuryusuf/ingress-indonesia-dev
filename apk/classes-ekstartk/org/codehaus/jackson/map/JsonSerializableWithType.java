package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonGenerator;

public abstract interface JsonSerializableWithType extends JsonSerializable
{
  public abstract void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.JsonSerializableWithType
 * JD-Core Version:    0.6.2
 */