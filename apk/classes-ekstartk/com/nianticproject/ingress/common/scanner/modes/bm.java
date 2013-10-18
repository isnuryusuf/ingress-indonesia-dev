package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.nianticproject.ingress.common.ui.a.a;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

final class bm
  implements ac
{
  private Table a;

  public final void a(Skin paramSkin, Stage paramStage)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class);
    ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
    ScrollLabel localScrollLabel = new ScrollLabel("Obtaining Fix on Portal...", localLabelStyle, (byte)0);
    localScrollLabel.addAction(a.a(localScrollLabel, 2.0F));
    localProgressIndicator.a(true);
    this.a = new Table();
    this.a.setBackground(new NinePatchDrawable(new NinePatch(paramSkin.getPatch("item-button-outline"), new Color(1.0F, 1.0F, 1.0F, 0.5F))));
    this.a.add(localProgressIndicator).n().a(Integer.valueOf(17)).g(10.0F);
    this.a.add(localScrollLabel).n().a(Integer.valueOf(9));
    this.a.setWidth(1.05F * this.a.getPrefWidth());
    this.a.setHeight(this.a.getPrefHeight());
    this.a.setX((paramStage.getWidth() - this.a.getWidth()) / 2.0F);
    this.a.setY((paramStage.getHeight() - this.a.getHeight()) / 2.0F);
    this.a.getColor().a = 0.0F;
    this.a.addAction(Actions.fadeIn(0.5F));
    paramStage.addActor(this.a);
  }

  public final boolean a(float paramFloat)
  {
    return this.a != null;
  }

  public final void dispose()
  {
    if (this.a != null)
    {
      this.a.addAction(Actions.sequence(Actions.fadeOut(0.5F), Actions.removeActor()));
      this.a = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bm
 * JD-Core Version:    0.6.2
 */