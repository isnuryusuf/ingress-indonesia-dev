package com.google.a.e;

import java.security.MessageDigest;

public abstract class u
{
  private static final char[] a = "0123456789abcdef".toCharArray();

  public abstract int a();

  public abstract byte[] b();

  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof u))
    {
      u localu = (u)paramObject;
      return MessageDigest.isEqual(b(), localu.b());
    }
    return false;
  }

  public int hashCode()
  {
    return a();
  }

  public String toString()
  {
    byte[] arrayOfByte = b();
    StringBuilder localStringBuilder = new StringBuilder(2 * arrayOfByte.length);
    int i = arrayOfByte.length;
    for (int j = 0; j < i; j++)
    {
      int k = arrayOfByte[j];
      localStringBuilder.append(a[(0xF & k >> 4)]).append(a[(k & 0xF)]);
    }
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.u
 * JD-Core Version:    0.6.2
 */