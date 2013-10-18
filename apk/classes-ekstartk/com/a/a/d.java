package com.a.a;

public abstract class d<C, T extends C, L extends a>
{
  public static d instance;

  public abstract void addChild(C paramC1, C paramC2);

  public abstract void addDebugRectangle(L paramL, b paramb, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  public abstract void clearDebugRectangles(L paramL);

  public abstract float getHeight(C paramC);

  public abstract float getMaxHeight(C paramC);

  public abstract float getMaxWidth(C paramC);

  public abstract float getMinHeight(C paramC);

  public abstract float getMinWidth(C paramC);

  public abstract float getPrefHeight(C paramC);

  public abstract float getPrefWidth(C paramC);

  public abstract float getWidth(C paramC);

  public float height(float paramFloat)
  {
    return paramFloat;
  }

  public abstract void removeChild(C paramC1, C paramC2);

  public void setWidget(L paramL, c paramc, C paramC)
  {
    removeChild(paramL.table, paramc.x);
    paramc.x = paramC;
    addChild(paramL.table, paramC);
  }

  public float width(float paramFloat)
  {
    return paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.a.a.d
 * JD-Core Version:    0.6.2
 */