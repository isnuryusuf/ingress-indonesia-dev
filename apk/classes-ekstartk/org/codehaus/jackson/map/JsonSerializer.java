package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonGenerator;

public abstract class JsonSerializer<T>
{
  public Class<T> handledType()
  {
    return null;
  }

  public boolean isUnwrappingSerializer()
  {
    return false;
  }

  public abstract void serialize(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);

  public void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    serialize(paramT, paramJsonGenerator, paramSerializerProvider);
  }

  public JsonSerializer<T> unwrappingSerializer()
  {
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.JsonSerializer
 * JD-Core Version:    0.6.2
 */