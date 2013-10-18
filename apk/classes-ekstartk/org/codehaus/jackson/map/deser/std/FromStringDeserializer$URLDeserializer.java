package org.codehaus.jackson.map.deser.std;

import java.net.URL;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$URLDeserializer extends FromStringDeserializer<URL>
{
  public FromStringDeserializer$URLDeserializer()
  {
    super(URL.class);
  }

  protected URL _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    return new URL(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.URLDeserializer
 * JD-Core Version:    0.6.2
 */