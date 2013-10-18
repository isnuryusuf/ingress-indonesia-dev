package com.google.a.a;

public final class br
{
  public static String a(String paramString)
  {
    if (paramString == null)
      paramString = "";
    return paramString;
  }

  public static String a(String paramString, int paramInt)
  {
    an.a(paramString);
    if (paramInt <= 1)
    {
      if (paramInt >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        an.a(bool, "invalid count: %s", arrayOfObject);
        if (paramInt == 0)
          paramString = "";
        return paramString;
      }
    }
    int i = paramString.length();
    long l = i * paramInt;
    int j = (int)l;
    if (j != l)
      throw new ArrayIndexOutOfBoundsException("Required array size too large: " + String.valueOf(l));
    char[] arrayOfChar = new char[j];
    paramString.getChars(0, i, arrayOfChar, 0);
    while (i < j - i)
    {
      System.arraycopy(arrayOfChar, 0, arrayOfChar, i, i);
      i <<= 1;
    }
    System.arraycopy(arrayOfChar, 0, arrayOfChar, i, j - i);
    return new String(arrayOfChar);
  }

  public static boolean b(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  public static String c(String paramString)
  {
    an.a(paramString);
    if (paramString.length() >= 16)
      return paramString;
    StringBuilder localStringBuilder = new StringBuilder(16);
    for (int i = paramString.length(); i < 16; i++)
      localStringBuilder.append('0');
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.br
 * JD-Core Version:    0.6.2
 */