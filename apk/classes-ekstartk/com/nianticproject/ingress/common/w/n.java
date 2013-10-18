package com.nianticproject.ingress.common.w;

public final class n
{
  public static String a(double paramDouble)
  {
    if ((int)Math.signum(paramDouble) < 0);
    double d1;
    o localo;
    for (String str1 = "-"; ; str1 = "")
    {
      d1 = Math.abs(paramDouble);
      localo = o.a(d1);
      if (localo != null)
        break;
      return "0";
    }
    double d2 = d1 / localo.j;
    int i = localo.l;
    StringBuilder localStringBuilder = new StringBuilder("%s%.");
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    String str2 = String.format("%d", arrayOfObject1) + "f%s";
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = str1;
    arrayOfObject2[1] = Double.valueOf(d2);
    arrayOfObject2[2] = localo.k;
    return String.format(str2, arrayOfObject2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.n
 * JD-Core Version:    0.6.2
 */