package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;

public abstract class TypeDeserializer
{
  public abstract Object deserializeTypedFromAny(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);

  public abstract Object deserializeTypedFromArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);

  public abstract Object deserializeTypedFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);

  public abstract Object deserializeTypedFromScalar(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);

  public abstract String getPropertyName();

  public abstract JsonTypeInfo.As getTypeInclusion();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.TypeDeserializer
 * JD-Core Version:    0.6.2
 */