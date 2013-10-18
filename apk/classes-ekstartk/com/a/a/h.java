package com.a.a;

final class h extends n
{
  public final float a(c paramc)
  {
    if (paramc == null)
      throw new RuntimeException("prefWidth can only be set on a cell property.");
    Object localObject = paramc.x;
    if (localObject == null)
      return 0.0F;
    return d.instance.getPrefWidth(localObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.a.a.h
 * JD-Core Version:    0.6.2
 */