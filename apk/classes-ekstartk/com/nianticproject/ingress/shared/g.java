package com.nianticproject.ingress.shared;

import com.google.a.c.dh;
import com.google.a.c.di;
import java.util.Map;
import java.util.UUID;

public enum g
{
  private static final Map<Integer, g> B = localdi.a();
  private final int A;

  static
  {
    int i1 = 0;
    a = new g("PANORAMIO_PORTAL", 0, 1);
    b = new g("RANDOM_PORTAL", 1, 2);
    c = new g("BEACON", 2, 3);
    d = new g("RESOURCE", 3, 4);
    e = new g("INVENTORY_ITEM", 4, 5);
    f = new g("ENERGY_GLOB", 5, 6);
    g = new g("ENERGY_SPAWN_LOCATION", 6, 7);
    h = new g("HMDB_PORTAL", 7, 8);
    i = new g("EDGE", 8, 9);
    j = new g("LOCALSTORE_PORTAL", 9, 10);
    k = new g("CAPTURED_REGION", 10, 11);
    l = new g("PLAYER", 11, 12);
    m = new g("PLEXT", 12, 13);
    n = new g("TRACKING_RECORD", 13, 14);
    o = new g("TRACKING_GROUP", 14, 15);
    p = new g("PASSCODE_REWARD", 15, 16);
    q = new g("SUPEROPS_PORTAL", 16, 17);
    r = new g("ANON_PORTAL", 17, 18);
    s = new g("ACCOUNT_INFO", 18, 19);
    t = new g("GEOSTORE_POI", 19, 20);
    u = new g("GEOSTORE_MOD", 20, 21);
    v = new g("GEOSTORE_PORTAL", 21, 22);
    w = new g("PORTAL_IMAGE", 22, 23);
    x = new g("PMRR_CHANGE", 23, 24);
    y = new g("POI_DATA_CHANGE", 24, 25);
    z = new g("AVATAR_LAYER", 25, 26);
    g[] arrayOfg1 = new g[26];
    arrayOfg1[0] = a;
    arrayOfg1[1] = b;
    arrayOfg1[2] = c;
    arrayOfg1[3] = d;
    arrayOfg1[4] = e;
    arrayOfg1[5] = f;
    arrayOfg1[6] = g;
    arrayOfg1[7] = h;
    arrayOfg1[8] = i;
    arrayOfg1[9] = j;
    arrayOfg1[10] = k;
    arrayOfg1[11] = l;
    arrayOfg1[12] = m;
    arrayOfg1[13] = n;
    arrayOfg1[14] = o;
    arrayOfg1[15] = p;
    arrayOfg1[16] = q;
    arrayOfg1[17] = r;
    arrayOfg1[18] = s;
    arrayOfg1[19] = t;
    arrayOfg1[20] = u;
    arrayOfg1[21] = v;
    arrayOfg1[22] = w;
    arrayOfg1[23] = x;
    arrayOfg1[24] = y;
    arrayOfg1[25] = z;
    C = arrayOfg1;
    di localdi = dh.j();
    g[] arrayOfg2 = values();
    int i2 = arrayOfg2.length;
    while (i1 < i2)
    {
      g localg = arrayOfg2[i1];
      localdi.a(Integer.valueOf(localg.A), localg);
      i1++;
    }
  }

  private g(int paramInt)
  {
    this.A = paramInt;
  }

  public static long a(String paramString)
  {
    return l.b(paramString, 0, 16);
  }

  public static String a(g paramg)
  {
    UUID localUUID = UUID.randomUUID();
    return a(paramg, localUUID.getMostSignificantBits(), localUUID.getLeastSignificantBits());
  }

  public static String a(g paramg, long paramLong1, long paramLong2)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Long.valueOf(paramLong1);
    arrayOfObject[1] = Long.valueOf(paramLong2);
    arrayOfObject[2] = Integer.valueOf(paramg.A);
    return String.format("%016x%016x.%x", arrayOfObject);
  }

  public static long b(String paramString)
  {
    return l.b(paramString, 16, 32);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.g
 * JD-Core Version:    0.6.2
 */