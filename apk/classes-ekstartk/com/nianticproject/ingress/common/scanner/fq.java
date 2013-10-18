package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.q.a;
import com.nianticproject.ingress.common.q.b;
import com.nianticproject.ingress.common.q.c;
import java.lang.ref.WeakReference;
import java.util.Set;

final class fq
  implements eo
{
  private final Vector2 b = new Vector2();
  private final u c;
  private final int d;
  private final int e;
  private boolean f;

  fq(fp paramfp, u paramu)
  {
    this.c = ((u)an.a(paramu, "latLng"));
    this.d = b.d(paramu.e());
    this.e = b.e(paramu.b());
    this.f = true;
    d();
    fp.a(paramfp).add(new WeakReference(this));
  }

  fq(fp paramfp, a parama)
  {
    this.c = ((a)an.a(parama, "coord")).c();
    this.d = parama.a();
    this.e = parama.b();
    this.f = true;
    d();
    fp.a(paramfp).add(new WeakReference(this));
  }

  private void d()
  {
    if (this.f)
    {
      this.f = false;
      this.a.a(this.d, this.e, this.b);
    }
  }

  public final long a()
  {
    return c.a(this.d, this.e);
  }

  public final Matrix4 a(Matrix4 paramMatrix4)
  {
    d();
    return paramMatrix4.setToTranslation(this.b.x, 0.0F, this.b.y);
  }

  public final Vector2 b()
  {
    d();
    return this.b;
  }

  public final u c()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fq
 * JD-Core Version:    0.6.2
 */