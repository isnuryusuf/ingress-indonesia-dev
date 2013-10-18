package org.codehaus.jackson;

import org.codehaus.jackson.type.TypeReference;

public abstract class ObjectCodec
{
  public abstract JsonNode readTree(JsonParser paramJsonParser);

  public abstract <T> T readValue(JsonParser paramJsonParser, Class<T> paramClass);

  public abstract <T> T readValue(JsonParser paramJsonParser, TypeReference<?> paramTypeReference);

  public abstract void writeValue(JsonGenerator paramJsonGenerator, Object paramObject);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.ObjectCodec
 * JD-Core Version:    0.6.2
 */