package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;

public abstract class Widget extends Actor
  implements Layout
{
  private boolean fillParent;
  private boolean layoutEnabled = true;
  private boolean needsLayout = true;

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    validate();
  }

  public float getMaxHeight()
  {
    return 0.0F;
  }

  public float getMaxWidth()
  {
    return 0.0F;
  }

  public float getMinHeight()
  {
    return getPrefHeight();
  }

  public float getMinWidth()
  {
    return getPrefWidth();
  }

  public float getPrefHeight()
  {
    return 0.0F;
  }

  public float getPrefWidth()
  {
    return 0.0F;
  }

  public void invalidate()
  {
    this.needsLayout = true;
  }

  public void invalidateHierarchy()
  {
    if (!this.layoutEnabled);
    Group localGroup;
    do
    {
      return;
      invalidate();
      localGroup = getParent();
    }
    while (!(localGroup instanceof Layout));
    ((Layout)localGroup).invalidateHierarchy();
  }

  public void layout()
  {
  }

  public boolean needsLayout()
  {
    return this.needsLayout;
  }

  public void pack()
  {
    float f1 = getPrefWidth();
    float f2 = getPrefHeight();
    if ((f1 != getWidth()) || (f2 != getHeight()))
    {
      setWidth(f1);
      setHeight(f2);
      invalidate();
      validate();
    }
  }

  public void setFillParent(boolean paramBoolean)
  {
    this.fillParent = paramBoolean;
  }

  public void setLayoutEnabled(boolean paramBoolean)
  {
    this.layoutEnabled = paramBoolean;
    if (paramBoolean)
      invalidateHierarchy();
  }

  public void validate()
  {
    if (!this.layoutEnabled)
      return;
    Group localGroup = getParent();
    Stage localStage;
    float f1;
    if ((this.fillParent) && (localGroup != null))
    {
      localStage = getStage();
      if ((localStage == null) || (localGroup != localStage.getRoot()))
        break label103;
      f1 = localStage.getWidth();
    }
    for (float f2 = localStage.getHeight(); ; f2 = localGroup.getHeight())
    {
      if ((getWidth() != f1) || (getHeight() != f2))
      {
        setWidth(f1);
        setHeight(f2);
        invalidate();
      }
      if (!this.needsLayout)
        break;
      this.needsLayout = false;
      layout();
      return;
      label103: f1 = localGroup.getWidth();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Widget
 * JD-Core Version:    0.6.2
 */