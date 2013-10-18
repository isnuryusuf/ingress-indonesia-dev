package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;

public final class as extends f
{
  private final ao a;
  private boolean b;

  public as(ao paramao)
  {
    this.a = ((ao)an.a(paramao));
  }

  public final float a()
  {
    return this.a.a();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    throw new IllegalStateException();
  }

  public final void a(ar paramar, float paramFloat)
  {
    if (this.b)
      throw new IllegalStateException("Camera has been revoked");
    this.a.a(paramar, paramFloat);
  }

  public final float b()
  {
    return this.a.b();
  }

  public final float c()
  {
    return this.a.c();
  }

  public final Matrix4 d()
  {
    return this.a.d();
  }

  public final Matrix4 e()
  {
    return this.a.e();
  }

  public final Frustum f()
  {
    return this.a.f();
  }

  public final float g()
  {
    return this.a.g();
  }

  public final Vector3 h()
  {
    return this.a.h();
  }

  public final Vector3 k()
  {
    return this.a.k();
  }

  public final void l()
  {
    this.b = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.as
 * JD-Core Version:    0.6.2
 */