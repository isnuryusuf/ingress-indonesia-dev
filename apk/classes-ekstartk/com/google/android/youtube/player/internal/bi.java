package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;

public final class bi
{
  private static final Uri a = Uri.parse("http://play.google.com/store/apps/details");

  public static int a(Context paramContext1, Context paramContext2)
  {
    int i = 0;
    if (paramContext2 != null)
      i = paramContext2.getResources().getIdentifier("clientTheme", "style", a(paramContext1));
    if (i == 0)
    {
      if (Build.VERSION.SDK_INT >= 14)
        i = 16974120;
    }
    else
      return i;
    if (Build.VERSION.SDK_INT >= 11)
      return 16973931;
    return 16973829;
  }

  public static Intent a(String paramString)
  {
    Uri localUri = Uri.fromParts("package", paramString, null);
    Intent localIntent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    localIntent.setData(localUri);
    return localIntent;
  }

  public static String a(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.android.youtube.api.service.START");
    PackageManager localPackageManager = paramContext.getPackageManager();
    ResolveInfo localResolveInfo = localPackageManager.resolveService(localIntent, 0);
    if ((localResolveInfo != null) && (localResolveInfo.serviceInfo != null) && (localResolveInfo.serviceInfo.packageName != null))
      return localResolveInfo.serviceInfo.packageName;
    if (localPackageManager.hasSystemFeature("com.google.android.tv"))
      return "com.google.android.youtube.googletv";
    return "com.google.android.youtube";
  }

  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      Resources localResources = paramContext.getPackageManager().getResourcesForApplication(paramString);
      if (paramString.equals("com.google.android.youtube.googletvdev"))
        paramString = "com.google.android.youtube.googletv";
      int i = localResources.getIdentifier("youtube_api_version_code", "integer", paramString);
      if (i == 0);
      while (1000 > localResources.getInteger(i))
        return true;
      return false;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return true;
  }

  public static Context b(Context paramContext)
  {
    try
    {
      Context localContext = paramContext.createPackageContext(a(paramContext), 3);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }

  public static Intent b(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(a.buildUpon().appendQueryParameter("id", paramString).build());
    localIntent.setPackage("com.android.vending");
    localIntent.addFlags(524288);
    return localIntent;
  }

  public static int c(Context paramContext)
  {
    return a(paramContext, b(paramContext));
  }

  public static String d(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new IllegalStateException("Cannot retrieve calling Context's PackageInfo", localNameNotFoundException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.bi
 * JD-Core Version:    0.6.2
 */