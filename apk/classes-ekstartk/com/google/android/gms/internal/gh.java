package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;

public final class gh
{
  private static final Uri a = new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("drawable").build();

  public static Uri a(String paramString)
  {
    gg.a(paramString, "Resource name must not be null.");
    return a.buildUpon().appendPath(paramString).build();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gh
 * JD-Core Version:    0.6.2
 */