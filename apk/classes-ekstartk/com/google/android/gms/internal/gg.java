package com.google.android.gms.internal;

public final class gg
{
  public static <T> T a(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException("null reference");
    return paramT;
  }

  public static <T> T a(T paramT, Object paramObject)
  {
    if (paramT == null)
      throw new NullPointerException(String.valueOf(paramObject));
    return paramT;
  }

  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalStateException();
  }

  public static void a(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean)
      throw new IllegalStateException(String.valueOf(paramObject));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gg
 * JD-Core Version:    0.6.2
 */