package com.nianticproject.ingress.common.factionchoice;

import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.b.s;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.ai;
import java.util.Queue;

public final class aj extends s
{
  private az a;
  private Queue<bn> b;
  private bn c;

  public aj(ad paramad, az paramaz, String paramString1, String paramString2, ai paramai, String paramString3)
  {
    super(paramad, new ac[0]);
    this.a = paramaz;
    a(new aq(this, paramString1, paramString2, paramai, paramString3));
  }

  private void a(int paramInt)
  {
    i.a().a(new ak(this, "playNextClip"), paramInt);
  }

  private void d()
  {
    this.b.clear();
    if (this.c != null)
    {
      this.c.n();
      this.c = null;
    }
  }

  public final void a()
  {
    super.a();
    a(1500);
  }

  public final void b()
  {
    d();
    super.b();
  }

  public final void c()
  {
    super.c();
    bn[] arrayOfbn = new bn[3];
    arrayOfbn[0] = bs.y.a();
    arrayOfbn[1] = bs.v.a();
    arrayOfbn[2] = bs.u.a();
    this.b = eq.b(arrayOfbn);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.aj
 * JD-Core Version:    0.6.2
 */