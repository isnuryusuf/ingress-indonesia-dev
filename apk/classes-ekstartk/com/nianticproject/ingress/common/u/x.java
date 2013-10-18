package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.common.o.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.handshake.DeviceInfo;
import com.nianticproject.ingress.shared.handshake.b;
import java.io.IOException;
import java.io.StringWriter;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;

final class x
  implements b
{
  public final String a(DeviceInfo paramDeviceInfo)
  {
    try
    {
      aj.a("HandshakeRpcRequest.DeviceInfoJsonConverter.toJson");
      if (paramDeviceInfo == null)
        return "";
      StringWriter localStringWriter = new StringWriter();
      try
      {
        JsonGenerator localJsonGenerator = c.b.createJsonGenerator(localStringWriter);
        localJsonGenerator.writeObject(paramDeviceInfo);
        localJsonGenerator.flush();
        localJsonGenerator.close();
        String str = localStringWriter.toString();
        return str;
      }
      catch (IOException localIOException)
      {
        while (true)
          w.a().b(localIOException, "Exception while flattening DeviceInfo");
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.x
 * JD-Core Version:    0.6.2
 */