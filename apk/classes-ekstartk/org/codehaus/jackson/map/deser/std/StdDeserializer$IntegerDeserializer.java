package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$IntegerDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Integer>
{
  public StdDeserializer$IntegerDeserializer(Class<Integer> paramClass, Integer paramInteger)
  {
    super(paramClass, paramInteger);
  }

  public final Integer deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseInteger(paramJsonParser, paramDeserializationContext);
  }

  public final Integer deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return _parseInteger(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.IntegerDeserializer
 * JD-Core Version:    0.6.2
 */