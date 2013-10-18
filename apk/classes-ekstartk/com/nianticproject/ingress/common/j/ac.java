package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.PerspectiveCamera;
import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;

public final class ac extends f
{
  private final PerspectiveCamera a = new PerspectiveCamera();
  private float b;

  public ac(Vector3 paramVector31, Vector3 paramVector32, Vector3 paramVector33)
  {
    this.a.viewportWidth = 1.0F;
    this.a.viewportHeight = 1.0F;
    a(paramVector31, paramVector32, paramVector33);
  }

  private void l()
  {
    this.a.update();
    this.b = g.a(this.a.fieldOfView, b());
  }

  public final float a()
  {
    return this.a.fieldOfView;
  }

  public final void a(float paramFloat)
  {
    this.a.fieldOfView = paramFloat;
    l();
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 > 0.0F) && (paramFloat2 > 0.0F) && (paramFloat2 > paramFloat1));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a.near = paramFloat1;
      this.a.far = paramFloat2;
      l();
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.a.viewportWidth = paramInt1;
    this.a.viewportHeight = paramInt2;
    l();
  }

  public final void a(Vector3 paramVector31, Vector3 paramVector32, Vector3 paramVector33)
  {
    this.a.position.set(paramVector31);
    this.a.up.set(paramVector33).nor();
    this.a.lookAt(paramVector32.x, paramVector32.y, paramVector32.z);
    l();
  }

  public final float b()
  {
    return this.a.viewportWidth / this.a.viewportHeight;
  }

  public final float c()
  {
    return this.a.near;
  }

  public final Matrix4 d()
  {
    return this.a.view;
  }

  public final Matrix4 e()
  {
    return this.a.combined;
  }

  public final Frustum f()
  {
    return this.a.frustum;
  }

  public final float g()
  {
    return this.b;
  }

  public final Vector3 h()
  {
    return this.a.direction;
  }

  public final Vector3 k()
  {
    return this.a.position;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ac
 * JD-Core Version:    0.6.2
 */