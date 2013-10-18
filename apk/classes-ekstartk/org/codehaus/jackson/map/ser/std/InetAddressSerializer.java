package org.codehaus.jackson.map.ser.std;

import java.net.InetAddress;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public class InetAddressSerializer extends ScalarSerializerBase<InetAddress>
{
  public static final InetAddressSerializer instance = new InetAddressSerializer();

  public InetAddressSerializer()
  {
    super(InetAddress.class);
  }

  public void serialize(InetAddress paramInetAddress, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    String str = paramInetAddress.toString().trim();
    int i = str.indexOf('/');
    if (i >= 0)
      if (i != 0)
        break label43;
    label43: for (str = str.substring(1); ; str = str.substring(0, i))
    {
      paramJsonGenerator.writeString(str);
      return;
    }
  }

  public void serializeWithType(InetAddress paramInetAddress, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramInetAddress, paramJsonGenerator, InetAddress.class);
    serialize(paramInetAddress, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(paramInetAddress, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.InetAddressSerializer
 * JD-Core Version:    0.6.2
 */