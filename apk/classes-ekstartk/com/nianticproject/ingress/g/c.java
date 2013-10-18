package com.nianticproject.ingress.g;

import android.os.Build;
import android.os.Build.VERSION;
import com.google.a.a.bv;
import com.google.h.a.a.a;
import com.google.h.a.a.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class c
{
  private e a;

  protected c(e parame)
  {
    this.a = parame;
  }

  public final void a(com.google.h.a.a.c paramc, String paramString, Throwable paramThrowable)
  {
    paramc.p.add("com.nianticproject.ingress");
    paramc.d = Build.DEVICE;
    paramc.e = Build.DISPLAY;
    paramc.f = Build.TYPE;
    paramc.g = Build.MODEL;
    paramc.m = Build.BOARD;
    paramc.n = Build.BRAND;
    paramc.l = Build.VERSION.CODENAME;
    paramc.k = Build.VERSION.INCREMENTAL;
    paramc.j = Build.VERSION.RELEASE;
    paramc.h = Build.PRODUCT;
    try
    {
      paramc.i = Integer.parseInt(Build.VERSION.SDK);
      paramc.C = Locale.getDefault().toString();
      paramc.x = System.currentTimeMillis();
      paramc.w = false;
      paramc.y = new ArrayList();
      paramc.z = paramc.y.size();
      paramc.B = this.a.a();
      paramc.E = this.a.b();
      if (paramString != null)
        paramc.a = paramString;
      if (paramThrowable != null)
      {
        a locala = a.a();
        locala.b(paramThrowable.getClass().getName());
        if ((paramThrowable.getStackTrace() != null) && (paramThrowable.getStackTrace().length > 0))
        {
          locala.c(paramThrowable.getStackTrace()[0].getFileName());
          locala.a(paramThrowable.getStackTrace()[0].getLineNumber());
          locala.d(paramThrowable.getStackTrace()[0].getClassName());
          locala.e(paramThrowable.getStackTrace()[0].getMethodName());
        }
        locala.a(bv.a(paramThrowable));
        locala.f(paramThrowable.getMessage());
        paramc.D = locala.b();
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        paramc.i = -1;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.g.c
 * JD-Core Version:    0.6.2
 */