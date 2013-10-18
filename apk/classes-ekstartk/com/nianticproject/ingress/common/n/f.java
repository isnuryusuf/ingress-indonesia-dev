package com.nianticproject.ingress.common.n;

import java.io.Closeable;
import java.io.InputStream;

public final class f
  implements Closeable
{
  private final InputStream[] a;

  private f(InputStream[] paramArrayOfInputStream)
  {
    this.a = paramArrayOfInputStream;
  }

  public final InputStream a()
  {
    return this.a[0];
  }

  public final void close()
  {
    InputStream[] arrayOfInputStream = this.a;
    int i = arrayOfInputStream.length;
    for (int j = 0; j < i; j++)
      a.a(arrayOfInputStream[j]);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.n.f
 * JD-Core Version:    0.6.2
 */