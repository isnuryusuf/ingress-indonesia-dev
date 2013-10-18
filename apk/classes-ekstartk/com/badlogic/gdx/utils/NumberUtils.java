package com.badlogic.gdx.utils;

public class NumberUtils
{
  public static long doubleToLongBits(double paramDouble)
  {
    return Double.doubleToLongBits(paramDouble);
  }

  public static int floatToIntBits(float paramFloat)
  {
    return Float.floatToIntBits(paramFloat);
  }

  public static int floatToIntColor(float paramFloat)
  {
    return Float.floatToRawIntBits(paramFloat);
  }

  public static int floatToRawIntBits(float paramFloat)
  {
    return Float.floatToRawIntBits(paramFloat);
  }

  public static float intBitsToFloat(int paramInt)
  {
    return Float.intBitsToFloat(paramInt);
  }

  public static float intToFloatColor(int paramInt)
  {
    return Float.intBitsToFloat(0xFEFFFFFF & paramInt);
  }

  public static double longBitsToDouble(long paramLong)
  {
    return Double.longBitsToDouble(paramLong);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.NumberUtils
 * JD-Core Version:    0.6.2
 */