package com.google.a.a;

public final class e
{
  public static String a(String paramString)
  {
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    int j = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      if ((c >= 'A') && (c <= 'Z'));
      for (int k = 1; ; k = 0)
      {
        if (k != 0)
          c = (char)(c ^ 0x20);
        localStringBuilder.append(c);
        j++;
        break;
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.e
 * JD-Core Version:    0.6.2
 */