package com.nianticproject.ingress.common.ui.elements;

public class Compass$CompassStyle
{
  public float heightInDips;
  public float widthInDips;
  public float xRelativeToScreenWidth;
  public float yRelativeToScreenHeight;

  public Compass$CompassStyle()
  {
  }

  public Compass$CompassStyle(CompassStyle paramCompassStyle)
  {
    this.xRelativeToScreenWidth = paramCompassStyle.xRelativeToScreenWidth;
    this.yRelativeToScreenHeight = paramCompassStyle.yRelativeToScreenHeight;
    this.widthInDips = paramCompassStyle.widthInDips;
    this.heightInDips = paramCompassStyle.heightInDips;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.Compass.CompassStyle
 * JD-Core Version:    0.6.2
 */