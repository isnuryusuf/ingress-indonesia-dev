package com.nianticproject.ingress.common.itemupgrade;

import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.shared.aj;

final class g extends Table
{
  g(c paramc)
  {
  }

  public final void act(float paramFloat)
  {
    try
    {
      aj.a("DeployResonatorScannerUi.contents.act");
      super.act(paramFloat);
      if (c.g(this.a))
      {
        c.h(this.a);
        this.a.c();
      }
      if (c.i(this.a))
      {
        c.j(this.a);
        c.k(this.a);
      }
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.g
 * JD-Core Version:    0.6.2
 */