package com.badlogic.gdx.physics.box2d;

public enum BodyDef$BodyType
{
  private int value;

  static
  {
    KinematicBody = new BodyType("KinematicBody", 1, 1);
    DynamicBody = new BodyType("DynamicBody", 2, 2);
    BodyType[] arrayOfBodyType = new BodyType[3];
    arrayOfBodyType[0] = StaticBody;
    arrayOfBodyType[1] = KinematicBody;
    arrayOfBodyType[2] = DynamicBody;
  }

  private BodyDef$BodyType(int paramInt)
  {
    this.value = paramInt;
  }

  public final int getValue()
  {
    return this.value;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.BodyDef.BodyType
 * JD-Core Version:    0.6.2
 */