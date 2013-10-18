package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Array;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.ui.hud.b;

final class fi
  implements o
{
  private fi(fg paramfg)
  {
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    Rectangle localRectangle = this.a.f().a(paramf, paramMatrix4, 1.0F);
    if (localRectangle != null)
      for (int i = 0; i < fg.a(this.a).size; i++)
        if (!((b)fg.a(this.a).get(i)).a(localRectangle))
        {
          fg.a(this.a).removeIndex(i);
          i--;
        }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    return fg.a(this.a).size > 0;
  }

  public final void dispose()
  {
    for (int i = 0; i < fg.a(this.a).size; i++)
      ((b)fg.a(this.a).get(i)).a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fi
 * JD-Core Version:    0.6.2
 */