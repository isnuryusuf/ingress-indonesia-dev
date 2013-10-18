package com.google.analytics.tracking.android;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

final class ao
{
  static String a(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError("URL encoding failed for: " + paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ao
 * JD-Core Version:    0.6.2
 */