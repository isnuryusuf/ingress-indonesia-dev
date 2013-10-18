package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.q.b;
import com.nianticproject.ingress.common.q.c;

final class fs
  implements eo
{
  private final Vector2 b = new Vector2();
  private final u c;
  private final int d;
  private final int e;
  private final float f;
  private final float g;

  fs(fp paramfp, u paramu)
  {
    this.c = ((u)an.a(paramu, "latLng"));
    this.d = b.d(paramu.e());
    this.e = b.e(paramu.b());
    int i = 0x1FFF & this.d;
    int j = 0x1FFF & this.e;
    double d1 = 1.0D / b.a(paramu.b());
    this.f = (-(float)(d1 * i));
    this.g = (-(float)(d1 * j));
  }

  public final long a()
  {
    return c.a(this.d, this.e);
  }

  public final Matrix4 a(Matrix4 paramMatrix4)
  {
    return paramMatrix4.setToTranslation(this.f, 0.0F, this.g);
  }

  public final Vector2 b()
  {
    this.a.a(this.d, this.e, this.b);
    return this.b;
  }

  public final u c()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fs
 * JD-Core Version:    0.6.2
 */