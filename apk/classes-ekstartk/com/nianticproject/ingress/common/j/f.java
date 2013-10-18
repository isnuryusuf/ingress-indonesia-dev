package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;

public abstract class f
{
  private final Vector3 a = new Vector3();
  private final Vector3 b = new Vector3();

  public abstract float a();

  public abstract void a(int paramInt1, int paramInt2);

  public abstract float b();

  public abstract float c();

  public abstract Matrix4 d();

  public abstract Matrix4 e();

  public abstract Frustum f();

  public abstract float g();

  public abstract Vector3 h();

  public final Vector3 i()
  {
    this.a.set(h()).crs(0.0F, 1.0F, 0.0F);
    if (this.a.len2() < 1.0E-04F)
      return this.a.set(1.0F, 0.0F, 0.0F);
    return this.a.nor();
  }

  public final Vector3 j()
  {
    return this.b.set(i()).crs(h());
  }

  public abstract Vector3 k();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.f
 * JD-Core Version:    0.6.2
 */