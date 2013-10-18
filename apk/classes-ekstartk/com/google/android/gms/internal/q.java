package com.google.android.gms.internal;

public final class q
{
  public static void a(StringBuilder paramStringBuilder, double[] paramArrayOfDouble)
  {
    int i = paramArrayOfDouble.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Double.toString(paramArrayOfDouble[j]));
    }
  }

  public static void a(StringBuilder paramStringBuilder, float[] paramArrayOfFloat)
  {
    int i = paramArrayOfFloat.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Float.toString(paramArrayOfFloat[j]));
    }
  }

  public static void a(StringBuilder paramStringBuilder, long[] paramArrayOfLong)
  {
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Long.toString(paramArrayOfLong[j]));
    }
  }

  public static <T> void a(StringBuilder paramStringBuilder, T[] paramArrayOfT)
  {
    int i = paramArrayOfT.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(paramArrayOfT[j].toString());
    }
  }

  public static void a(StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append("\"").append(paramArrayOfString[j]).append("\"");
    }
  }

  public static void a(StringBuilder paramStringBuilder, boolean[] paramArrayOfBoolean)
  {
    int i = paramArrayOfBoolean.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Boolean.toString(paramArrayOfBoolean[j]));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.q
 * JD-Core Version:    0.6.2
 */