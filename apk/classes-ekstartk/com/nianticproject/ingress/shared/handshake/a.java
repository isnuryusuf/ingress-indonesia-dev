package com.nianticproject.ingress.shared.handshake;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.aj;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;
import java.util.logging.Logger;

public final class a
{
  private static final Logger a = Logger.getLogger(a.class.getSimpleName());
  private static final Random b = new Random(System.currentTimeMillis());
  private final DeviceInfo c;
  private final b d;
  private final com.nianticproject.ingress.shared.a.a e;
  private byte[] f;

  public a(DeviceInfo paramDeviceInfo, com.nianticproject.ingress.shared.a.a parama, b paramb)
  {
    this.c = ((DeviceInfo)an.a(paramDeviceInfo));
    this.d = ((b)an.a(paramb));
    this.e = ((com.nianticproject.ingress.shared.a.a)an.a(parama));
  }

  private static byte[] a(String paramString)
  {
    int i = 0;
    byte[] arrayOfByte2;
    try
    {
      aj.a("DeviceInfoEncryptor.salt");
      try
      {
        byte[] arrayOfByte1 = paramString.getBytes("UTF-8");
        int j = arrayOfByte1.length / 252;
        int k = arrayOfByte1.length % 252;
        int m = j * 256;
        if (k > 0)
        {
          j++;
          m += k + 4;
        }
        arrayOfByte2 = new byte[m];
        byte[] arrayOfByte3 = new byte[4];
        while (i < j)
        {
          b.nextBytes(arrayOfByte3);
          System.arraycopy(arrayOfByte3, 0, arrayOfByte2, i * 256, 4);
          int n = m - 4;
          int i1 = Math.min(n, 252);
          System.arraycopy(arrayOfByte1, i * 252, arrayOfByte2, 4 + i * 256, i1);
          m = n - i1;
          i++;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        a.warning(localUnsupportedEncodingException.toString());
        throw new IOException(localUnsupportedEncodingException);
      }
    }
    finally
    {
      aj.b();
    }
    aj.b();
    return arrayOfByte2;
  }

  public final byte[] a()
  {
    try
    {
      aj.a("DeviceInfoEncryptor.encrypt");
      if (this.f == null)
      {
        byte[] arrayOfByte2 = a(this.d.a(this.c));
        this.f = com.nianticproject.ingress.shared.a.b(this.e.a(arrayOfByte2));
      }
      byte[] arrayOfByte1 = this.f;
      return arrayOfByte1;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.handshake.a
 * JD-Core Version:    0.6.2
 */