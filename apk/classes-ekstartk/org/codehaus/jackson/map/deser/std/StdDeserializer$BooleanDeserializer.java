package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$BooleanDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Boolean>
{
  public StdDeserializer$BooleanDeserializer(Class<Boolean> paramClass, Boolean paramBoolean)
  {
    super(paramClass, paramBoolean);
  }

  public final Boolean deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseBoolean(paramJsonParser, paramDeserializationContext);
  }

  public final Boolean deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return _parseBoolean(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.BooleanDeserializer
 * JD-Core Version:    0.6.2
 */