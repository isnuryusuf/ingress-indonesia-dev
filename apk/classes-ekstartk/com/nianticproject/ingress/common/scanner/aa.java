package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.common.ui.d.e;
import com.nianticproject.ingress.common.ui.e.b;

final class aa extends e
{
  private aa(k paramk)
  {
  }

  public final boolean tap(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 1)
    {
      Vector2 localVector2 = Vector2.Zero.cpy();
      ej localej = this.a.a(paramFloat1, paramFloat2, localVector2);
      if (localej != null)
      {
        localej.e();
        if ((localej instanceof fk))
          com.nianticproject.ingress.common.ag.a().b(paramFloat1, paramFloat2);
      }
      while (true)
      {
        return k.l(this.a).a(localej);
        q localq = new q();
        localq.b(new a(ag.v, Color.RED));
        localq.a(new Matrix4().setToTranslation(localVector2.x, 0.0F, localVector2.y));
        k.k(this.a).b(localq);
      }
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.aa
 * JD-Core Version:    0.6.2
 */