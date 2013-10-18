package com.google.a.e;

import com.google.a.a.an;
import java.io.Serializable;

final class w extends u
  implements Serializable
{
  final byte[] a;

  w(byte[] paramArrayOfByte)
  {
    this.a = ((byte[])an.a(paramArrayOfByte));
  }

  public final int a()
  {
    if (this.a.length >= 4);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.a.length);
      an.b(bool, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", arrayOfObject);
      return 0xFF & this.a[0] | (0xFF & this.a[1]) << 8 | (0xFF & this.a[2]) << 16 | (0xFF & this.a[3]) << 24;
    }
  }

  public final byte[] b()
  {
    return (byte[])this.a.clone();
  }

  public final int hashCode()
  {
    int i;
    if (this.a.length >= 4)
      i = a();
    while (true)
    {
      return i;
      i = 0xFF & this.a[0];
      for (int j = 1; j < this.a.length; j++)
        i |= (0xFF & this.a[j]) << j * 8;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.w
 * JD-Core Version:    0.6.2
 */