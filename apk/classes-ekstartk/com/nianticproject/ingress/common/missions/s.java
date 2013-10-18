package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.ui.e.b;
import com.nianticproject.ingress.common.w.g;
import java.util.concurrent.TimeUnit;

final class s extends g
{
  s(a parama, String paramString)
  {
    super(paramString);
  }

  public final void a()
  {
    this.a.n.a(bs.ah);
    this.a.a_("Objectives complete");
    this.a.a(this.a.r());
    this.a.a(a.c(this.a), 3, TimeUnit.SECONDS);
    this.a.m.B().b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.s
 * JD-Core Version:    0.6.2
 */