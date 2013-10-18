package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.nianticproject.ingress.common.ui.l;
import com.nianticproject.ingress.gameentity.components.a;

final class ax extends Label
{
  private boolean b = false;
  private boolean c = false;
  private int d = 0;

  ax(PortalInfoDialog paramPortalInfoDialog, TextureRegion paramTextureRegion, int paramInt, Label.LabelStyle paramLabelStyle)
  {
    super("", paramLabelStyle);
    setX(paramTextureRegion.getRegionX());
    setY(paramInt - paramTextureRegion.getRegionY() - paramTextureRegion.getRegionHeight() / 2);
  }

  public final void a()
  {
    if (this.b)
    {
      this.b = false;
      this.c = false;
      PortalInfoDialog.a(this);
      a(0);
    }
  }

  public final void a(int paramInt)
  {
    if (this.d != paramInt)
    {
      this.d = paramInt;
      if (paramInt != 0)
      {
        setText(a.b(paramInt));
        setColor(l.a(PortalInfoDialog.b(this.a), paramInt));
      }
    }
    else
    {
      return;
    }
    setText("");
  }

  public final void a(boolean paramBoolean)
  {
    if ((!this.b) || (paramBoolean != this.c))
    {
      this.b = true;
      this.c = paramBoolean;
      PortalInfoDialog.a(this, paramBoolean);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ax
 * JD-Core Version:    0.6.2
 */