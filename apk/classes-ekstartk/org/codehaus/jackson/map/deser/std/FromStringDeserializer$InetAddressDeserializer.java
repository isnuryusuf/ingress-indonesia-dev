package org.codehaus.jackson.map.deser.std;

import java.net.InetAddress;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$InetAddressDeserializer extends FromStringDeserializer<InetAddress>
{
  public FromStringDeserializer$InetAddressDeserializer()
  {
    super(InetAddress.class);
  }

  protected InetAddress _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    return InetAddress.getByName(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.InetAddressDeserializer
 * JD-Core Version:    0.6.2
 */