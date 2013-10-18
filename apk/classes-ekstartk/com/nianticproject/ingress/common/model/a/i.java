package com.nianticproject.ingress.common.model.a;

import com.google.a.c.hc;
import com.nianticproject.ingress.common.missions.ck;
import java.util.Map;

public enum i
{
  private static final Map<String, i> s;
  private final String t;
  private final Class<?> u;

  static
  {
    int i1 = 0;
    a = new i("TRAINING_PORTAL_LAT_DEGREES", 0, "training_portal_lat_degrees", Float.class);
    b = new i("TRAINING_PORTAL_LNG_DEGREES", 1, "training_portal_lng_degrees", Float.class);
    c = new i("TRAINING_PORTAL_PHOTO_URL", 2, "training_portal_photo_url", String.class);
    d = new i("TRAINING_PORTAL_TITLE", 3, "training_portal_title", String.class);
    e = new i("SECOND_TRAINING_PORTAL_LAT_DEGREES", 4, "second_training_portal_lat_degrees", Float.class);
    f = new i("SECOND_TRAINING_PORTAL_LNG_DEGREES", 5, "second_training_portal_lat_degrees", Float.class);
    g = new i("GAME_INTRO_HAS_PLAYED", 6, "game_intro_has_played", Boolean.class);
    h = new i("MISSION_COMPLETE_0", 7, "mission_complete_0", ck.class);
    i = new i("MISSION_COMPLETE_1", 8, "mission_complete_1", ck.class);
    j = new i("MISSION_COMPLETE_2", 9, "mission_complete_2", ck.class);
    k = new i("MISSION_COMPLETE_3", 10, "mission_complete_3", ck.class);
    l = new i("MISSION_COMPLETE_4", 11, "mission_complete_4", ck.class);
    m = new i("MISSION_COMPLETE_5", 12, "mission_complete_5", ck.class);
    n = new i("MISSION_COMPLETE_6", 13, "mission_complete_6", ck.class);
    o = new i("MISSION_COMPLETE_7", 14, "mission_complete_7", ck.class);
    p = new i("MISSION_COMPLETE_TUTORIAL", 15, "mission_complete_basic_movement", ck.class);
    q = new i("ALL_MISSIONS_COMPLETE_ANNOUNCEMENT_MADE", 16, "all_missions_complete_announcement_made", Boolean.class);
    r = new i("HACK_REAL_PORTAL_MISSION_IN_PROGRESS", 17, "hack_real_portal_mission_in_progress", Boolean.class);
    i[] arrayOfi1 = new i[18];
    arrayOfi1[0] = a;
    arrayOfi1[1] = b;
    arrayOfi1[2] = c;
    arrayOfi1[3] = d;
    arrayOfi1[4] = e;
    arrayOfi1[5] = f;
    arrayOfi1[6] = g;
    arrayOfi1[7] = h;
    arrayOfi1[8] = i;
    arrayOfi1[9] = j;
    arrayOfi1[10] = k;
    arrayOfi1[11] = l;
    arrayOfi1[12] = m;
    arrayOfi1[13] = n;
    arrayOfi1[14] = o;
    arrayOfi1[15] = p;
    arrayOfi1[16] = q;
    arrayOfi1[17] = r;
    v = arrayOfi1;
    s = hc.b();
    i[] arrayOfi2 = values();
    int i2 = arrayOfi2.length;
    while (i1 < i2)
    {
      i locali = arrayOfi2[i1];
      s.put(locali.toString(), locali);
      i1++;
    }
  }

  private i(String paramString, Class<?> paramClass)
  {
    this.t = paramString;
    this.u = paramClass;
  }

  public static i a(String paramString)
  {
    return (i)s.get(paramString);
  }

  public final j<?> a(String paramString, long paramLong)
  {
    if (this.u.equals(Float.class))
      return new b(Float.valueOf(Float.parseFloat(paramString)), paramLong);
    if (this.u.equals(Boolean.class))
      return new a(Boolean.valueOf(Boolean.parseBoolean(paramString)), paramLong);
    if (this.u.equals(ck.class))
      return new d(ck.valueOf(paramString), paramLong);
    if (this.u.equals(Integer.class))
      return new c(Integer.valueOf(paramString), paramLong);
    if (this.u.equals(String.class))
      return new k(paramString, paramLong);
    throw new IllegalArgumentException("Invalid class specified for storage type");
  }

  public final Class<?> a()
  {
    return this.u;
  }

  public final j<?> b(String paramString)
  {
    if (this.u.equals(Float.class))
      return new b(paramString);
    if (this.u.equals(Boolean.class))
      return new a(paramString);
    if (this.u.equals(Integer.class))
      return new c(paramString);
    if (this.u.equals(ck.class))
      return new d(paramString);
    if (this.u.equals(String.class))
      return new k(paramString);
    throw new IllegalArgumentException("Invalid class specified for storage type");
  }

  public final String toString()
  {
    return this.t;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.a.i
 * JD-Core Version:    0.6.2
 */