package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;

public final class fu
{
  private static final Uri a = localUri;
  private static final Uri b = localUri.buildUpon().appendPath("circles").appendPath("find").build();

  static
  {
    Uri localUri = Uri.parse("http://plus.google.com/");
  }

  public static Intent a(String paramString)
  {
    Uri localUri = Uri.fromParts("package", paramString, null);
    Intent localIntent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    localIntent.setData(localUri);
    return localIntent;
  }

  public static Intent b(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("market://details").buildUpon().appendQueryParameter("id", paramString).build());
    localIntent.setPackage("com.android.vending");
    localIntent.addFlags(524288);
    return localIntent;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fu
 * JD-Core Version:    0.6.2
 */