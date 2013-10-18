package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.w.ao;
import com.nianticproject.ingress.common.w.w;
import com.nianticproject.ingress.shared.aj;

public class cr extends q
  implements o
{
  private static final Color g = new Color(ea.u.r, ea.u.g, ea.u.b, 0.5F);
  private static final w h = new w();
  protected final ed e;
  protected final cs f;
  private final com.nianticproject.ingress.common.scanner.k i;
  private final fp j;

  public cr(h paramh, com.nianticproject.ingress.common.scanner.k paramk, ed paramed, fp paramfp, com.nianticproject.ingress.common.model.k paramk1)
  {
    this(paramk, paramed, paramfp, new cs(paramh, paramed, "CLEAR"));
    b(new bo(paramed, paramk1));
  }

  protected cr(com.nianticproject.ingress.common.scanner.k paramk, ed paramed, fp paramfp, cs paramcs)
  {
    this.i = ((com.nianticproject.ingress.common.scanner.k)an.a(paramk));
    this.j = ((fp)an.a(paramfp));
    this.e = ((ed)an.a(paramed));
    this.f = paramcs;
    this.i.a(paramcs);
  }

  public static void a(boolean paramBoolean)
  {
    try
    {
      aj.a("ScannerDestinationVisuals.createResources");
      boolean bool = h.a(paramBoolean);
      if (!bool)
        return;
      bo.b();
      h.c();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public static void c()
  {
    if (!h.d())
      return;
    bo.c();
    h.e();
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("ScannerDestinationVisuals.draw");
      if ((this.e.a()) && (this.f != null))
      {
        Vector2 localVector21 = Vector2.Zero.cpy();
        this.j.a(this.e.e(), localVector21);
        Vector3 localVector31 = new Vector3(localVector21.x, 0.0F, localVector21.y);
        float f1 = 1.5F * paramf.k().y;
        float f2 = localVector31.len();
        if (f2 > f1)
          localVector31.mul(f1 / f2);
        Vector3 localVector32 = ao.a(paramf, localVector31);
        Vector2 localVector22 = new Vector2(localVector32.x, localVector32.y);
        this.f.a(localVector22);
      }
      super.a(paramMatrix4, paramf, paramn);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean a()
  {
    return true;
  }

  public boolean a(float paramFloat)
  {
    return true;
  }

  public void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cr
 * JD-Core Version:    0.6.2
 */