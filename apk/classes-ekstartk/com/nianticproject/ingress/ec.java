package com.nianticproject.ingress;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.location.Location;
import android.os.Looper;
import android.widget.ImageView;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.y;
import com.nianticproject.ingress.o.a.b;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;
import java.util.List;
import java.util.Locale;

public class ec
{
  public static final String a = g() + ".UPDATE_UI";
  public static final String b = g() + ".NOTIFIED";

  public static int a(Context paramContext)
  {
    return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
  }

  public static String a()
  {
    return b.b.a();
  }

  public static void a(Context paramContext, ImageView paramImageView, Bitmap paramBitmap)
  {
    Drawable localDrawable1 = paramImageView.getDrawable();
    Drawable localDrawable2;
    if (localDrawable1 == null)
    {
      paramImageView.setImageResource(2130837652);
      localDrawable2 = paramImageView.getDrawable();
    }
    while (true)
    {
      if (paramBitmap != null);
      for (Object localObject = new BitmapDrawable(paramContext.getResources(), paramBitmap); ; localObject = paramContext.getResources().getDrawable(2130837652))
      {
        TransitionDrawable localTransitionDrawable = new TransitionDrawable(new Drawable[] { localDrawable2, localObject });
        paramImageView.setImageDrawable(localTransitionDrawable);
        localTransitionDrawable.setCrossFadeEnabled(true);
        localTransitionDrawable.startTransition(500);
        return;
        if (!(localDrawable1 instanceof TransitionDrawable))
          break label117;
        localDrawable2 = ((TransitionDrawable)localDrawable1).getDrawable(1);
        break;
      }
      label117: localDrawable2 = localDrawable1;
    }
  }

  public static void a(String paramString)
  {
    if (!f())
      throw new IllegalStateException(paramString + " may only be called from the UI thread");
  }

  public static boolean a(Context paramContext, Intent paramIntent)
  {
    List localList = paramContext.getPackageManager().queryIntentActivities(paramIntent, 65536);
    return (localList != null) && (!localList.isEmpty());
  }

  public static Location b()
  {
    y localy = c.f();
    if (localy.e == 0L)
      return null;
    String str = localy.a;
    int i = localy.b;
    int j = localy.c;
    double d1 = i / 1000000.0D;
    double d2 = j / 1000000.0D;
    Location localLocation = new Location(str);
    localLocation.setLatitude(d1);
    localLocation.setLongitude(d2);
    localLocation.setAccuracy(localy.d);
    localLocation.setTime(localy.e);
    return localLocation;
  }

  public static String b(Context paramContext)
  {
    new StringBuilder();
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }

  public static String c(Context paramContext)
  {
    return "v" + b(paramContext) + " 2013-10-07T21:02:13Z a7cb9f5402e7 opt";
  }

  public static final boolean c()
  {
    return (ag.a == ah.c) || (ag.a == ah.b);
  }

  public static final boolean d()
  {
    return ag.a == ah.a;
  }

  public static final boolean e()
  {
    return b.b.a().toLowerCase(Locale.US).contains("betaspike");
  }

  public static boolean f()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }

  private static String g()
  {
    return ec.class.getPackage().getName();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ec
 * JD-Core Version:    0.6.2
 */