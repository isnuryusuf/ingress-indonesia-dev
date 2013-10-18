package com.nianticproject.ingress.curation;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.o.a;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

public final class b
{
  private static final Random a = new Random(System.currentTimeMillis());

  public static Intent a()
  {
    Intent localIntent = new Intent("android.settings.SYNC_SETTINGS");
    localIntent.putExtra("authorities", new String[] { "com.nianticproject.ingress.content.NemesisProvider" });
    return localIntent;
  }

  private static c a(Context paramContext, PortalCurationTask paramPortalCurationTask, Account paramAccount)
  {
    if (!ContentResolver.getMasterSyncAutomatically())
      return c.c;
    if (!ContentResolver.getSyncAutomatically(paramAccount, "com.nianticproject.ingress.content.NemesisProvider"))
      ContentResolver.setSyncAutomatically(paramAccount, "com.nianticproject.ingress.content.NemesisProvider", true);
    NemesisService.a(paramContext, paramPortalCurationTask);
    return c.b;
  }

  public static c a(Context paramContext, String paramString1, String paramString2, Account paramAccount)
  {
    boolean bool1 = true;
    boolean bool2;
    if (!TextUtils.isEmpty(paramString1))
    {
      bool2 = bool1;
      an.a(bool2, "The portal GUID must not be empty!");
      if (TextUtils.isEmpty(paramString2))
        break label74;
    }
    while (true)
    {
      an.a(bool1, "Reason must be non-empty!");
      if ((!q.c().d()) || (!a.b()))
        break label80;
      return a(paramContext, PortalCurationTask.a(b(), paramString1, paramString2, paramAccount.name), paramAccount);
      bool2 = false;
      break;
      label74: bool1 = false;
    }
    label80: return null;
  }

  public static c a(Context paramContext, String paramString1, String paramString2, u paramu, Uri paramUri, Account paramAccount)
  {
    an.a(paramu, "Location must never be null!");
    if (!TextUtils.isEmpty(paramString1));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Title must never be null or empty!");
      an.a(paramUri, "A photo must be provided when submitting a new portal!");
      if ((!q.c().d()) || (!a.b()) || (!com.nianticproject.ingress.common.s.c.u()))
        break;
      return a(paramContext, PortalCurationTask.a(b(), null, paramString1, paramString2, paramu, paramUri, paramAccount.name), paramAccount);
    }
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("plain/text");
    localIntent.setFlags(268435456);
    localIntent.putExtra("android.intent.extra.EMAIL", new String[] { "super-ops@google.com" });
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString1);
    localIntent.putExtra("android.intent.extra.STREAM", paramUri);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("lat=").append(paramu.c()).append("\n");
    localStringBuilder.append("lng=").append(paramu.f()).append("\n");
    if (!TextUtils.isEmpty(paramString2))
    {
      localStringBuilder.append("desc=");
      localStringBuilder.append(paramString2);
      localStringBuilder.append("\n");
    }
    localIntent.putExtra("android.intent.extra.TEXT", localStringBuilder.toString());
    paramContext.startActivity(localIntent);
    return c.a;
  }

  public static c a(Context paramContext, String paramString1, String paramString2, String paramString3, u paramu, Uri paramUri, Account paramAccount)
  {
    if (!TextUtils.isEmpty(paramString1));
    for (boolean bool1 = true; ; bool1 = false)
    {
      an.a(bool1, "The portal GUID must not be empty!");
      boolean bool2;
      if ((TextUtils.isEmpty(paramString2)) && (TextUtils.isEmpty(paramString3)) && (paramu == null))
      {
        bool2 = false;
        if (paramUri == null);
      }
      else
      {
        bool2 = true;
      }
      an.a(bool2, "At least one field must be non-empty!");
      an.a(paramAccount);
      if ((!q.c().d()) || (!a.b()))
        break;
      return a(paramContext, PortalCurationTask.a(b(), paramString1, paramString2, paramString3, paramu, paramUri, paramAccount.name), paramAccount);
    }
    return null;
  }

  private static String b()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy_MM_dd_HH:mm:ss.SSSZ", Locale.US);
    return Long.toString(a.nextLong()) + "_" + localSimpleDateFormat.format(new Date());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.curation.b
 * JD-Core Version:    0.6.2
 */