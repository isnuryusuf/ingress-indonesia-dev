package com.a.a;

final class k extends n
{
  public final float a(c paramc)
  {
    if (paramc == null)
      throw new RuntimeException("maxHeight can only be set on a cell property.");
    Object localObject = paramc.x;
    if (localObject == null)
      return 0.0F;
    return d.instance.getMaxHeight(localObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.a.a.k
 * JD-Core Version:    0.6.2
 */