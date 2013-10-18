package com.google.analytics.tracking.android;

public final class at
{
  private final String a;
  private final String b;
  private final as c;

  public at(String paramString1, String paramString2, as paramas)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramas;
  }

  public final String a()
  {
    return this.b;
  }

  public final String a(String paramString)
  {
    if (paramString.contains("*"))
    {
      String str1 = this.a;
      String[] arrayOfString = paramString.split("\\*");
      int i = arrayOfString.length;
      String str2 = null;
      if (i > 1);
      try
      {
        int j = Integer.parseInt(arrayOfString[1]);
        str2 = str1 + j;
        return str2;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aq.f("Unable to parse slot for url parameter " + str1);
        return null;
      }
    }
    return this.a;
  }

  public final as b()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.at
 * JD-Core Version:    0.6.2
 */