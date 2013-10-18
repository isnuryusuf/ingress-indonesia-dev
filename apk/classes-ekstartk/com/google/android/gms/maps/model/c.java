package com.google.android.gms.maps.model;

public final class c
{
  private LatLng a;
  private float b;
  private float c;
  private float d;

  public final CameraPosition a()
  {
    return new CameraPosition(this.a, this.b, this.c, this.d);
  }

  public final c a(float paramFloat)
  {
    this.b = paramFloat;
    return this;
  }

  public final c a(LatLng paramLatLng)
  {
    this.a = paramLatLng;
    return this;
  }

  public final c b(float paramFloat)
  {
    this.c = paramFloat;
    return this;
  }

  public final c c(float paramFloat)
  {
    this.d = paramFloat;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.c
 * JD-Core Version:    0.6.2
 */