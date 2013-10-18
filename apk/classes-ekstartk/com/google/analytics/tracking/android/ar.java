package com.google.analytics.tracking.android;

import java.util.HashMap;
import java.util.Map;

final class ar
{
  private Map<String, at> a = new HashMap();

  final at a(String paramString)
  {
    if (paramString.startsWith("&"))
      return new at(paramString.substring(1), null, null);
    if (paramString.contains("*"))
      paramString = paramString.substring(0, paramString.indexOf("*"));
    return (at)this.a.get(paramString);
  }

  public final void a(String paramString1, String paramString2, String paramString3, as paramas)
  {
    this.a.put(paramString1, new at(paramString2, paramString3, paramas));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ar
 * JD-Core Version:    0.6.2
 */