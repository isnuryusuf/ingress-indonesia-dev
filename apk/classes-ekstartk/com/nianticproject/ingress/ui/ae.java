package com.nianticproject.ingress.ui;

import com.nianticproject.ingress.NemesisApplication;

public enum ae
{
  public final int e;

  static
  {
    ae[] arrayOfae = new ae[4];
    arrayOfae[0] = a;
    arrayOfae[1] = b;
    arrayOfae[2] = c;
    arrayOfae[3] = d;
  }

  private ae(int paramInt)
  {
    this.e = paramInt;
  }

  public final String toString()
  {
    return NemesisApplication.a().getString(this.e);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.ae
 * JD-Core Version:    0.6.2
 */