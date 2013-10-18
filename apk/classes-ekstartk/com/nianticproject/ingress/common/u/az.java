package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.handshake.DeviceInfo;
import com.nianticproject.ingress.shared.handshake.ServerHandshake;

public class az
  implements u
{
  private static final aa a = new aa(az.class);
  private final b b;
  private final String c;
  private final String d;
  private final DeviceInfo e;
  private final com.nianticproject.ingress.shared.a.b f;

  public az(b paramb, String paramString1, String paramString2, DeviceInfo paramDeviceInfo, com.nianticproject.ingress.shared.a.b paramb1)
  {
    this.b = paramb;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramDeviceInfo;
    this.f = paramb1;
  }

  public final ServerHandshake a(String paramString, boolean paramBoolean)
  {
    long l = System.currentTimeMillis();
    try
    {
      aj.a("HandshakePerformer.performHandshake");
      ServerHandshake localServerHandshake = (ServerHandshake)new z(this.b, this.c).b(y.a("2013-10-07T21:02:13Z a7cb9f5402e7 opt", this.d, paramString, paramBoolean, this.e, this.f));
      aa localaa2;
      Object[] arrayOfObject2;
      return localServerHandshake;
    }
    finally
    {
      aj.b();
      aa localaa1 = a;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(System.currentTimeMillis() - l);
      localaa1.a("performHandshake: %dms", arrayOfObject1);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.az
 * JD-Core Version:    0.6.2
 */