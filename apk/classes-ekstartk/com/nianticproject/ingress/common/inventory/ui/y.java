package com.nianticproject.ingress.common.inventory.ui;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.ui.widget.f;

final class y extends ClickListener
{
  y(v paramv, ae paramae)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    a.a("InventoryFilter", ae.a(this.a));
    this.b.a(this.a.a);
    v.d(this.b).setText(this.a.a);
    f localf1 = v.e(this.b);
    boolean bool;
    f localf2;
    if (this.a.e != null)
    {
      bool = true;
      localf1.setVisible(bool);
      localf2 = v.e(this.b);
      if (this.a.e == null)
        break label124;
    }
    label124: for (String str = this.a.e.d; ; str = null)
    {
      localf2.setText(str);
      v.a(this.b);
      return;
      bool = false;
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.y
 * JD-Core Version:    0.6.2
 */