package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class EdgeShape extends Shape
{
  static final float[] vertex = new float[2];

  public EdgeShape()
  {
    this.addr = newEdgeShape();
  }

  EdgeShape(long paramLong)
  {
    this.addr = paramLong;
  }

  private native void jniGetVertex1(long paramLong, float[] paramArrayOfFloat);

  private native void jniGetVertex2(long paramLong, float[] paramArrayOfFloat);

  private native void jniSet(long paramLong, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  private native long newEdgeShape();

  public Shape.Type getType()
  {
    return Shape.Type.Edge;
  }

  public void getVertex1(Vector2 paramVector2)
  {
    jniGetVertex1(this.addr, vertex);
    paramVector2.x = vertex[0];
    paramVector2.y = vertex[1];
  }

  public void getVertex2(Vector2 paramVector2)
  {
    jniGetVertex2(this.addr, vertex);
    paramVector2.x = vertex[0];
    paramVector2.y = vertex[1];
  }

  public void set(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    jniSet(this.addr, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void set(Vector2 paramVector21, Vector2 paramVector22)
  {
    set(paramVector21.x, paramVector21.y, paramVector22.x, paramVector22.y);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.EdgeShape
 * JD-Core Version:    0.6.2
 */