package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class Fixture
{
  protected long addr;
  private Body body;
  private final Filter filter = new Filter();
  protected Shape shape;
  private final short[] tmp = new short[3];
  protected Object userData;

  protected Fixture(Body paramBody, long paramLong)
  {
    this.body = paramBody;
    this.addr = paramLong;
  }

  private native float jniGetDensity(long paramLong);

  private native void jniGetFilterData(long paramLong, short[] paramArrayOfShort);

  private native float jniGetFriction(long paramLong);

  private native float jniGetRestitution(long paramLong);

  private native long jniGetShape(long paramLong);

  private native int jniGetType(long paramLong);

  private native boolean jniIsSensor(long paramLong);

  private native void jniRefilter(long paramLong);

  private native void jniSetDensity(long paramLong, float paramFloat);

  private native void jniSetFilterData(long paramLong, short paramShort1, short paramShort2, short paramShort3);

  private native void jniSetFriction(long paramLong, float paramFloat);

  private native void jniSetRestitution(long paramLong, float paramFloat);

  private native void jniSetSensor(long paramLong, boolean paramBoolean);

  private native boolean jniTestPoint(long paramLong, float paramFloat1, float paramFloat2);

  public Body getBody()
  {
    return this.body;
  }

  public float getDensity()
  {
    return jniGetDensity(this.addr);
  }

  public Filter getFilterData()
  {
    jniGetFilterData(this.addr, this.tmp);
    this.filter.maskBits = this.tmp[0];
    this.filter.categoryBits = this.tmp[1];
    this.filter.groupIndex = this.tmp[2];
    return this.filter;
  }

  public float getFriction()
  {
    return jniGetFriction(this.addr);
  }

  public float getRestitution()
  {
    return jniGetRestitution(this.addr);
  }

  public Shape getShape()
  {
    long l;
    if (this.shape == null)
    {
      l = jniGetShape(this.addr);
      if (l == 0L)
        throw new GdxRuntimeException("Null shape address!");
      switch (Shape.jniGetType(l))
      {
      default:
        throw new GdxRuntimeException("Unknown shape type!");
      case 0:
        this.shape = new CircleShape(l);
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      return this.shape;
      this.shape = new EdgeShape(l);
      continue;
      this.shape = new PolygonShape(l);
      continue;
      this.shape = new ChainShape(l);
    }
  }

  public Shape.Type getType()
  {
    switch (jniGetType(this.addr))
    {
    default:
      throw new GdxRuntimeException("Unknown shape type!");
    case 0:
      return Shape.Type.Circle;
    case 1:
      return Shape.Type.Edge;
    case 2:
      return Shape.Type.Polygon;
    case 3:
    }
    return Shape.Type.Chain;
  }

  public Object getUserData()
  {
    return this.userData;
  }

  public boolean isSensor()
  {
    return jniIsSensor(this.addr);
  }

  public void refilter()
  {
    jniRefilter(this.addr);
  }

  protected void reset(Body paramBody, long paramLong)
  {
    this.body = paramBody;
    this.addr = paramLong;
    this.shape = null;
    this.userData = null;
  }

  public void setDensity(float paramFloat)
  {
    jniSetDensity(this.addr, paramFloat);
  }

  public void setFilterData(Filter paramFilter)
  {
    jniSetFilterData(this.addr, paramFilter.categoryBits, paramFilter.maskBits, paramFilter.groupIndex);
  }

  public void setFriction(float paramFloat)
  {
    jniSetFriction(this.addr, paramFloat);
  }

  public void setRestitution(float paramFloat)
  {
    jniSetRestitution(this.addr, paramFloat);
  }

  public void setSensor(boolean paramBoolean)
  {
    jniSetSensor(this.addr, paramBoolean);
  }

  public void setUserData(Object paramObject)
  {
    this.userData = paramObject;
  }

  public boolean testPoint(float paramFloat1, float paramFloat2)
  {
    return jniTestPoint(this.addr, paramFloat1, paramFloat2);
  }

  public boolean testPoint(Vector2 paramVector2)
  {
    return jniTestPoint(this.addr, paramVector2.x, paramVector2.y);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.Fixture
 * JD-Core Version:    0.6.2
 */