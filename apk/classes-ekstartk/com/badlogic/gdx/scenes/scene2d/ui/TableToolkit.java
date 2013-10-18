package com.badlogic.gdx.scenes.scene2d.ui;

import com.a.a.b;
import com.a.a.d;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class TableToolkit extends d<Actor, Table, TableLayout>
{
  static boolean drawDebug;

  public void addChild(Actor paramActor1, Actor paramActor2)
  {
    paramActor2.remove();
    try
    {
      paramActor1.getClass().getMethod("setWidget", new Class[] { Actor.class }).invoke(paramActor1, new Object[] { paramActor2 });
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Error calling setWidget.", localInvocationTargetException);
    }
    catch (Exception localException)
    {
      ((Group)paramActor1).addActor(paramActor2);
    }
  }

  public void addDebugRectangle(TableLayout paramTableLayout, b paramb, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    drawDebug = true;
    if (paramTableLayout.debugRects == null)
      paramTableLayout.debugRects = new Array();
    paramTableLayout.debugRects.add(new TableToolkit.DebugRect(paramb, paramFloat1, ((Table)paramTableLayout.getTable()).getHeight() - paramFloat2, paramFloat3, paramFloat4));
  }

  public void clearDebugRectangles(TableLayout paramTableLayout)
  {
    if (paramTableLayout.debugRects != null)
      paramTableLayout.debugRects.clear();
  }

  public float getHeight(Actor paramActor)
  {
    return paramActor.getHeight();
  }

  public float getMaxHeight(Actor paramActor)
  {
    if ((paramActor instanceof Layout))
      return ((Layout)paramActor).getMaxHeight();
    return 0.0F;
  }

  public float getMaxWidth(Actor paramActor)
  {
    if ((paramActor instanceof Layout))
      return ((Layout)paramActor).getMaxWidth();
    return 0.0F;
  }

  public float getMinHeight(Actor paramActor)
  {
    if ((paramActor instanceof Layout))
      return ((Layout)paramActor).getMinHeight();
    return paramActor.getHeight();
  }

  public float getMinWidth(Actor paramActor)
  {
    if ((paramActor instanceof Layout))
      return ((Layout)paramActor).getMinWidth();
    return paramActor.getWidth();
  }

  public float getPrefHeight(Actor paramActor)
  {
    if ((paramActor instanceof Layout))
      return ((Layout)paramActor).getPrefHeight();
    return paramActor.getHeight();
  }

  public float getPrefWidth(Actor paramActor)
  {
    if ((paramActor instanceof Layout))
      return ((Layout)paramActor).getPrefWidth();
    return paramActor.getWidth();
  }

  public float getWidth(Actor paramActor)
  {
    return paramActor.getWidth();
  }

  public void removeChild(Actor paramActor1, Actor paramActor2)
  {
    ((Group)paramActor1).removeActor(paramActor2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.TableToolkit
 * JD-Core Version:    0.6.2
 */