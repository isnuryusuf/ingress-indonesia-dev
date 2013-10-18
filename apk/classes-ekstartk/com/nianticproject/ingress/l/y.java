package com.nianticproject.ingress.l;

import android.location.Location;
import android.os.Bundle;

 enum y
{
  static
  {
    y[] arrayOfy = new y[6];
    arrayOfy[0] = a;
    arrayOfy[1] = b;
    arrayOfy[2] = c;
    arrayOfy[3] = d;
    arrayOfy[4] = e;
    arrayOfy[5] = f;
  }

  static y a(String paramString)
  {
    if ("fused".equals(paramString))
      return a;
    if ("gps".equals(paramString))
      return c;
    if (f.b.equals(paramString))
      return d;
    if (f.a.equals(paramString))
      return e;
    if ("particle-filter".equals(paramString))
      return b;
    return f;
  }

  static String a(Location paramLocation)
  {
    String str = paramLocation.getProvider();
    Bundle localBundle = paramLocation.getExtras();
    if (("network".equals(str)) && (localBundle != null) && (localBundle.containsKey("networkLocationType")))
      str = a(str, localBundle.getString("networkLocationType"));
    return str;
  }

  static String a(String paramString1, String paramString2)
  {
    return paramString1 + "-" + paramString2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.y
 * JD-Core Version:    0.6.2
 */