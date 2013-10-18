package org.codehaus.jackson.map.deser.std;

import java.net.URI;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$URIDeserializer extends FromStringDeserializer<URI>
{
  public FromStringDeserializer$URIDeserializer()
  {
    super(URI.class);
  }

  protected URI _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    return URI.create(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.URIDeserializer
 * JD-Core Version:    0.6.2
 */