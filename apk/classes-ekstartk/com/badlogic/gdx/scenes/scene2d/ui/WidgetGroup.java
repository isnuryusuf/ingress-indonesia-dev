package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.SnapshotArray;

public abstract class WidgetGroup extends Group
  implements Layout
{
  private boolean fillParent;
  private boolean layoutEnabled = true;
  private boolean needsLayout = true;

  protected WidgetGroup()
  {
  }

  protected WidgetGroup(String paramString)
  {
    super(paramString);
  }

  private void setLayoutEnabled(Group paramGroup, boolean paramBoolean)
  {
    SnapshotArray localSnapshotArray = getChildren();
    int i = localSnapshotArray.size;
    int j = 0;
    if (j < i)
    {
      Actor localActor = (Actor)localSnapshotArray.get(j);
      if ((localActor instanceof Layout))
        ((Layout)localActor).setLayoutEnabled(paramBoolean);
      while (true)
      {
        j++;
        break;
        if ((localActor instanceof Group))
          setLayoutEnabled((Group)localActor, paramBoolean);
      }
    }
  }

  protected void childrenChanged()
  {
    invalidateHierarchy();
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    validate();
    super.draw(paramSpriteBatch, paramFloat);
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

  public void invalidate()
  {
    this.needsLayout = true;
  }

  public void invalidateHierarchy()
  {
    invalidate();
    Group localGroup = getParent();
    if ((localGroup instanceof Layout))
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
    setLayoutEnabled(this, paramBoolean);
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
      layout();
      this.needsLayout = false;
      return;
      label103: f1 = localGroup.getWidth();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.WidgetGroup
 * JD-Core Version:    0.6.2
 */