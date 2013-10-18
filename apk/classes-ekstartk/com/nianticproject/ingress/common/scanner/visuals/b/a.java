package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.w.y;

abstract class a extends c
{
  public a()
  {
    f();
  }

  public abstract float a();

  public final void a(Vector3 paramVector3)
  {
    paramVector3.x = (d() * (float)(Math.random() - 0.5D));
    paramVector3.y = (e() * (float)Math.random());
    paramVector3.z = (d() * (float)(Math.random() - 0.5D));
  }

  public final void a(d paramd)
  {
    paramd.a = y.a(0.2F, 2.0F);
    paramd.b = y.a(a(), b());
    paramd.c = ((float)(c() * Math.random() / paramd.a));
  }

  public abstract float b();

  public abstract float c();

  public abstract float d();

  public abstract float e();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.a
 * JD-Core Version:    0.6.2
 */