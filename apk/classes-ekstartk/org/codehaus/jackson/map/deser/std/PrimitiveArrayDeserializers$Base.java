package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;

abstract class PrimitiveArrayDeserializers$Base<T> extends StdDeserializer<T>
{
  protected PrimitiveArrayDeserializers$Base(Class<T> paramClass)
  {
    super(paramClass);
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.Base
 * JD-Core Version:    0.6.2
 */