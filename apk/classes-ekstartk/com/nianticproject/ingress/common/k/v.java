package com.nianticproject.ingress.common.k;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.h;

final class v extends a
{
  v(s params, String paramString, float paramFloat1, float paramFloat2)
  {
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    Label.LabelStyle localLabelStyle = new Label.LabelStyle((Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class));
    localLabelStyle.fontColor = Color.WHITE;
    Label localLabel = new Label(this.a, localLabelStyle);
    localLabel.setWrap(true);
    localLabel.setAlignment(10);
    localLabel.setWidth(0.95F * paramStage.getWidth());
    localLabel.setHeight(0.95F * paramStage.getHeight());
    h localh = new h(localLabel, new ScrollPane.ScrollPaneStyle(), 0.0F, this.b, this.c);
    localh.setScrollY(0.0F);
    Table localTable = new Table();
    localTable.setWidth(paramStage.getWidth() - 10.0F);
    localTable.setHeight(0.3F * paramStage.getHeight());
    localTable.setX(5.0F);
    localTable.setY(5.0F);
    localTable.add(localh).a(e.a(1.0F)).b(e.b(1.0F)).a(4.0F, 4.0F, 4.0F, 4.0F).l().i();
    return localTable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.v
 * JD-Core Version:    0.6.2
 */