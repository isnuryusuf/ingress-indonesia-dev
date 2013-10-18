package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;

public final class ActionButton extends x
{
  private final c c = new a(this);
  private final Group d;
  private final Label e;
  private final ScrollLabel f;
  private final Label g;
  private final Label h;
  private final ActionButton.ActionButtonStyle i;

  private ActionButton(b paramb)
  {
    super(paramb.e, paramb.c, paramb.d.enabledButtonStyle, paramb.d.disabledButtonStyle);
    this.h = paramb.c;
    this.d = paramb.g;
    this.e = paramb.a;
    this.f = paramb.f;
    this.g = paramb.b;
    this.i = paramb.d;
  }

  public ActionButton(String paramString1, String paramString2, Skin paramSkin)
  {
    this(paramString1, paramString2, localActionButtonStyle.setScale(f1));
  }

  public ActionButton(String paramString1, String paramString2, ActionButton.ActionButtonStyle paramActionButtonStyle)
  {
    this(paramString1, paramString2, "", paramActionButtonStyle);
  }

  public ActionButton(String paramString1, String paramString2, String paramString3, ActionButton.ActionButtonStyle paramActionButtonStyle)
  {
    this(new b(paramString1, paramString2, paramString3, paramActionButtonStyle));
  }

  protected final void a(boolean paramBoolean)
  {
    Label.LabelStyle localLabelStyle1;
    Label localLabel2;
    if (a() != paramBoolean)
    {
      b(paramBoolean);
      Label localLabel1 = this.e;
      if (!paramBoolean)
        break label62;
      localLabelStyle1 = this.i.mainLabelStyle;
      localLabel1.setStyle(localLabelStyle1);
      localLabel2 = this.g;
      if (!paramBoolean)
        break label73;
    }
    label62: label73: for (Label.LabelStyle localLabelStyle2 = this.i.subLabelStyle; ; localLabelStyle2 = this.i.subDisabledLabelStyle)
    {
      localLabel2.setStyle(localLabelStyle2);
      return;
      localLabelStyle1 = this.i.mainDisabledLabelStyle;
      break;
    }
  }

  public final c b()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ActionButton
 * JD-Core Version:    0.6.2
 */