package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.PerspectiveCamera;
import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.nianticproject.ingress.common.w.y;

public final class ao extends f
{
  private static final Vector3 a = new Vector3(0.0F, 0.0F, 0.0F);
  private static final Vector3 b = new Vector3(0.0F, 1948.0F, 1.948F);
  private static final Vector3 c = Vector3.Y;
  private final PerspectiveCamera d = new PerspectiveCamera();
  private final ap e = new ap();
  private float f;
  private ar g;
  private ap h = new ap();
  private float i;
  private float j;

  public ao()
  {
    a(0.0F);
  }

  public final float a()
  {
    return this.d.fieldOfView;
  }

  public final void a(float paramFloat)
  {
    ar localar = this.g;
    if (localar == null)
      return;
    ap localap = localar.a();
    if (this.i < this.j)
    {
      float f2 = y.a(y.b(this.i / this.j));
      this.e.a(this.h, 1.0F);
      this.e.a(localap, f2);
      this.i = (paramFloat + this.i);
      if (this.i > this.j)
        this.h.a(this.e, 1.0F);
    }
    while (true)
    {
      this.d.fieldOfView = this.e.a;
      this.d.near = this.e.b;
      this.d.far = this.e.c;
      this.d.position.set(this.e.e);
      this.d.up.set(this.e.f);
      this.d.lookAt(this.e.d.x, this.e.d.y, this.e.d.z);
      this.d.update();
      float f1 = this.d.viewportWidth / this.d.viewportHeight;
      this.f = g.a(this.e.a, f1);
      return;
      this.e.a(localap, 1.0F);
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.d.viewportWidth = paramInt1;
    this.d.viewportHeight = paramInt2;
  }

  public final void a(ar paramar, float paramFloat)
  {
    an.a(paramar);
    this.h.a(this.e, 1.0F);
    if (this.g == null);
    for (float f1 = paramFloat / 2.0F; ; f1 = 0.0F)
    {
      this.i = f1;
      this.g = paramar;
      this.j = paramFloat;
      return;
    }
  }

  public final float b()
  {
    return this.d.viewportWidth / this.d.viewportHeight;
  }

  public final float c()
  {
    return this.d.near;
  }

  public final Matrix4 d()
  {
    return this.d.view;
  }

  public final Matrix4 e()
  {
    return this.d.combined;
  }

  public final Frustum f()
  {
    return this.d.frustum;
  }

  public final float g()
  {
    return this.f;
  }

  public final Vector3 h()
  {
    return this.d.direction;
  }

  public final Vector3 k()
  {
    return this.d.position;
  }

  public final void l()
  {
    a(new aq(this.e), 0.0F);
  }

  public final boolean m()
  {
    return this.i < this.j;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ao
 * JD-Core Version:    0.6.2
 */