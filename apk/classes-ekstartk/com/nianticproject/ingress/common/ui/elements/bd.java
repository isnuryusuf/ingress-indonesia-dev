package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.math.Vector2;
import com.google.a.a.ba;
import com.google.a.c.dc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;

public final class bd
{
  public static bc a(Vector2 paramVector2, ed paramed)
  {
    return new bc("TARGET", new bj(paramed, paramVector2), true);
  }

  public static bc a(u paramu, ac paramac)
  {
    return new bc("NEW PORTAL", new bk(paramac, paramu), true);
  }

  public static bc a(com.nianticproject.ingress.common.model.k paramk, ba<f> paramba)
  {
    bl localbl = new bl((byte)0);
    f localf = com.nianticproject.ingress.common.gameentity.a.a(paramk, dc.a(af.b, af.m));
    if (localf != null)
      com.nianticproject.ingress.common.itemupgrade.a.b(localbl, localf, paramk);
    be localbe = new be(localf, paramba);
    boolean bool1 = false;
    if (localf != null)
    {
      boolean bool2 = localbl.a;
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return new bc("FIRE " + af.b.b(), localbe, bool1);
  }

  public static bc a(f paramf, com.nianticproject.ingress.common.model.k paramk, l paraml, Runnable paramRunnable)
  {
    bl localbl = new bl((byte)0);
    com.nianticproject.ingress.common.itemupgrade.a.a(localbl, paramf, paramk, paraml);
    return new bc("HACK", new bf(paramRunnable), localbl.a);
  }

  public static bc a(f paramf, com.nianticproject.ingress.common.scanner.k paramk)
  {
    return new bc("TARGET", new bi(paramk, paramf), true);
  }

  public static bc b(f paramf, com.nianticproject.ingress.common.model.k paramk, l paraml, Runnable paramRunnable)
  {
    bl localbl = new bl((byte)0);
    com.nianticproject.ingress.common.itemupgrade.a.a(localbl, paramf, paramk, paraml, false);
    bg localbg = new bg(paramRunnable);
    return new bc(localbl.b, localbg, localbl.a);
  }

  public static bc c(f paramf, com.nianticproject.ingress.common.model.k paramk, l paraml, Runnable paramRunnable)
  {
    bl localbl = new bl((byte)0);
    com.nianticproject.ingress.common.itemupgrade.a.b(localbl, paramf, paramk, paraml, false);
    bh localbh = new bh(paramRunnable);
    return new bc(localbl.b, localbh, localbl.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.bd
 * JD-Core Version:    0.6.2
 */