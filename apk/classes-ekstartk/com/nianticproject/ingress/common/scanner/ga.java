package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.google.a.d.j;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.b.b;

abstract class ga extends fg
{
  private final gc i;
  private Float j = null;
  private gb k = null;
  private final long l;
  private final ge m;
  private Color n;

  protected ga(ge paramge, eo parameo, gd paramgd)
  {
    super(parameo);
    this.m = paramge;
    this.i = new gc(this, paramgd);
    a(this.i);
    this.l = b.a(c()).b(21).d();
  }

  public void a(gb paramgb)
  {
    this.k = paramgb;
  }

  public void a(f paramf)
  {
    super.a(paramf);
    if ((paramf != null) && (this.j == null))
    {
      this.j = Float.valueOf(360.0F * Float.valueOf(paramf.getGuid().hashCode() / 2.147484E+09F).floatValue());
      this.m.b(this);
      this.n = g.d(paramf);
    }
  }

  public boolean a(float paramFloat)
  {
    return super.a(paramFloat);
  }

  protected final Matrix4 b(Matrix4 paramMatrix4)
  {
    Matrix4 localMatrix4 = super.b(paramMatrix4);
    Vector3 localVector3 = Vector3.Y;
    if (this.j != null);
    for (float f = this.j.floatValue(); ; f = 0.0F)
      return localMatrix4.rotate(localVector3, f);
  }

  public void dispose()
  {
    if (this.k != null)
      this.k.a(this);
    super.dispose();
  }

  public long k()
  {
    return this.l;
  }

  protected final void o()
  {
    try
    {
      aj.a("ScannerResourceEntity.processGameEntity");
      super.o();
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ga
 * JD-Core Version:    0.6.2
 */