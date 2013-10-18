package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.google.a.d.u;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.scanner.k;

final class bw
  implements eo
{
  private final Vector2 b = new Vector2();

  bw(bt parambt)
  {
  }

  public final long a()
  {
    throw new UnsupportedOperationException("Player model should not be culled");
  }

  public final Matrix4 a(Matrix4 paramMatrix4)
  {
    Vector2 localVector2 = b();
    return paramMatrix4.setToTranslation(localVector2.x, 0.0F, localVector2.y);
  }

  public final Vector2 b()
  {
    u localu = c();
    if (localu != null)
    {
      bt.a(this.a).a(localu, this.b);
      return this.b;
    }
    return Vector2.Zero;
  }

  public final u c()
  {
    return bt.b(this.a).D();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bw
 * JD-Core Version:    0.6.2
 */