package com.nianticproject.ingress.common.ui.hud;

import com.badlogic.gdx.math.Rectangle;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.j;
import com.nianticproject.ingress.gameentity.f;

public final class PortalInfoHud extends c
{
  private boolean a = true;
  private final i b;
  private final g c;

  public PortalInfoHud(h paramh, k paramk, f paramf, j paramj, Rectangle paramRectangle, String paramString)
  {
    this.b = new i(paramh);
    this.c = new g(paramk, paramf, paramj, paramRectangle, paramString, (byte)0);
    b[] arrayOfb = new b[2];
    arrayOfb[0] = this.b;
    arrayOfb[1] = this.c;
    a(arrayOfb);
  }

  public final void a()
  {
    super.a();
    this.a = false;
  }

  public final void a(boolean paramBoolean)
  {
    this.c.a(paramBoolean);
  }

  public final boolean a(float paramFloat)
  {
    return (super.a(paramFloat)) && (this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.PortalInfoHud
 * JD-Core Version:    0.6.2
 */