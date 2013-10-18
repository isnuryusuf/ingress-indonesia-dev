package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.scanner.fr;

public abstract class bc
  implements Disposable
{
  private final float a = 333.0F;
  private final fp b;
  private final Vector2 c = new Vector2();
  private u d;
  private final fr e = new bd(this);

  public bc(fp paramfp)
  {
    this.b = ((fp)an.a(paramfp));
    paramfp.a(this.e);
  }

  protected abstract void a();

  public final void b()
  {
    this.d = this.b.a();
    this.c.set(0.0F, 0.0F);
  }

  public final Vector2 c()
  {
    return this.c;
  }

  public void dispose()
  {
    this.b.b(this.e);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bc
 * JD-Core Version:    0.6.2
 */