package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.w.ao;
import com.nianticproject.ingress.common.w.y;

final class n extends c
{
  private u a;

  n(u paramu)
  {
    this.a = paramu;
    f();
  }

  public final int a(int paramInt)
  {
    return paramInt;
  }

  public final void a(Vector3 paramVector3)
  {
    ao.a(paramVector3).mul(y.a(this.a.d, this.a.e));
  }

  public final void a(d paramd)
  {
    paramd.a = 1.0F;
    paramd.b = y.a(this.a.b, this.a.c);
    paramd.c = ((float)Math.random());
  }

  public final ShaderProgram g()
  {
    return ag.aQ;
  }

  public final int h()
  {
    return this.a.a;
  }

  public final boolean i()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.n
 * JD-Core Version:    0.6.2
 */