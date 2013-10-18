package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class CircleShape extends Shape
{
  private final Vector2 position = new Vector2();
  private final float[] tmp = new float[2];

  public CircleShape()
  {
    this.addr = newCircleShape();
  }

  protected CircleShape(long paramLong)
  {
    this.addr = paramLong;
  }

  private native void jniGetPosition(long paramLong, float[] paramArrayOfFloat);

  private native void jniSetPosition(long paramLong, float paramFloat1, float paramFloat2);

  private native long newCircleShape();

  public Vector2 getPosition()
  {
    jniGetPosition(this.addr, this.tmp);
    this.position.x = this.tmp[0];
    this.position.y = this.tmp[1];
    return this.position;
  }

  public Shape.Type getType()
  {
    return Shape.Type.Circle;
  }

  public void setPosition(Vector2 paramVector2)
  {
    jniSetPosition(this.addr, paramVector2.x, paramVector2.y);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.CircleShape
 * JD-Core Version:    0.6.2
 */