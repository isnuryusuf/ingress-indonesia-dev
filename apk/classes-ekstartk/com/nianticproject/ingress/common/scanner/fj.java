package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.collision.Ray;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.aj;
import com.nianticproject.ingress.common.j.ak;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.o;

public abstract class fj
  implements aj, o
{
  protected final Matrix4 a = new Matrix4();
  protected float b = 1.1F;
  protected float c = 1.1F;
  protected ai d;

  protected fj(fg paramfg, ai paramai)
  {
    this.d = ((ai)an.a(paramai));
  }

  public final ak a(Ray paramRay)
  {
    if (!d());
    Float localFloat;
    do
    {
      return null;
      localFloat = this.d.a(paramRay, this.b);
    }
    while (localFloat == null);
    return new ak(this.e, localFloat.floatValue());
  }

  public final ak a(f paramf, Matrix4 paramMatrix4, Vector2 paramVector2)
  {
    if (!d());
    Float localFloat;
    do
    {
      return null;
      localFloat = this.d.a(paramf, paramMatrix4, paramVector2, this.c);
    }
    while (localFloat == null);
    return new ak(this.e, localFloat.floatValue());
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void b()
  {
    this.b = 0.6F;
  }

  public final void c()
  {
    this.c = 0.35F;
  }

  protected abstract boolean d();

  public void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fj
 * JD-Core Version:    0.6.2
 */