package com.nianticproject.ingress.common.l;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.ac;
import com.nianticproject.ingress.common.k.q;
import com.nianticproject.ingress.common.k.r;
import com.nianticproject.ingress.common.ui.widget.ak;
import com.nianticproject.ingress.common.w.z;

final class c extends ak
{
  private static final Vector3 a = new Vector3(0.0F, 0.0F, 5.0F);
  private static final Vector3 b = new Vector3(0.0F, 0.0F, 0.0F);
  private static final Vector3 c = new Vector3(0.0F, 1.0F, 0.0F);
  private final ac d = new ac(a, b, c);
  private final q e;
  private float f;
  private final Vector3 g = new Vector3();

  c()
  {
    super(100.0F, 100.0F, null);
    this.d.a(45.0F);
    this.d.a(Math.max(0.04F, 0.01F), 5.25F);
    this.e = new q();
    this.e.b();
  }

  protected final void a()
  {
    this.e.a(z.a, this.d, null);
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    this.e.a(paramFloat1, paramFloat2);
    this.e.a(true);
  }

  protected final void a(Rectangle paramRectangle)
  {
    this.d.a((int)paramRectangle.width, (int)paramRectangle.height);
  }

  final boolean a(float paramFloat)
  {
    this.e.b(1.0F);
    this.f = ((this.f + 20.0F * paramFloat) % 360.0F);
    ac localac = this.d;
    float f1 = this.f;
    Vector3 localVector31 = this.g;
    Vector3 localVector32 = b;
    Vector3 localVector33 = c;
    an.a(true);
    an.a(true);
    localac.a(r.a(0.0F, f1, 5.0F, localVector31), localVector32, localVector33);
    localac.a(Math.max(0.04F, 0.01F), 5.25F);
    this.e.a(paramFloat);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.l.c
 * JD-Core Version:    0.6.2
 */