package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.collision.Ray;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.aj;
import com.nianticproject.ingress.common.j.ak;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.common.q.c;

abstract class ep
  implements aj, o
{
  private final c a;
  int b;
  private final eo c;
  private final fp d;
  private final q e = new eq(this);
  private final fr f = new er(this);

  public ep(fp paramfp, c paramc)
  {
    this.a = ((c)an.a(paramc));
    this.d = paramfp;
    this.c = paramfp.a(paramc.e());
    paramfp.a(this.f);
    this.f.a();
  }

  public final ak a(Ray paramRay)
  {
    return this.e.a(paramRay);
  }

  public final ak a(f paramf, Matrix4 paramMatrix4, Vector2 paramVector2)
  {
    return this.e.a(paramf, paramMatrix4, paramVector2);
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    this.e.a(paramMatrix4, paramf, paramn);
  }

  protected abstract void a(fg paramfg);

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.e.a(paramFloat);
    return this.e.w_();
  }

  public final void b(fg paramfg)
  {
    this.e.b(paramfg);
  }

  public void dispose()
  {
    this.e.dispose();
    this.d.b(this.f);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ep
 * JD-Core Version:    0.6.2
 */