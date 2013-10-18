package com.nianticproject.ingress.g;

import com.google.h.a.a.e;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.shared.ag;
import java.util.logging.Level;

public final class a
  implements d
{
  private static final String a = NemesisApplication.a().getPackageName() + ".USER_INITIATED_FEEDBACK_REPORT";
  private static final String b = "logToServer." + ag.a;
  private final e c = new e(a, b);
  private long d;

  public final void a(Level paramLevel, String paramString, Throwable paramThrowable)
  {
    long l = System.currentTimeMillis();
    if (this.d < l)
      this.d = l;
    String str = ag.a + " " + paramLevel + " " + paramString;
    c localc = new c(this.c);
    com.google.h.a.a.c localc1 = new com.google.h.a.a.c();
    localc.a(localc1, str, paramThrowable);
    NemesisService.a(NemesisApplication.a(), localc1);
  }

  public final boolean a(Level paramLevel)
  {
    if (System.currentTimeMillis() - this.d < 3600000L)
      return false;
    return Level.SEVERE.equals(paramLevel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.g.a
 * JD-Core Version:    0.6.2
 */