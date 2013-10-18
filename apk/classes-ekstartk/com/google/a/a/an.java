package com.google.a.a;

public final class an
{
  public static int a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 >= paramInt2))
    {
      Object[] arrayOfObject2;
      if (paramInt1 < 0)
      {
        arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = "index";
        arrayOfObject2[1] = Integer.valueOf(paramInt1);
      }
      Object[] arrayOfObject1;
      for (String str = a("%s (%s) must not be negative", arrayOfObject2); ; str = a("%s (%s) must be less than size (%s)", arrayOfObject1))
      {
        throw new IndexOutOfBoundsException(str);
        if (paramInt2 < 0)
          throw new IllegalArgumentException("negative size: " + paramInt2);
        arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = "index";
        arrayOfObject1[1] = Integer.valueOf(paramInt1);
        arrayOfObject1[2] = Integer.valueOf(paramInt2);
      }
    }
    return paramInt1;
  }

  public static <T> T a(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    return paramT;
  }

  public static <T> T a(T paramT, Object paramObject)
  {
    if (paramT == null)
      throw new NullPointerException(String.valueOf(paramObject));
    return paramT;
  }

  public static <T> T a(T paramT, String paramString, Object[] paramArrayOfObject)
  {
    if (paramT == null)
      throw new NullPointerException(a(paramString, paramArrayOfObject));
    return paramT;
  }

  private static String a(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt1 < 0)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = Integer.valueOf(paramInt1);
      return a("%s (%s) must not be negative", arrayOfObject2);
    }
    if (paramInt2 < 0)
      throw new IllegalArgumentException("negative size: " + paramInt2);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramString;
    arrayOfObject1[1] = Integer.valueOf(paramInt1);
    arrayOfObject1[2] = Integer.valueOf(paramInt2);
    return a("%s (%s) must not be greater than size (%s)", arrayOfObject1);
  }

  private static String a(String paramString, Object[] paramArrayOfObject)
  {
    int i = 0;
    String str = String.valueOf(paramString);
    StringBuilder localStringBuilder = new StringBuilder(str.length() + 16 * paramArrayOfObject.length);
    int j = 0;
    while (i < paramArrayOfObject.length)
    {
      int i1 = str.indexOf("%s", j);
      if (i1 == -1)
        break;
      localStringBuilder.append(str.substring(j, i1));
      int i2 = i + 1;
      localStringBuilder.append(paramArrayOfObject[i]);
      j = i1 + 2;
      i = i2;
    }
    localStringBuilder.append(str.substring(j));
    if (i < paramArrayOfObject.length)
    {
      localStringBuilder.append(" [");
      int k = i + 1;
      localStringBuilder.append(paramArrayOfObject[i]);
      int n;
      for (int m = k; m < paramArrayOfObject.length; m = n)
      {
        localStringBuilder.append(", ");
        n = m + 1;
        localStringBuilder.append(paramArrayOfObject[m]);
      }
      localStringBuilder.append(']');
    }
    return localStringBuilder.toString();
  }

  public static void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < 0) || (paramInt2 < paramInt1) || (paramInt2 > paramInt3))
    {
      String str;
      if ((paramInt1 < 0) || (paramInt1 > paramInt3))
        str = a(paramInt1, paramInt3, "start index");
      while (true)
      {
        throw new IndexOutOfBoundsException(str);
        if ((paramInt2 < 0) || (paramInt2 > paramInt3))
        {
          str = a(paramInt2, paramInt3, "end index");
        }
        else
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(paramInt2);
          arrayOfObject[1] = Integer.valueOf(paramInt1);
          str = a("end index (%s) must not be less than start index (%s)", arrayOfObject);
        }
      }
    }
  }

  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException();
  }

  public static void a(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException(String.valueOf(paramObject));
  }

  public static void a(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException(a(paramString, paramArrayOfObject));
  }

  public static int b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 > paramInt2))
      throw new IndexOutOfBoundsException(a(paramInt1, paramInt2, "index"));
    return paramInt1;
  }

  public static void b(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalStateException();
  }

  public static void b(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean)
      throw new IllegalStateException(String.valueOf(paramObject));
  }

  public static void b(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (!paramBoolean)
      throw new IllegalStateException(a(paramString, paramArrayOfObject));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.an
 * JD-Core Version:    0.6.2
 */