package com.google.android.a.a.a.a;

import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class k
{
  static boolean a = false;

  public static String a()
  {
    return System.getProperty("http.agent");
  }

  public static String a(String paramString, Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString).append("?");
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2 = (String)paramMap.get(str1);
      localStringBuilder.append(str1).append("=").append(str2).append("&");
    }
    if (localStringBuilder.charAt(-1 + localStringBuilder.length()) == '&')
      localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
    return localStringBuilder.toString();
  }

  static void a(String paramString1, String paramString2)
  {
    if ((!a) && (Log.isLoggable(paramString1, 6)))
      Log.e(paramString1, paramString2);
  }

  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  static void b(String paramString)
  {
    if (!a)
      Log.isLoggable(paramString, 3);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.a.a.a.k
 * JD-Core Version:    0.6.2
 */