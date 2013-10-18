package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;

public class Stack extends WidgetGroup
{
  public Stack()
  {
    setTransform(false);
    setWidth(150.0F);
    setHeight(150.0F);
  }

  public void add(Actor paramActor)
  {
    addActor(paramActor);
  }

  public float getMaxHeight()
  {
    SnapshotArray localSnapshotArray = getChildren();
    if (localSnapshotArray.size == 0)
      return 0.0F;
    int i = localSnapshotArray.size;
    int j = 0;
    float f1 = 0.0F;
    Actor localActor;
    float f2;
    if (j < i)
    {
      localActor = (Actor)localSnapshotArray.get(j);
      if ((localActor instanceof Layout))
      {
        f2 = ((Layout)localActor).getMaxHeight();
        label59: if (f2 <= 0.0F)
          break label113;
        if (f1 != 0.0F)
          break label93;
      }
    }
    while (true)
    {
      j++;
      f1 = f2;
      break;
      f2 = localActor.getHeight();
      break label59;
      label93: f2 = Math.min(f1, f2);
      continue;
      return f1 * getScaleY();
      label113: f2 = f1;
    }
  }

  public float getMaxWidth()
  {
    SnapshotArray localSnapshotArray = getChildren();
    if (localSnapshotArray.size == 0)
      return 0.0F;
    int i = localSnapshotArray.size;
    int j = 0;
    float f1 = 0.0F;
    Actor localActor;
    float f2;
    if (j < i)
    {
      localActor = (Actor)localSnapshotArray.get(j);
      if ((localActor instanceof Layout))
      {
        f2 = ((Layout)localActor).getMaxWidth();
        label59: if (f2 <= 0.0F)
          break label113;
        if (f1 != 0.0F)
          break label93;
      }
    }
    while (true)
    {
      j++;
      f1 = f2;
      break;
      f2 = localActor.getWidth();
      break label59;
      label93: f2 = Math.min(f1, f2);
      continue;
      return f1 * getScaleX();
      label113: f2 = f1;
    }
  }

  public float getMinHeight()
  {
    SnapshotArray localSnapshotArray = getChildren();
    int i = localSnapshotArray.size;
    float f1 = 0.0F;
    int j = 0;
    if (j < i)
    {
      Actor localActor = (Actor)localSnapshotArray.get(j);
      if ((localActor instanceof Layout));
      for (float f2 = ((Layout)localActor).getMinHeight(); ; f2 = localActor.getHeight())
      {
        f1 = Math.max(f1, f2);
        j++;
        break;
      }
    }
    return f1 * getScaleY();
  }

  public float getMinWidth()
  {
    SnapshotArray localSnapshotArray = getChildren();
    int i = localSnapshotArray.size;
    float f1 = 0.0F;
    int j = 0;
    if (j < i)
    {
      Actor localActor = (Actor)localSnapshotArray.get(j);
      if ((localActor instanceof Layout));
      for (float f2 = ((Layout)localActor).getMinWidth(); ; f2 = localActor.getWidth())
      {
        f1 = Math.max(f1, f2);
        j++;
        break;
      }
    }
    return f1 * getScaleX();
  }

  public float getPrefHeight()
  {
    SnapshotArray localSnapshotArray = getChildren();
    int i = localSnapshotArray.size;
    float f1 = 0.0F;
    int j = 0;
    if (j < i)
    {
      Actor localActor = (Actor)localSnapshotArray.get(j);
      if ((localActor instanceof Layout));
      for (float f2 = ((Layout)localActor).getPrefHeight(); ; f2 = localActor.getHeight())
      {
        f1 = Math.max(f1, f2);
        j++;
        break;
      }
    }
    return f1 * getScaleY();
  }

  public float getPrefWidth()
  {
    SnapshotArray localSnapshotArray = getChildren();
    int i = localSnapshotArray.size;
    float f1 = 0.0F;
    int j = 0;
    if (j < i)
    {
      Actor localActor = (Actor)localSnapshotArray.get(j);
      if ((localActor instanceof Layout));
      for (float f2 = ((Layout)localActor).getPrefWidth(); ; f2 = localActor.getWidth())
      {
        f1 = Math.max(f1, f2);
        j++;
        break;
      }
    }
    return f1 * getScaleX();
  }

  public void layout()
  {
    SnapshotArray localSnapshotArray = getChildren();
    int i = localSnapshotArray.size;
    for (int j = 0; j < i; j++)
    {
      Actor localActor = (Actor)localSnapshotArray.get(j);
      localActor.setBounds(0.0F, 0.0F, getWidth(), getHeight());
      if ((localActor instanceof Layout))
      {
        Layout localLayout = (Layout)localActor;
        localLayout.invalidate();
        localLayout.validate();
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Stack
 * JD-Core Version:    0.6.2
 */