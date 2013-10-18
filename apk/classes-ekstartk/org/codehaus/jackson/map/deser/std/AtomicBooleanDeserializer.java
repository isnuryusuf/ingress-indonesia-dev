package org.codehaus.jackson.map.deser.std;

import java.util.concurrent.atomic.AtomicBoolean;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;

public class AtomicBooleanDeserializer extends StdScalarDeserializer<AtomicBoolean>
{
  public AtomicBooleanDeserializer()
  {
    super(AtomicBoolean.class);
  }

  public AtomicBoolean deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return new AtomicBoolean(_parseBooleanPrimitive(paramJsonParser, paramDeserializationContext));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.AtomicBooleanDeserializer
 * JD-Core Version:    0.6.2
 */