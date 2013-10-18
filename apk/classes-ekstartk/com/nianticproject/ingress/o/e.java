package com.nianticproject.ingress.o;

import com.nianticproject.ingress.o.a.a;
import com.nianticproject.ingress.shared.aj;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class e
{
  public static void a()
  {
    if ((a.g.b() != 1) || (aj.a() == null));
    try
    {
      aj.a(new FileOutputStream(new File("/sys/kernel/debug/tracing/trace_marker")));
      do
        return;
      while (aj.a() == null);
      try
      {
        aj.a().close();
        label48: aj.a(null);
        return;
      }
      catch (IOException localIOException)
      {
        break label48;
      }
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.e
 * JD-Core Version:    0.6.2
 */