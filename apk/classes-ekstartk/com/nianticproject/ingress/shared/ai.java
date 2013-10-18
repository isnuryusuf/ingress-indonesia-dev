package com.nianticproject.ingress.shared;

public enum ai
{
  private String d;

  static
  {
    ai[] arrayOfai = new ai[3];
    arrayOfai[0] = a;
    arrayOfai[1] = b;
    arrayOfai[2] = c;
  }

  private ai(String paramString)
  {
    this.d = paramString;
  }

  public static ai a(String paramString)
  {
    try
    {
      ai localai = valueOf(paramString);
      return localai;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return c;
    }
    catch (NullPointerException localNullPointerException)
    {
      label8: break label8;
    }
  }

  public final String a()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.ai
 * JD-Core Version:    0.6.2
 */