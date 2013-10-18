package com.badlogic.gdx.graphics.glutils;

public enum ShapeRenderer$ShapeType
{
  private final int glType;

  static
  {
    Line = new ShapeType("Line", 1, 1);
    Rectangle = new ShapeType("Rectangle", 2, 1);
    FilledRectangle = new ShapeType("FilledRectangle", 3, 4);
    Box = new ShapeType("Box", 4, 1);
    Circle = new ShapeType("Circle", 5, 1);
    FilledCircle = new ShapeType("FilledCircle", 6, 4);
    Triangle = new ShapeType("Triangle", 7, 1);
    FilledTriangle = new ShapeType("FilledTriangle", 8, 4);
    ShapeType[] arrayOfShapeType = new ShapeType[9];
    arrayOfShapeType[0] = Point;
    arrayOfShapeType[1] = Line;
    arrayOfShapeType[2] = Rectangle;
    arrayOfShapeType[3] = FilledRectangle;
    arrayOfShapeType[4] = Box;
    arrayOfShapeType[5] = Circle;
    arrayOfShapeType[6] = FilledCircle;
    arrayOfShapeType[7] = Triangle;
    arrayOfShapeType[8] = FilledTriangle;
  }

  private ShapeRenderer$ShapeType(int paramInt)
  {
    this.glType = paramInt;
  }

  public final int getGlType()
  {
    return this.glType;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ShapeRenderer.ShapeType
 * JD-Core Version:    0.6.2
 */