package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$FloatDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Float>
{
  public StdDeserializer$FloatDeserializer(Class<Float> paramClass, Float paramFloat)
  {
    super(paramClass, paramFloat);
  }

  public final Float deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseFloat(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.FloatDeserializer
 * JD-Core Version:    0.6.2
 */