package com.nianticproject.ingress.common.v;

public final class c
{
  public final int a;
  public final String b;
  public final String c;
  public final boolean d;

  private c(int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    this.a = paramInt;
    this.b = a(paramString1);
    this.c = a(paramString2);
    this.d = paramBoolean;
  }

  public c(int paramInt, String paramString, boolean paramBoolean)
  {
    this(paramInt, paramString, paramString, paramBoolean);
  }

  private static String a(String paramString)
  {
    String[] arrayOfString = paramString.split(" ");
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    int i = arrayOfString.length;
    StringBuilder localStringBuilder3 = localStringBuilder1;
    for (int j = 0; j < i; j++)
    {
      String str = arrayOfString[j];
      if (localStringBuilder3.length() + str.length() > 26)
      {
        localStringBuilder2.append(localStringBuilder3).append("\n");
        localStringBuilder3 = new StringBuilder();
      }
      localStringBuilder3.append(" ").append(str);
    }
    localStringBuilder2.append(localStringBuilder3);
    return localStringBuilder2.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v.c
 * JD-Core Version:    0.6.2
 */