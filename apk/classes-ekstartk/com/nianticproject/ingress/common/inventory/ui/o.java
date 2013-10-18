package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.l;

public class o extends j
{
  private final p a;

  public o(p paramp, i parami)
  {
    super(paramp, parami);
    this.a = paramp;
  }

  public final void a(Table paramTable, Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class);
    paramTable.add(new Label(this.a.a(), localLabelStyle)).o().k();
    Label localLabel = new Label(this.a.e(), l.a(paramSkin, localLabelStyle, this.a.d()));
    localLabel.setAlignment(16);
    paramTable.add(localLabel).m();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.o
 * JD-Core Version:    0.6.2
 */