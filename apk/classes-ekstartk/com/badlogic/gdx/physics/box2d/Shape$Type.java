package com.badlogic.gdx.physics.box2d;

public enum Shape$Type
{
  static
  {
    Edge = new Type("Edge", 2);
    Chain = new Type("Chain", 3);
    Type[] arrayOfType = new Type[4];
    arrayOfType[0] = Circle;
    arrayOfType[1] = Polygon;
    arrayOfType[2] = Edge;
    arrayOfType[3] = Chain;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.Shape.Type
 * JD-Core Version:    0.6.2
 */