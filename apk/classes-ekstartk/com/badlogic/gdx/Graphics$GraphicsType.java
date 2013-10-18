package com.badlogic.gdx;

public enum Graphics$GraphicsType
{
  static
  {
    Angle = new GraphicsType("Angle", 3);
    WebGL = new GraphicsType("WebGL", 4);
    iOSGL = new GraphicsType("iOSGL", 5);
    GraphicsType[] arrayOfGraphicsType = new GraphicsType[6];
    arrayOfGraphicsType[0] = AndroidGL;
    arrayOfGraphicsType[1] = JoglGL;
    arrayOfGraphicsType[2] = LWJGL;
    arrayOfGraphicsType[3] = Angle;
    arrayOfGraphicsType[4] = WebGL;
    arrayOfGraphicsType[5] = iOSGL;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Graphics.GraphicsType
 * JD-Core Version:    0.6.2
 */