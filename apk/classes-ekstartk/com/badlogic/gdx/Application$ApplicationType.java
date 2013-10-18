package com.badlogic.gdx;

public enum Application$ApplicationType
{
  static
  {
    Applet = new ApplicationType("Applet", 2);
    WebGL = new ApplicationType("WebGL", 3);
    iOS = new ApplicationType("iOS", 4);
    ApplicationType[] arrayOfApplicationType = new ApplicationType[5];
    arrayOfApplicationType[0] = Android;
    arrayOfApplicationType[1] = Desktop;
    arrayOfApplicationType[2] = Applet;
    arrayOfApplicationType[3] = WebGL;
    arrayOfApplicationType[4] = iOS;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Application.ApplicationType
 * JD-Core Version:    0.6.2
 */