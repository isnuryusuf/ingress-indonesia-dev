package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.math.Vector3;

public final class ap
{
  public float a = 90.0F;
  public float b;
  public float c;
  public Vector3 d = new Vector3(ao.n());
  public Vector3 e = new Vector3(ao.o());
  public Vector3 f = new Vector3(ao.p());

  public ap()
  {
  }

  public ap(ap paramap)
  {
    a(paramap, 1.0F);
  }

  public final void a(ap paramap, float paramFloat)
  {
    float f1 = this.a;
    this.a = (f1 + paramFloat * (paramap.a - f1));
    float f2 = this.b;
    this.b = (f2 + paramFloat * (paramap.b - f2));
    float f3 = this.c;
    this.c = (f3 + paramFloat * (paramap.c - f3));
    this.d.lerp(paramap.d, paramFloat);
    this.e.lerp(paramap.e, paramFloat);
    this.f.lerp(paramap.f, paramFloat).nor();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ap
 * JD-Core Version:    0.6.2
 */