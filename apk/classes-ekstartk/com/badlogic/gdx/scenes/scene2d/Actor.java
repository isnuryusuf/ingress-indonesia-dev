package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.SnapshotArray;

public class Actor
{
  private final Array<Action> actions = new Array(0);
  private final DelayedRemovalArray<EventListener> captureListeners = new DelayedRemovalArray(0);
  private final Color color = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  private float height;
  private final DelayedRemovalArray<EventListener> listeners = new DelayedRemovalArray(0);
  public final String name;
  private float originX;
  private float originY;
  private Group parent;
  private float rotation;
  private float scaleX = 1.0F;
  private float scaleY = 1.0F;
  private Stage stage;
  private Touchable touchable = Touchable.enabled;
  private boolean visible = true;
  private float width;
  private float x;
  private float y;

  public Actor()
  {
    this(null);
  }

  public Actor(String paramString)
  {
    this.name = paramString;
  }

  public void act(float paramFloat)
  {
    int i = 0;
    int j = this.actions.size;
    int n;
    int k;
    if (i < j)
    {
      Action localAction = (Action)this.actions.get(i);
      if (!localAction.act(paramFloat))
        break label78;
      this.actions.removeIndex(i);
      localAction.setActor(null);
      n = i - 1;
      k = j - 1;
    }
    for (int m = n; ; m = i)
    {
      i = m + 1;
      j = k;
      break;
      return;
      label78: k = j;
    }
  }

  public void addAction(Action paramAction)
  {
    paramAction.setActor(this);
    this.actions.add(paramAction);
  }

  public boolean addCaptureListener(EventListener paramEventListener)
  {
    if (!this.captureListeners.contains(paramEventListener, true))
      this.captureListeners.add(paramEventListener);
    return true;
  }

  public boolean addListener(EventListener paramEventListener)
  {
    if (!this.listeners.contains(paramEventListener, true))
    {
      this.listeners.add(paramEventListener);
      return true;
    }
    return false;
  }

  public void clearActions()
  {
    for (int i = -1 + this.actions.size; i >= 0; i--)
      ((Action)this.actions.get(i)).setActor(null);
    this.actions.clear();
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
  }

  public boolean fire(Event paramEvent)
  {
    int i = 0;
    if (paramEvent.getStage() == null)
      paramEvent.setStage(getStage());
    paramEvent.setTarget(this);
    Array localArray = (Array)Pools.obtain(Array.class);
    for (Group localGroup = getParent(); localGroup != null; localGroup = localGroup.getParent())
      localArray.add(localGroup);
    try
    {
      for (int j = -1 + localArray.size; j >= 0; j--)
      {
        ((Group)localArray.get(j)).notify(paramEvent, true);
        if (paramEvent.isStopped())
        {
          boolean bool1 = paramEvent.isCancelled();
          return bool1;
        }
      }
      notify(paramEvent, true);
      if (paramEvent.isStopped())
      {
        boolean bool6 = paramEvent.isCancelled();
        return bool6;
      }
      notify(paramEvent, false);
      if (!paramEvent.getBubbles())
      {
        boolean bool5 = paramEvent.isCancelled();
        return bool5;
      }
      if (paramEvent.isStopped())
      {
        boolean bool4 = paramEvent.isCancelled();
        return bool4;
      }
      int k = localArray.size;
      while (i < k)
      {
        ((Group)localArray.get(i)).notify(paramEvent, false);
        if (paramEvent.isStopped())
        {
          boolean bool2 = paramEvent.isCancelled();
          return bool2;
        }
        i++;
      }
      boolean bool3 = paramEvent.isCancelled();
      return bool3;
    }
    finally
    {
      localArray.clear();
      Pools.free(localArray);
    }
  }

  public Array<Action> getActions()
  {
    return this.actions;
  }

  public Array<EventListener> getCaptureListeners()
  {
    return this.captureListeners;
  }

  public Color getColor()
  {
    return this.color;
  }

  public float getHeight()
  {
    return this.height;
  }

  public Array<EventListener> getListeners()
  {
    return this.listeners;
  }

  public float getOriginX()
  {
    return this.originX;
  }

  public float getOriginY()
  {
    return this.originY;
  }

  public Group getParent()
  {
    return this.parent;
  }

  public float getRight()
  {
    return getX() + getWidth();
  }

  public float getRotation()
  {
    return this.rotation;
  }

  public float getScaleX()
  {
    return this.scaleX;
  }

  public float getScaleY()
  {
    return this.scaleY;
  }

  public Stage getStage()
  {
    return this.stage;
  }

  public float getTop()
  {
    return getY() + getHeight();
  }

  public Touchable getTouchable()
  {
    return this.touchable;
  }

  public float getWidth()
  {
    return this.width;
  }

  public float getX()
  {
    return this.x;
  }

  public float getY()
  {
    return this.y;
  }

  public int getZIndex()
  {
    Group localGroup = getParent();
    if (localGroup == null)
      return -1;
    return localGroup.getChildren().indexOf(this, true);
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    if ((this.touchable == Touchable.enabled) && (paramFloat1 >= 0.0F) && (paramFloat1 < this.width) && (paramFloat2 >= 0.0F) && (paramFloat2 < this.height))
      return this;
    return null;
  }

  public boolean isAncestor(Actor paramActor)
  {
    if (paramActor == null)
      throw new IllegalArgumentException("actor cannot be null.");
    do
    {
      paramActor = paramActor.getParent();
      if (paramActor == null)
        return false;
    }
    while (paramActor != this);
    return true;
  }

  public boolean isDescendant(Actor paramActor)
  {
    if (paramActor == null)
      throw new IllegalArgumentException("actor cannot be null.");
    do
    {
      this = getParent();
      if (this == null)
        return false;
    }
    while (this != paramActor);
    return true;
  }

  public boolean isVisible()
  {
    return this.visible;
  }

  public void localToStageCoordinates(Vector2 paramVector2)
  {
    while (this != null)
    {
      if ((getRotation() != 0.0F) || (getScaleX() != 1.0F) || (getScaleY() != 1.0F))
        throw new GdxRuntimeException("Only unrotated and unscaled actors may use this method.");
      paramVector2.x += getX();
      paramVector2.y += getY();
      this = getParent();
    }
  }

  public boolean notify(Event paramEvent, boolean paramBoolean)
  {
    if (paramEvent.getTarget() == null)
      throw new IllegalArgumentException("The event target cannot be null.");
    if (paramBoolean);
    for (DelayedRemovalArray localDelayedRemovalArray = this.captureListeners; localDelayedRemovalArray.size == 0; localDelayedRemovalArray = this.listeners)
      return paramEvent.isCancelled();
    paramEvent.setListenerActor(this);
    paramEvent.setCapture(paramBoolean);
    if (paramEvent.getStage() == null)
      paramEvent.setStage(this.stage);
    localDelayedRemovalArray.begin();
    int i = localDelayedRemovalArray.size;
    for (int j = 0; j < i; j++)
    {
      EventListener localEventListener = (EventListener)localDelayedRemovalArray.get(j);
      if (localEventListener.handle(paramEvent))
      {
        paramEvent.handle();
        if ((paramEvent instanceof InputEvent))
        {
          InputEvent localInputEvent = (InputEvent)paramEvent;
          if (localInputEvent.getType() == InputEvent.Type.touchDown)
            paramEvent.getStage().addTouchFocus(localEventListener, this, localInputEvent.getTarget(), localInputEvent.getPointer(), localInputEvent.getButton());
        }
      }
    }
    localDelayedRemovalArray.end();
    return paramEvent.isCancelled();
  }

  public void parentToLocalCoordinates(Vector2 paramVector2)
  {
    float f1 = getRotation();
    float f2 = getScaleX();
    float f3 = getScaleY();
    float f4 = getX();
    float f5 = getY();
    if (f1 == 0.0F)
    {
      if ((f2 == 1.0F) && (f3 == 1.0F))
      {
        paramVector2.x -= f4;
        paramVector2.y -= f5;
        return;
      }
      float f30 = getOriginX();
      float f31 = getOriginY();
      if ((f30 == 0.0F) && (f31 == 0.0F))
      {
        paramVector2.x = ((paramVector2.x - f4) / f2);
        paramVector2.y = ((paramVector2.y - f5) / f3);
        return;
      }
      paramVector2.x = (f30 + (paramVector2.x - f4 - f30) / f2);
      paramVector2.y = (f31 + (paramVector2.y - f5 - f31) / f3);
      return;
    }
    float f6 = (float)Math.cos(f1 * 0.01745329F);
    float f7 = (float)Math.sin(f1 * 0.01745329F);
    float f8 = getOriginX();
    float f9 = getOriginY();
    if ((f2 == 1.0F) && (f3 == 1.0F))
    {
      if ((f8 == 0.0F) && (f9 == 0.0F))
      {
        float f28 = paramVector2.x - f4;
        float f29 = paramVector2.y - f5;
        paramVector2.x = (f28 * f6 + f29 * f7);
        paramVector2.y = (f28 * -f7 + f29 * f6);
        return;
      }
      float f20 = f4 + f8;
      float f21 = f5 + f9;
      float f22 = -f8;
      float f23 = -f9;
      float f24 = f20 + (f6 * f22 - f7 * f23);
      float f25 = f21 + (f22 * f7 + f23 * f6);
      float f26 = paramVector2.x - f24;
      float f27 = paramVector2.y - f25;
      paramVector2.x = (f26 * f6 + f27 * f7);
      paramVector2.y = (f26 * -f7 + f27 * f6);
      return;
    }
    if ((f8 == 0.0F) && (f9 == 0.0F))
    {
      float f18 = paramVector2.x - f4;
      float f19 = paramVector2.y - f5;
      paramVector2.x = ((f18 * f6 + f19 * f7) / f2);
      paramVector2.y = ((f18 * -f7 + f19 * f6) / f3);
      return;
    }
    float f10 = f4 + f8;
    float f11 = f5 + f9;
    float f12 = f2 * -f8;
    float f13 = f3 * -f9;
    float f14 = f10 + (f6 * f12 - f7 * f13);
    float f15 = f11 + (f12 * f7 + f13 * f6);
    float f16 = paramVector2.x - f14;
    float f17 = paramVector2.y - f15;
    paramVector2.x = ((f16 * f6 + f17 * f7) / f2);
    paramVector2.y = ((f16 * -f7 + f17 * f6) / f3);
  }

  public boolean remove()
  {
    if (this.parent != null)
      return this.parent.removeActor(this);
    return false;
  }

  public void removeAction(Action paramAction)
  {
    if (this.actions.removeValue(paramAction, true))
      paramAction.setActor(null);
  }

  public boolean removeCaptureListener(EventListener paramEventListener)
  {
    return this.captureListeners.removeValue(paramEventListener, true);
  }

  public boolean removeListener(EventListener paramEventListener)
  {
    return this.listeners.removeValue(paramEventListener, true);
  }

  public void rotate(float paramFloat)
  {
    setRotation(paramFloat + this.rotation);
  }

  public void scale(float paramFloat)
  {
    setScaleX(paramFloat + this.scaleX);
    setScaleY(paramFloat + this.scaleY);
  }

  public void scale(float paramFloat1, float paramFloat2)
  {
    setScaleX(paramFloat1 + this.scaleX);
    setScaleY(paramFloat2 + this.scaleY);
  }

  public void setBounds(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    setX(paramFloat1);
    setY(paramFloat2);
    setWidth(paramFloat3);
    setHeight(paramFloat4);
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.color.set(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void setColor(Color paramColor)
  {
    this.color.set(paramColor);
  }

  public void setHeight(float paramFloat)
  {
    this.height = paramFloat;
  }

  public void setOrigin(float paramFloat1, float paramFloat2)
  {
    setOriginX(paramFloat1);
    setOriginY(paramFloat2);
  }

  public void setOriginX(float paramFloat)
  {
    this.originX = paramFloat;
  }

  public void setOriginY(float paramFloat)
  {
    this.originY = paramFloat;
  }

  protected void setParent(Group paramGroup)
  {
    this.parent = paramGroup;
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    setX(paramFloat1);
    setY(paramFloat2);
  }

  public void setRotation(float paramFloat)
  {
    this.rotation = paramFloat;
  }

  public void setScale(float paramFloat)
  {
    setScaleX(paramFloat);
    setScaleY(paramFloat);
  }

  public void setScale(float paramFloat1, float paramFloat2)
  {
    setScaleX(paramFloat1);
    setScaleY(paramFloat2);
  }

  public void setScaleX(float paramFloat)
  {
    this.scaleX = paramFloat;
  }

  public void setScaleY(float paramFloat)
  {
    this.scaleY = paramFloat;
  }

  public void setSize(float paramFloat1, float paramFloat2)
  {
    setWidth(paramFloat1);
    setHeight(paramFloat2);
  }

  protected void setStage(Stage paramStage)
  {
    this.stage = paramStage;
  }

  public void setTouchable(Touchable paramTouchable)
  {
    this.touchable = paramTouchable;
  }

  public void setVisible(boolean paramBoolean)
  {
    this.visible = paramBoolean;
  }

  public void setWidth(float paramFloat)
  {
    this.width = paramFloat;
  }

  public void setX(float paramFloat)
  {
    this.x = paramFloat;
  }

  public void setY(float paramFloat)
  {
    this.y = paramFloat;
  }

  public void setZIndex(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("ZIndex cannot be < 0.");
    Group localGroup = getParent();
    if (localGroup == null);
    SnapshotArray localSnapshotArray;
    do
    {
      return;
      localSnapshotArray = localGroup.getChildren();
    }
    while ((localSnapshotArray.size == 1) || (!localSnapshotArray.removeValue(this, true)));
    if (paramInt >= localSnapshotArray.size)
    {
      localSnapshotArray.add(this);
      return;
    }
    localSnapshotArray.insert(paramInt, this);
  }

  public void size(float paramFloat)
  {
    setWidth(paramFloat + this.width);
    setHeight(paramFloat + this.height);
  }

  public void size(float paramFloat1, float paramFloat2)
  {
    setWidth(paramFloat1 + this.width);
    setHeight(paramFloat2 + this.height);
  }

  public void stageToLocalCoordinates(Vector2 paramVector2)
  {
    if (this.parent == null)
      return;
    this.parent.stageToLocalCoordinates(paramVector2);
    parentToLocalCoordinates(paramVector2);
  }

  public void toBack()
  {
    setZIndex(0);
  }

  public void toFront()
  {
    setZIndex(2147483647);
  }

  public String toString()
  {
    String str = getClass().getName();
    int i = str.lastIndexOf('.');
    if (i != -1)
      str = str.substring(i + 1);
    return str + " " + this.x + "," + this.y + " " + this.width + "x" + this.height;
  }

  public void translate(float paramFloat1, float paramFloat2)
  {
    setX(paramFloat1 + this.x);
    setY(paramFloat2 + this.y);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.Actor
 * JD-Core Version:    0.6.2
 */