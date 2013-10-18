package org.codehaus.jackson.map.deser.std;

import java.util.regex.Pattern;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$PatternDeserializer extends FromStringDeserializer<Pattern>
{
  public FromStringDeserializer$PatternDeserializer()
  {
    super(Pattern.class);
  }

  protected Pattern _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    return Pattern.compile(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.PatternDeserializer
 * JD-Core Version:    0.6.2
 */