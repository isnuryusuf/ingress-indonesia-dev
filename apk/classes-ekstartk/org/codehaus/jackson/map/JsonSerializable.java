package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonGenerator;

@Deprecated
public abstract interface JsonSerializable
{
  public abstract void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.JsonSerializable
 * JD-Core Version:    0.6.2
 */