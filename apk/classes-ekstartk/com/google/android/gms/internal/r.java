package com.google.android.gms.internal;

import android.util.Base64;

public final class r
{
  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    return Base64.encodeToString(paramArrayOfByte, 0);
  }

  public static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    return Base64.encodeToString(paramArrayOfByte, 10);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.r
 * JD-Core Version:    0.6.2
 */