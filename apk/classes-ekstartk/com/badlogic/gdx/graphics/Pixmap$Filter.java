package com.badlogic.gdx.graphics;

public enum Pixmap$Filter
{
  static
  {
    BiLinear = new Filter("BiLinear", 1);
    Filter[] arrayOfFilter = new Filter[2];
    arrayOfFilter[0] = NearestNeighbour;
    arrayOfFilter[1] = BiLinear;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Pixmap.Filter
 * JD-Core Version:    0.6.2
 */