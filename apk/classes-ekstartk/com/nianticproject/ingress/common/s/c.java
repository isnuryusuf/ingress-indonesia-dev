package com.nianticproject.ingress.common.s;

import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.c.h;
import com.nianticproject.ingress.common.y;
import com.nianticproject.ingress.gameentity.components.FactionChoiceHint;
import com.nianticproject.ingress.gameentity.components.SimpleFactionChoiceHint;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.ai;
import java.util.Map;

public class c
{
  private static c a;
  private static boolean b = false;
  private static String[] c = { "account_status", "location_provider", "location_latitude", "location_longitude", "location_accuracy", "location_time", "accountEmail", "player_nickname", "guidsPending", "energyPending", "last_play_time", "handshake_complete", "training_portal_lat_degrees", "training_portal_lng_degrees", "second_training_portal_lat_degrees", "second_training_portal_lng_degrees", "game_intro_has_played", "mission_complete_0", "mission_complete_1", "mission_complete_2", "mission_complete_3", "mission_complete_4", "mission_complete_5", "mission_complete_6", "mission_complete_7", "all_missions_complete_announcement_made", "hack_real_portal_mission_in_progress", "inviter_guid", "inviter_team_name", "invites_last_count", "invites_last_nag", "time_nickname_click_helper_shown" };
  private static final Object e = new Object();
  private static long f = 86400000L;
  private final e d;

  private c(e parame)
  {
    this.d = ((e)an.a(parame));
  }

  public static h a(com.nianticproject.ingress.common.c.g paramg)
  {
    return h.valueOf(a.d.b(b(paramg), h.d.name()));
  }

  @Deprecated
  public static e a()
  {
    return a.d;
  }

  public static void a(int paramInt)
  {
    a.d.a("invites_last_count", paramInt);
  }

  public static void a(long paramLong)
  {
    a.d.a("gmmProtoCookie", paramLong);
  }

  public static void a(com.nianticproject.ingress.common.c.g paramg, h paramh)
  {
    a.d.a(b(paramg), paramh.name());
  }

  public static void a(com.nianticproject.ingress.common.g paramg)
  {
    b localb = new b();
    try
    {
      localb.a("guidsPending", paramg.b);
      localb.a("energyPending", paramg.a);
      return;
    }
    finally
    {
      a.d.a(localb);
    }
  }

  public static void a(a parama)
  {
    while (true)
    {
      synchronized (e)
      {
        b localb = new b();
        if (parama != null)
          try
          {
            str = parama.a;
            localb.a("authCookie", str);
            if (parama == null)
              break label95;
            l = parama.b;
            localb.a("authCookieExpiry", l);
            a.d.a(localb);
            return;
          }
          finally
          {
            a.d.a(localb);
          }
      }
      String str = null;
      continue;
      label95: long l = 0L;
    }
  }

  public static void a(e parame)
  {
    try
    {
      if ((a == null) && (!b));
      for (boolean bool = true; ; bool = false)
      {
        an.a(bool, "Cannot initialize NemesisPreferences more than once!");
        a = new c((e)an.a(parame));
        return;
      }
    }
    finally
    {
    }
  }

  public static void a(y paramy)
  {
    b localb = new b();
    try
    {
      localb.a("location_provider", paramy.a);
      localb.a("location_latitude", paramy.b);
      localb.a("location_longitude", paramy.c);
      localb.a("location_accuracy", paramy.d);
      localb.a("location_time", paramy.e);
      return;
    }
    finally
    {
      a.d.a(localb);
    }
  }

  public static void a(FactionChoiceHint paramFactionChoiceHint)
  {
    String str2;
    String str1;
    if (paramFactionChoiceHint != null)
    {
      str2 = paramFactionChoiceHint.getInviterGuid();
      str1 = paramFactionChoiceHint.getTeamHint().name();
    }
    while (true)
    {
      b localb = new b();
      try
      {
        localb.a("inviter_guid", str2);
        localb.a("inviter_team_name", str1);
        return;
        str1 = null;
        str2 = null;
      }
      finally
      {
        a.d.a(localb);
      }
    }
  }

  public static void a(l paraml)
  {
    a.d.a("last_selected_mod_rarity", paraml.name());
  }

  public static void a(af paramaf)
  {
    a.d.a("last_selected_mod_type", paramaf.name());
  }

  public static void a(String paramString)
  {
    a.d.a("accountEmail", paramString);
  }

  public static void a(boolean paramBoolean)
  {
    a.d.a("enable_profiling", paramBoolean);
  }

  public static l b(l paraml)
  {
    return l.a(a.d.b("last_selected_mod_rarity", paraml.name()));
  }

  public static af b(af paramaf)
  {
    return af.a(a.d.b("last_selected_mod_type", paramaf.name()));
  }

  private static String b(com.nianticproject.ingress.common.c.g paramg)
  {
    switch (d.a[paramg.ordinal()])
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      return "volume_background";
    case 2:
      return "volume_effects";
    case 3:
    }
    return "volume_speech";
  }

  public static String b(String paramString)
  {
    return a.d.b("accountEmail", paramString);
  }

  public static void b()
  {
    b localb = new b();
    try
    {
      String[] arrayOfString = c;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localb.a(arrayOfString[j]);
      return;
    }
    finally
    {
      a.d.a(localb);
    }
  }

  public static void b(int paramInt)
  {
    a.d.a("last_selected_resonator_level", paramInt);
  }

  public static void b(long paramLong)
  {
    a.d.a("last_play_time", paramLong);
  }

  public static void b(boolean paramBoolean)
  {
    a.d.a("orient_to_compass_enabled", paramBoolean);
  }

  public static int c()
  {
    return a.d.b("invites_last_count", 0);
  }

  public static void c(int paramInt)
  {
    a.d.a("last_selected_xmp_level", paramInt);
  }

  public static void c(af paramaf)
  {
    a.d.a("last_selected_xmp_type", paramaf.name());
  }

  public static void c(String paramString)
  {
    a.d.a("xsrfToken", paramString);
  }

  public static void c(boolean paramBoolean)
  {
    a.d.a("particle_filter_enabled", paramBoolean);
  }

  public static af d(af paramaf)
  {
    return af.a(a.d.b("last_selected_xmp_type", paramaf.name()));
  }

  public static void d()
  {
    a.d.a("invites_last_nag", System.currentTimeMillis());
  }

  public static void d(int paramInt)
  {
    a.d.a("comm_range_filter", paramInt);
  }

  public static void d(String paramString)
  {
    a.d.a("gmmProtoCohort", paramString);
  }

  public static void d(boolean paramBoolean)
  {
    a.d.a("handshake_complete", paramBoolean);
  }

  public static int e(int paramInt)
  {
    return a.d.b("comm_range_filter", paramInt);
  }

  public static long e()
  {
    long l = a.d.b("invites_last_nag", 0L);
    return (System.currentTimeMillis() - l) / f;
  }

  public static void e(String paramString)
  {
    a.d.a("player_nickname", paramString);
  }

  public static void e(boolean paramBoolean)
  {
    a.d.a("vibrate_on_notification", paramBoolean);
  }

  public static y f()
  {
    f localf = a.d.a();
    String str = localf.a("location_provider", "none");
    int i = localf.c("location_latitude");
    int j = localf.c("location_longitude");
    Float localFloat = (Float)localf.a.get("location_accuracy");
    if (localFloat == null);
    for (float f1 = 0.0F; ; f1 = localFloat.floatValue())
      return new y(str, i, j, f1, localf.b("location_time"));
  }

  public static String f(String paramString)
  {
    return a.d.b("player_nickname", paramString);
  }

  public static void g(String paramString)
  {
    a.d.a("account_status", paramString);
  }

  public static boolean g()
  {
    return a.d.b("enable_profiling", false);
  }

  public static int h()
  {
    return a.d.b("last_selected_resonator_level", -1);
  }

  public static String h(String paramString)
  {
    return a.d.b("account_status", paramString);
  }

  public static int i()
  {
    return a.d.b("last_selected_xmp_level", -1);
  }

  public static void i(String paramString)
  {
    a.d.a("notifications_sound_uri", paramString);
  }

  public static a j()
  {
    synchronized (e)
    {
      f localf = a.d.a();
      String str = localf.a("authCookie", null);
      long l = localf.b("authCookieExpiry");
      if ((str != null) && (l != 0L))
      {
        a locala = new a(str, l);
        return locala;
      }
      return null;
    }
  }

  public static String j(String paramString)
  {
    return a.d.b("notifications_sound_uri", paramString);
  }

  public static String k()
  {
    return a.d.b("xsrfToken");
  }

  public static long l()
  {
    return a.d.b("gmmProtoCookie", 0L);
  }

  public static String m()
  {
    return a.d.b("gmmProtoCohort", null);
  }

  public static com.nianticproject.ingress.common.g n()
  {
    f localf = a.d.a();
    return new com.nianticproject.ingress.common.g(localf.b("energyPending"), localf.a("guidsPending", ""));
  }

  public static long o()
  {
    return a.d.b("last_play_time", System.currentTimeMillis());
  }

  public static void p()
  {
    a.d.a("account_selection_required", true);
  }

  public static boolean q()
  {
    boolean bool = a.d.b("account_selection_required", false);
    if (bool)
      a.d.a("account_selection_required", false);
    return bool;
  }

  public static FactionChoiceHint r()
  {
    f localf = a.d.a();
    String str1 = localf.a("inviter_guid");
    String str2 = localf.a("inviter_team_name");
    if ((br.b(str1)) || (br.b(str2)))
      return null;
    return new SimpleFactionChoiceHint(ai.a(str2), str1);
  }

  public static boolean s()
  {
    return a.d.b("orient_to_compass_enabled", false);
  }

  public static boolean t()
  {
    return a.d.b("particle_filter_enabled", true);
  }

  public static boolean u()
  {
    return a.d.b("handshake_complete", false);
  }

  public static boolean v()
  {
    return a.d.b("vibrate_on_notification", true);
  }

  public static void w()
  {
    a.d.a("time_nickname_click_helper_shown", 1 + x());
  }

  public static int x()
  {
    return a.d.b("time_nickname_click_helper_shown", 0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.s.c
 * JD-Core Version:    0.6.2
 */