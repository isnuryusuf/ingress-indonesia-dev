package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.utils.Cullable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;

public class Group extends Actor
  implements Cullable
{
  private final Matrix4 batchTransform = new Matrix4();
  private final SnapshotArray<Actor> children = new SnapshotArray(true, 4, Actor.class);
  private Rectangle cullingArea;
  private final Matrix3 localTransform = new Matrix3();
  private final Matrix4 oldBatchTransform = new Matrix4();
  private final Vector2 point = new Vector2();
  private boolean transform = true;
  private final Matrix3 worldTransform = new Matrix3();

  public Group()
  {
  }

  public Group(String paramString)
  {
    super(paramString);
  }

  public void act(float paramFloat)
  {
    super.act(paramFloat);
    Actor[] arrayOfActor = (Actor[])this.children.begin();
    int i = 0;
    int j = this.children.size;
    while (i < j)
    {
      arrayOfActor[i].act(paramFloat);
      i++;
    }
    this.children.end();
  }

  public void addActor(Actor paramActor)
  {
    paramActor.remove();
    this.children.add(paramActor);
    paramActor.setParent(this);
    paramActor.setStage(getStage());
    childrenChanged();
  }

  public void addActorAfter(Actor paramActor1, Actor paramActor2)
  {
    paramActor2.remove();
    int i = this.children.indexOf(paramActor1, true);
    if (i == this.children.size)
      this.children.add(paramActor2);
    while (true)
    {
      paramActor2.setParent(this);
      paramActor2.setStage(getStage());
      childrenChanged();
      return;
      this.children.insert(i + 1, paramActor2);
    }
  }

  public void addActorAt(int paramInt, Actor paramActor)
  {
    paramActor.remove();
    this.children.insert(paramInt, paramActor);
    paramActor.setParent(this);
    paramActor.setStage(getStage());
    childrenChanged();
  }

  public void addActorBefore(Actor paramActor1, Actor paramActor2)
  {
    paramActor2.remove();
    int i = this.children.indexOf(paramActor1, true);
    this.children.insert(i, paramActor2);
    paramActor2.setParent(this);
    paramActor2.setStage(getStage());
    childrenChanged();
  }

  protected void applyTransform(SpriteBatch paramSpriteBatch, Matrix4 paramMatrix4)
  {
    paramSpriteBatch.end();
    this.oldBatchTransform.set(paramSpriteBatch.getTransformMatrix());
    paramSpriteBatch.setTransformMatrix(paramMatrix4);
    paramSpriteBatch.begin();
  }

  protected void childrenChanged()
  {
  }

  public void clear()
  {
    Actor[] arrayOfActor = (Actor[])this.children.begin();
    int i = 0;
    int j = this.children.size;
    while (i < j)
    {
      Actor localActor = arrayOfActor[i];
      localActor.setStage(null);
      localActor.setParent(null);
      i++;
    }
    this.children.end();
    this.children.clear();
    childrenChanged();
  }

  protected Matrix4 computeTransform()
  {
    Matrix3 localMatrix3 = this.worldTransform;
    float f1 = getOriginX();
    float f2 = getOriginY();
    float f3 = getRotation();
    float f4 = getScaleX();
    float f5 = getScaleY();
    if ((f1 != 0.0F) || (f2 != 0.0F))
      this.localTransform.setToTranslation(f1, f2);
    Group localGroup;
    while (true)
    {
      if (f3 != 0.0F)
        this.localTransform.mul(localMatrix3.setToRotation(f3));
      if ((f4 != 1.0F) || (f5 != 1.0F))
        this.localTransform.mul(localMatrix3.setToScaling(f4, f5));
      if ((f1 != 0.0F) || (f2 != 0.0F))
        this.localTransform.mul(localMatrix3.setToTranslation(-f1, -f2));
      this.localTransform.trn(getX(), getY());
      for (localGroup = getParent(); (localGroup != null) && (!localGroup.transform); localGroup = localGroup.getParent());
      this.localTransform.idt();
    }
    if (localGroup != null)
    {
      this.worldTransform.set(localGroup.worldTransform);
      this.worldTransform.mul(this.localTransform);
    }
    while (true)
    {
      this.batchTransform.set(this.worldTransform);
      return this.batchTransform;
      this.worldTransform.set(this.localTransform);
    }
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    if (this.transform)
      applyTransform(paramSpriteBatch, computeTransform());
    drawChildren(paramSpriteBatch, paramFloat);
    if (this.transform)
      resetTransform(paramSpriteBatch);
  }

  protected void drawChildren(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    int i = 0;
    float f1 = paramFloat * getColor().a;
    Actor[] arrayOfActor = (Actor[])this.children.begin();
    if (this.cullingArea != null)
      if (this.transform)
      {
        int n = this.children.size;
        while (i < n)
        {
          Actor localActor4 = arrayOfActor[i];
          if (localActor4.isVisible())
          {
            float f10 = localActor4.getX();
            float f11 = localActor4.getY();
            if ((f10 <= this.cullingArea.x + this.cullingArea.width) && (f11 <= this.cullingArea.y + this.cullingArea.height) && (f10 + localActor4.getWidth() >= this.cullingArea.x) && (f11 + localActor4.getHeight() >= this.cullingArea.y))
              localActor4.draw(paramSpriteBatch, f1);
          }
          i++;
        }
        paramSpriteBatch.flush();
      }
    while (true)
    {
      this.children.end();
      return;
      float f6 = getX();
      float f7 = getY();
      setPosition(0.0F, 0.0F);
      int m = this.children.size;
      while (i < m)
      {
        Actor localActor3 = arrayOfActor[i];
        if (localActor3.isVisible())
        {
          float f8 = localActor3.getX();
          float f9 = localActor3.getY();
          if ((f8 <= this.cullingArea.x + this.cullingArea.width) && (f9 <= this.cullingArea.y + this.cullingArea.height) && (f8 + localActor3.getWidth() >= this.cullingArea.x) && (f9 + localActor3.getHeight() >= this.cullingArea.y))
          {
            localActor3.translate(f6, f7);
            localActor3.draw(paramSpriteBatch, f1);
            localActor3.setPosition(f8, f9);
          }
        }
        i++;
      }
      setPosition(f6, f7);
      continue;
      if (this.transform)
      {
        int k = this.children.size;
        while (i < k)
        {
          Actor localActor2 = arrayOfActor[i];
          if (localActor2.isVisible())
            localActor2.draw(paramSpriteBatch, f1);
          i++;
        }
        paramSpriteBatch.flush();
      }
      else
      {
        float f2 = getX();
        float f3 = getY();
        setPosition(0.0F, 0.0F);
        int j = this.children.size;
        while (i < j)
        {
          Actor localActor1 = arrayOfActor[i];
          if (localActor1.isVisible())
          {
            float f4 = localActor1.getX();
            float f5 = localActor1.getY();
            localActor1.translate(f2, f3);
            localActor1.draw(paramSpriteBatch, f1);
            localActor1.setPosition(f4, f5);
          }
          i++;
        }
        setPosition(f2, f3);
      }
    }
  }

  public SnapshotArray<Actor> getChildren()
  {
    return this.children;
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    Actor localActor2;
    if (getTouchable() == Touchable.disabled)
    {
      localActor2 = null;
      return localActor2;
    }
    SnapshotArray localSnapshotArray = this.children;
    for (int i = -1 + localSnapshotArray.size; ; i--)
    {
      if (i < 0)
        break label99;
      Actor localActor1 = (Actor)localSnapshotArray.get(i);
      if (localActor1.isVisible())
      {
        localActor1.parentToLocalCoordinates(this.point.set(paramFloat1, paramFloat2));
        localActor2 = localActor1.hit(this.point.x, this.point.y);
        if (localActor2 != null)
          break;
      }
    }
    label99: return super.hit(paramFloat1, paramFloat2);
  }

  public boolean isTransform()
  {
    return this.transform;
  }

  public void localToDescendantCoordinates(Actor paramActor, Vector2 paramVector2)
  {
    Group localGroup = paramActor.getParent();
    if (localGroup == null)
      throw new IllegalArgumentException("Child is not a descendant: " + paramActor);
    if (localGroup != this)
      localToDescendantCoordinates(localGroup, paramVector2);
    paramActor.parentToLocalCoordinates(paramVector2);
  }

  public boolean removeActor(Actor paramActor)
  {
    if (!this.children.removeValue(paramActor, true))
      return false;
    Stage localStage = getStage();
    if (localStage != null)
      localStage.unfocus(paramActor);
    paramActor.setParent(null);
    paramActor.setStage(null);
    childrenChanged();
    return true;
  }

  protected void resetTransform(SpriteBatch paramSpriteBatch)
  {
    paramSpriteBatch.end();
    paramSpriteBatch.setTransformMatrix(this.oldBatchTransform);
    paramSpriteBatch.begin();
  }

  public void setCullingArea(Rectangle paramRectangle)
  {
    this.cullingArea = paramRectangle;
  }

  protected void setStage(Stage paramStage)
  {
    super.setStage(paramStage);
    SnapshotArray localSnapshotArray = this.children;
    int i = localSnapshotArray.size;
    for (int j = 0; j < i; j++)
      ((Actor)localSnapshotArray.get(j)).setStage(paramStage);
  }

  public void setTransform(boolean paramBoolean)
  {
    this.transform = paramBoolean;
  }

  public boolean swapActor(int paramInt1, int paramInt2)
  {
    int i = this.children.size;
    if ((paramInt1 < 0) || (paramInt1 >= i));
    while ((paramInt2 < 0) || (paramInt2 >= i))
      return false;
    this.children.swap(paramInt1, paramInt2);
    return true;
  }

  public boolean swapActor(Actor paramActor1, Actor paramActor2)
  {
    int i = this.children.indexOf(paramActor1, true);
    int j = this.children.indexOf(paramActor2, true);
    if ((i == -1) || (j == -1))
      return false;
    this.children.swap(i, j);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.Group
 * JD-Core Version:    0.6.2
 */