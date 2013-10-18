package com.google.a.e;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

final class an extends f
  implements Serializable
{
  private final MessageDigest a;
  private final int b;
  private final boolean c;
  private final String d;

  an(String paramString1, String paramString2)
  {
    this.a = a(paramString1);
    this.b = this.a.getDigestLength();
    this.d = ((String)com.google.a.a.an.a(paramString2));
    this.c = b();
  }

  private static MessageDigest a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      return localMessageDigest;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new AssertionError(localNoSuchAlgorithmException);
    }
  }

  private boolean b()
  {
    try
    {
      this.a.clone();
      return true;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    return false;
  }

  public final aa a()
  {
    if (this.c)
      try
      {
        ao localao = new ao((MessageDigest)this.a.clone(), this.b, (byte)0);
        return localao;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException)
      {
      }
    return new ao(a(this.a.getAlgorithm()), this.b, (byte)0);
  }

  public final String toString()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.an
 * JD-Core Version:    0.6.2
 */