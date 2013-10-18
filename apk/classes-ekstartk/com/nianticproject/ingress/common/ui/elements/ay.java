package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.t.c;
import com.nianticproject.ingress.common.ui.ac;

public final class ay
  implements ac
{
  private Label a;
  private float b;

  public final void a(Skin paramSkin, Stage paramStage)
  {
    Label.LabelStyle localLabelStyle = new Label.LabelStyle((Label.LabelStyle)paramSkin.get("tiny", Label.LabelStyle.class));
    localLabelStyle.fontColor.set(1.0F, 1.0F, 1.0F, 1.0F);
    this.a = new Label("", localLabelStyle);
    this.a.setX(5.0F);
    this.a.setY(0.7F * paramStage.getHeight());
    this.a.setWrap(false);
    paramStage.addActor(this.a);
    c.a(true);
  }

  public final boolean a(float paramFloat)
  {
    this.b = (paramFloat + this.b);
    if (this.b > 0.25F)
    {
      this.a.setText(c.d());
      this.b = 0.0F;
    }
    return true;
  }

  public final void dispose()
  {
    c.a(false);
    this.a.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ay
 * JD-Core Version:    0.6.2
 */