package com.nianticproject.ingress.common.inventory.ui;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.ui.widget.f;

final class z extends ClickListener
{
  z(v paramv, aj paramaj)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    if (v.b(this.b).e != this.a)
    {
      v.b(this.b).e = this.a;
      v.f(this.b);
    }
    v.e(this.b).setText(this.a.d);
    v.c(this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.z
 * JD-Core Version:    0.6.2
 */