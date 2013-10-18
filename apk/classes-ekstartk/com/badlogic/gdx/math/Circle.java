package com.badlogic.gdx.math;

import java.io.Serializable;

public class Circle
  implements Serializable
{
  public float radius;
  public float x;
  public float y;

  public Circle(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.radius = paramFloat3;
  }

  public Circle(Vector2 paramVector2, float paramFloat)
  {
    this.x = paramVector2.x;
    this.y = paramVector2.y;
    this.radius = paramFloat;
  }

  public boolean contains(float paramFloat1, float paramFloat2)
  {
    float f1 = this.x - paramFloat1;
    float f2 = this.y - paramFloat2;
    return f1 * f1 + f2 * f2 <= this.radius * this.radius;
  }

  public boolean contains(Vector2 paramVector2)
  {
    float f1 = this.x - paramVector2.x;
    float f2 = this.y - paramVector2.y;
    return f1 * f1 + f2 * f2 <= this.radius * this.radius;
  }

  public void set(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.radius = paramFloat3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Circle
 * JD-Core Version:    0.6.2
 */