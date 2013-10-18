package com.google.a.f;

import com.google.a.a.an;
import com.google.a.e.aa;
import com.google.a.e.s;
import com.google.a.e.u;
import com.google.a.e.z;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class a
{
  private static final byte[] a = new byte[4096];

  private long a(OutputStream paramOutputStream)
  {
    an.a(paramOutputStream);
    f localf = f.a();
    try
    {
      long l = b.a((InputStream)localf.a(a()), paramOutputStream);
      return l;
    }
    catch (Throwable localThrowable)
    {
      throw localf.a(localThrowable);
    }
    finally
    {
      localf.close();
    }
  }

  public final u a(z paramz)
  {
    aa localaa = paramz.a();
    a(s.a(localaa));
    return localaa.a();
  }

  public abstract InputStream a();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.f.a
 * JD-Core Version:    0.6.2
 */