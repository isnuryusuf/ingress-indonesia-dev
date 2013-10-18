package com.badlogic.gdx.math;

class MathUtils$Cos
{
  static final float[] table = new float[8192];

  static
  {
    int j;
    for (int i = 0; ; i++)
    {
      j = 0;
      if (i >= 8192)
        break;
      table[i] = ((float)Math.cos(6.283186F * ((0.5F + i) / 8192.0F)));
    }
    while (j < 360)
    {
      table[(0x1FFF & (int)(22.755556F * j))] = ((float)Math.cos(0.01745329F * j));
      j += 90;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.MathUtils.Cos
 * JD-Core Version:    0.6.2
 */