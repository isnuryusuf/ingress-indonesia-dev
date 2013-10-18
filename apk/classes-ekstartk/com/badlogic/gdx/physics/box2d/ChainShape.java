package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class ChainShape extends Shape
{
  private static float[] verts = new float[2];

  public ChainShape()
  {
    this.addr = newChainShape();
  }

  ChainShape(long paramLong)
  {
    this.addr = paramLong;
  }

  private native void jniCreateChain(long paramLong, float[] paramArrayOfFloat, int paramInt);

  private native void jniCreateLoop(long paramLong, float[] paramArrayOfFloat, int paramInt);

  private native void jniGetVertex(long paramLong, int paramInt, float[] paramArrayOfFloat);

  private native int jniGetVertexCount(long paramLong);

  private native void jniSetNextVertex(long paramLong, float paramFloat1, float paramFloat2);

  private native void jniSetPrevVertex(long paramLong, float paramFloat1, float paramFloat2);

  private native long newChainShape();

  public void createChain(Vector2[] paramArrayOfVector2)
  {
    int i = 0;
    float[] arrayOfFloat = new float[2 * paramArrayOfVector2.length];
    int j = 0;
    while (j < 2 * paramArrayOfVector2.length)
    {
      arrayOfFloat[j] = paramArrayOfVector2[i].x;
      arrayOfFloat[(j + 1)] = paramArrayOfVector2[i].y;
      j += 2;
      i++;
    }
    jniCreateChain(this.addr, arrayOfFloat, arrayOfFloat.length / 2);
  }

  public void createLoop(Vector2[] paramArrayOfVector2)
  {
    int i = 0;
    float[] arrayOfFloat = new float[2 * paramArrayOfVector2.length];
    int j = 0;
    while (j < 2 * paramArrayOfVector2.length)
    {
      arrayOfFloat[j] = paramArrayOfVector2[i].x;
      arrayOfFloat[(j + 1)] = paramArrayOfVector2[i].y;
      j += 2;
      i++;
    }
    jniCreateLoop(this.addr, arrayOfFloat, arrayOfFloat.length / 2);
  }

  public Shape.Type getType()
  {
    return Shape.Type.Chain;
  }

  public void getVertex(int paramInt, Vector2 paramVector2)
  {
    jniGetVertex(this.addr, paramInt, verts);
    paramVector2.x = verts[0];
    paramVector2.y = verts[1];
  }

  public int getVertexCount()
  {
    return jniGetVertexCount(this.addr);
  }

  public void setNextVertex(float paramFloat1, float paramFloat2)
  {
    jniSetNextVertex(this.addr, paramFloat1, paramFloat2);
  }

  public void setNextVertex(Vector2 paramVector2)
  {
    setNextVertex(paramVector2.x, paramVector2.y);
  }

  public void setPrevVertex(float paramFloat1, float paramFloat2)
  {
    jniSetPrevVertex(this.addr, paramFloat1, paramFloat2);
  }

  public void setPrevVertex(Vector2 paramVector2)
  {
    setPrevVertex(paramVector2.x, paramVector2.y);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.ChainShape
 * JD-Core Version:    0.6.2
 */