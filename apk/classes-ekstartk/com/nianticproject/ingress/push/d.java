package com.nianticproject.ingress.push;

import android.content.Context;
import android.content.Intent;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.a.a.ag;
import com.google.a.a.an;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.common.s.c;

public final class d
{
  private static final Uri a = Uri.parse("android.resource://com.nianticproject.ingress/2131099649");
  private static final Uri b = new Uri.Builder().scheme("content").authority("com.nianticproject.ingress.content.NemesisProvider").appendPath("sound").appendPath("notifications").appendPath("empty").build();

  public static Uri a()
  {
    return Uri.parse(c.j(a.toString()));
  }

  public static void a(Uri paramUri)
  {
    boolean bool;
    if (!b.equals(paramUri))
    {
      bool = true;
      an.a(bool, "To store the 'silent' user choice for the notifications sound, use null instead of the SILENT Uri");
      if (paramUri == null)
        break label35;
    }
    while (true)
    {
      c.i(paramUri.toString());
      return;
      bool = false;
      break;
      label35: paramUri = b;
    }
  }

  public static Uri b()
  {
    Uri localUri = a();
    if (ag.a(b, localUri))
      localUri = null;
    return localUri;
  }

  public static boolean b(Uri paramUri)
  {
    return ag.a(b, paramUri);
  }

  public static String c()
  {
    NemesisApplication localNemesisApplication = NemesisApplication.a();
    Uri localUri = a();
    if (ag.a(a, localUri))
      return localNemesisApplication.getString(2131296433);
    if (ag.a(b, localUri))
      return localNemesisApplication.getString(2131296432);
    return RingtoneManager.getRingtone(localNemesisApplication, localUri).getTitle(localNemesisApplication);
  }

  public static Intent d()
  {
    Intent localIntent = new Intent("android.intent.action.RINGTONE_PICKER");
    localIntent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", a);
    localIntent.putExtra("android.intent.extra.ringtone.EXISTING_URI", b());
    localIntent.putExtra("android.intent.extra.ringtone.INCLUDE_DRM", false);
    localIntent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
    localIntent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", true);
    localIntent.putExtra("android.intent.extra.ringtone.TYPE", 2);
    return localIntent;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.push.d
 * JD-Core Version:    0.6.2
 */