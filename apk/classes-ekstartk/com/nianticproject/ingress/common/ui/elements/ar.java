package com.nianticproject.ingress.common.ui.elements;

import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.PressedListener;

final class ar extends PressedListener
{
  ar(PortalInfoDialog paramPortalInfoDialog, Table paramTable)
  {
  }

  public final boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (!super.touchDown(paramInputEvent, paramFloat1, paramFloat2, paramInt1, paramInt2))
      return false;
    e locale1 = this.a.getPadLeft();
    e locale2 = this.a.getPadTop();
    e locale3 = this.a.getPadBottom();
    e locale4 = this.a.getPadRight();
    this.a.setBackground(PortalInfoDialog.b(this.b).getDrawable("gradient-bg-down"));
    this.a.pad(locale2, locale1, locale3, locale4);
    return true;
  }

  public final void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    super.touchUp(paramInputEvent, paramFloat1, paramFloat2, paramInt1, paramInt2);
    this.a.setBackground(PortalInfoDialog.b(this.b).getDrawable("gradient-bg"));
    if (super.isOver(this.a, paramFloat1, paramFloat2))
      PortalInfoDialog.f(this.b).a(PortalInfoDialog.e(this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ar
 * JD-Core Version:    0.6.2
 */