package com.badlogic.gdx.math;

class MathUtils$Atan2
{
  static final float[] table = new float[16384];

  static
  {
    for (int i = 0; i < MathUtils.ATAN2_DIM; i++)
      for (int j = 0; j < MathUtils.ATAN2_DIM; j++)
      {
        float f1 = i / MathUtils.ATAN2_DIM;
        float f2 = j / MathUtils.ATAN2_DIM;
        table[(i + j * MathUtils.ATAN2_DIM)] = ((float)Math.atan2(f2, f1));
      }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.MathUtils.Atan2
 * JD-Core Version:    0.6.2
 */