package com.nianticproject.ingress.common.n;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class e
{
  private final String b;
  private final long[] c;
  private boolean d;
  private c e;

  private e(a parama, String paramString)
  {
    this.b = paramString;
    this.c = new long[a.f(parama)];
  }

  private static IOException a(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }

  public final File a(int paramInt)
  {
    return new File(a.g(this.a), this.b + "." + paramInt);
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (long l : this.c)
      localStringBuilder.append(' ').append(l);
    return localStringBuilder.toString();
  }

  public final File b(int paramInt)
  {
    return new File(a.g(this.a), this.b + "." + paramInt + ".tmp");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.n.e
 * JD-Core Version:    0.6.2
 */