package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Table;

public final class w extends Table
{
  private final float a;
  private final Label b;
  private final Label c;

  public w(String paramString, Label.LabelStyle paramLabelStyle)
  {
    this(paramString, paramLabelStyle, 0.75F);
  }

  public w(String paramString, Label.LabelStyle paramLabelStyle, float paramFloat)
  {
    this.a = paramFloat;
    this.b = new Label(paramString, paramLabelStyle);
    this.c = new Label(paramString, paramLabelStyle);
    this.c.getColor().a = 0.0F;
    Actor[] arrayOfActor = new Actor[2];
    arrayOfActor[0] = this.c;
    arrayOfActor[1] = this.b;
    stack(arrayOfActor);
  }

  public final void a()
  {
    this.b.clearActions();
    this.b.addAction(Actions.fadeOut(this.a));
  }

  public final void a(int paramInt)
  {
    this.c.setAlignment(paramInt);
    this.b.setAlignment(paramInt);
  }

  public final void a(String paramString)
  {
    float f = this.a;
    String str = this.b.getText().toString();
    if (!paramString.equals(str))
    {
      this.c.setText(str);
      this.c.setColor(this.b.getColor());
      this.b.setText(paramString);
      this.b.getColor().a = 0.0F;
      this.b.clearActions();
      this.b.addAction(Actions.delay(0.0F, Actions.fadeIn(f)));
      this.c.clearActions();
      this.c.addAction(Actions.delay(0.0F, Actions.fadeOut(f)));
    }
    while (this.b.getColor().a >= 1.0F)
      return;
    this.b.clearActions();
    this.b.addAction(Actions.fadeIn(this.a));
  }

  public final void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.b.setColor(paramFloat1, paramFloat2, paramFloat3, this.b.getColor().a);
    this.c.setColor(paramFloat1, paramFloat2, paramFloat3, this.c.getColor().a);
  }

  public final void setColor(Color paramColor)
  {
    setColor(paramColor.r, paramColor.g, paramColor.b, paramColor.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.w
 * JD-Core Version:    0.6.2
 */