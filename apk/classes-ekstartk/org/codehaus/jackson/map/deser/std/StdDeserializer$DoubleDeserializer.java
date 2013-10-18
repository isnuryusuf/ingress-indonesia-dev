package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$DoubleDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Double>
{
  public StdDeserializer$DoubleDeserializer(Class<Double> paramClass, Double paramDouble)
  {
    super(paramClass, paramDouble);
  }

  public final Double deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseDouble(paramJsonParser, paramDeserializationContext);
  }

  public final Double deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return _parseDouble(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.DoubleDeserializer
 * JD-Core Version:    0.6.2
 */