package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.util.Random;

public class MathUtils
{
  private static final int ATAN2_BITS = 7;
  private static final int ATAN2_BITS2 = 14;
  private static final int ATAN2_COUNT = 16384;
  static final int ATAN2_DIM = 0;
  private static final int ATAN2_MASK = 16383;
  private static final double BIG_ENOUGH_CEIL = 0.0D;
  private static final double BIG_ENOUGH_FLOOR = 16384.0D;
  private static final int BIG_ENOUGH_INT = 16384;
  private static final double BIG_ENOUGH_ROUND = 16384.5D;
  private static final double CEIL = 0.9999999000000001D;
  private static final float INV_ATAN2_DIM_MINUS_1 = 0.0F;
  public static final float PI = 3.141593F;
  private static final int SIN_BITS = 13;
  private static final int SIN_COUNT = 8192;
  private static final int SIN_MASK = 8191;
  private static final float degFull = 360.0F;
  public static final float degRad = 0.01745329F;
  private static final float degToIndex = 22.755556F;
  public static final float degreesToRadians = 0.01745329F;
  public static final float radDeg = 57.295776F;
  private static final float radFull = 6.283186F;
  private static final float radToIndex = 1303.7972F;
  public static final float radiansToDegrees = 57.295776F;
  public static Random random = new Random();

  public static final float atan2(float paramFloat1, float paramFloat2)
  {
    float f1 = -1.0F;
    float f3;
    float f2;
    float f5;
    float f4;
    if (paramFloat2 < 0.0F)
    {
      if (paramFloat1 < 0.0F)
      {
        paramFloat1 = -paramFloat1;
        f1 = 1.0F;
      }
      f3 = -paramFloat2;
      f2 = f1;
      f5 = -3.141593F;
      f4 = paramFloat1;
      if (f3 >= f4)
        break label118;
    }
    label118: for (float f6 = f4; ; f6 = f3)
    {
      float f7 = 1.0F / (f6 * INV_ATAN2_DIM_MINUS_1);
      int i = (int)(f3 * f7);
      int j = (int)(f7 * f4);
      return f2 * (f5 + MathUtils.Atan2.table[(i + j * ATAN2_DIM)]);
      if (paramFloat1 < 0.0F)
        paramFloat1 = -paramFloat1;
      while (true)
      {
        f2 = f1;
        f3 = paramFloat2;
        f4 = paramFloat1;
        f5 = 0.0F;
        break;
        f1 = 1.0F;
      }
    }
  }

  public static int ceil(float paramFloat)
  {
    return -16384 + (int)(paramFloat + BIG_ENOUGH_CEIL);
  }

  public static int ceilPositive(float paramFloat)
  {
    return (int)(0.9999999000000001D + paramFloat);
  }

  public static float clamp(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 < paramFloat2)
      return paramFloat2;
    if (paramFloat1 > paramFloat3)
      return paramFloat3;
    return paramFloat1;
  }

  public static int clamp(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2)
      return paramInt2;
    if (paramInt1 > paramInt3)
      return paramInt3;
    return paramInt1;
  }

  public static short clamp(short paramShort1, short paramShort2, short paramShort3)
  {
    if (paramShort1 < paramShort2)
      return paramShort2;
    if (paramShort1 > paramShort3)
      return paramShort3;
    return paramShort1;
  }

  public static final float cos(float paramFloat)
  {
    return MathUtils.Cos.table[(0x1FFF & (int)(1303.7972F * paramFloat))];
  }

  public static final float cosDeg(float paramFloat)
  {
    return MathUtils.Cos.table[(0x1FFF & (int)(22.755556F * paramFloat))];
  }

  public static int floor(float paramFloat)
  {
    return -16384 + (int)(16384.0D + paramFloat);
  }

  public static int floorPositive(float paramFloat)
  {
    return (int)paramFloat;
  }

  public static boolean isPowerOfTwo(int paramInt)
  {
    return (paramInt != 0) && ((paramInt & paramInt - 1) == 0);
  }

  public static int nextPowerOfTwo(int paramInt)
  {
    if (paramInt == 0)
      return 1;
    int i = paramInt - 1;
    int j = i | i >> 1;
    int k = j | j >> 2;
    int m = k | k >> 4;
    int n = m | m >> 8;
    return 1 + (n | n >> 16);
  }

  public static final float random()
  {
    return random.nextFloat();
  }

  public static final float random(float paramFloat)
  {
    return paramFloat * random.nextFloat();
  }

  public static final float random(float paramFloat1, float paramFloat2)
  {
    return paramFloat1 + random.nextFloat() * (paramFloat2 - paramFloat1);
  }

  public static final int random(int paramInt)
  {
    return random.nextInt(paramInt + 1);
  }

  public static final int random(int paramInt1, int paramInt2)
  {
    return paramInt1 + random.nextInt(1 + (paramInt2 - paramInt1));
  }

  public static final boolean randomBoolean()
  {
    return random.nextBoolean();
  }

  public static int round(float paramFloat)
  {
    return -16384 + (int)(16384.5D + paramFloat);
  }

  public static int roundPositive(float paramFloat)
  {
    return (int)(0.5F + paramFloat);
  }

  public static final float sin(float paramFloat)
  {
    return MathUtils.Sin.table[(0x1FFF & (int)(1303.7972F * paramFloat))];
  }

  public static final float sinDeg(float paramFloat)
  {
    return MathUtils.Sin.table[(0x1FFF & (int)(22.755556F * paramFloat))];
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.MathUtils
 * JD-Core Version:    0.6.2
 */