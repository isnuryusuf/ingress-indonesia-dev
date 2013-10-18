package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.Locale;
import java.util.Map;

public final class al
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  public final String i;
  public final String j;

  public al(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    if ((localResources != null) && (localResources.getConfiguration() != null) && (localResources.getConfiguration().locale != null));
    for (Locale localLocale = localResources.getConfiguration().locale; ; localLocale = Locale.getDefault())
    {
      Map localMap = bh.a(localLocale);
      this.a = ((String)localMap.get("error_initializing_player"));
      this.b = ((String)localMap.get("get_youtube_app_title"));
      this.c = ((String)localMap.get("get_youtube_app_text"));
      this.d = ((String)localMap.get("get_youtube_app_action"));
      this.e = ((String)localMap.get("enable_youtube_app_title"));
      this.f = ((String)localMap.get("enable_youtube_app_text"));
      this.g = ((String)localMap.get("enable_youtube_app_action"));
      this.h = ((String)localMap.get("update_youtube_app_title"));
      this.i = ((String)localMap.get("update_youtube_app_text"));
      this.j = ((String)localMap.get("update_youtube_app_action"));
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.al
 * JD-Core Version:    0.6.2
 */