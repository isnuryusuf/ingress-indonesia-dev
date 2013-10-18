package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.a.b;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.handshake.DeviceInfo;

public final class y
{
  public static w a(String paramString1, String paramString2, String paramString3, boolean paramBoolean, DeviceInfo paramDeviceInfo, b paramb)
  {
    try
    {
      aj.a("HandshakeRpcRequests.getHandshake");
      w localw = new w(paramString1, paramString2, paramString3, paramBoolean, paramDeviceInfo, paramb);
      return localw;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.y
 * JD-Core Version:    0.6.2
 */