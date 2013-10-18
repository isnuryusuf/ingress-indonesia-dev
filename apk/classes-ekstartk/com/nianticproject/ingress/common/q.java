package com.nianticproject.ingress.common;

import com.google.a.c.dh;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.knobs.ClientWeaponKnobBundle;
import com.nianticproject.ingress.knobs.InventoryKnobs;
import com.nianticproject.ingress.knobs.KnobBundleUpdate;
import com.nianticproject.ingress.knobs.NearbyPortalKnobs;
import com.nianticproject.ingress.knobs.PlayerAnnounceSharedKnobs;
import com.nianticproject.ingress.knobs.PortalKnobBundle;
import com.nianticproject.ingress.knobs.PortalModSharedKnobs;
import com.nianticproject.ingress.knobs.RecycleKnobs;
import com.nianticproject.ingress.knobs.ScannerKnobs;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.knobs.c;
import com.nianticproject.ingress.knobs.d;
import com.nianticproject.ingress.knobs.f;
import com.nianticproject.ingress.knobs.g;
import com.nianticproject.ingress.knobs.h;
import com.nianticproject.ingress.knobs.i;
import com.nianticproject.ingress.knobs.j;
import com.nianticproject.ingress.knobs.k;
import com.nianticproject.ingress.knobs.l;
import com.nianticproject.ingress.knobs.m;
import com.nianticproject.ingress.knobs.o;
import com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle;
import java.util.Map;

public final class q
{
  private static long a = 0L;
  private static ClientFeatureKnobBundle b;
  private static InventoryKnobs c;
  private static PortalDiscoveryKnobBundle d;
  private static PortalKnobBundle e;
  private static ScannerKnobs f;
  private static ClientWeaponKnobBundle g;
  private static XmCostKnobs h;
  private static RecycleKnobs i;
  private static PortalModSharedKnobs j;
  private static NearbyPortalKnobs k;
  private static PlayerAnnounceSharedKnobs l = new PlayerAnnounceSharedKnobs();

  static
  {
    new c();
    b = c.a();
    new f();
    c = InventoryKnobs.a;
    d = new PortalDiscoveryKnobBundle((byte)0);
    new j();
    e = new PortalKnobBundle();
    new m();
    f = m.a();
    new d();
    g = ClientWeaponKnobBundle.a;
    new o();
    h = XmCostKnobs.b;
    new l();
    i = RecycleKnobs.c;
    new k();
    j = PortalModSharedKnobs.g;
    new h();
    k = new NearbyPortalKnobs();
    new i();
  }

  public static long a()
  {
    return a;
  }

  public static void a(KnobBundleUpdate paramKnobBundleUpdate)
  {
    if (paramKnobBundleUpdate != null);
    try
    {
      long l1 = a;
      long l2 = paramKnobBundleUpdate.b();
      if (l1 >= l2);
      while (true)
      {
        return;
        a = paramKnobBundleUpdate.b();
        dh localdh = paramKnobBundleUpdate.a();
        g localg1 = (g)localdh.get("ClientFeatureKnobs");
        if (localg1 != null)
          b = (ClientFeatureKnobBundle)localg1;
        g localg2 = (g)localdh.get("InventoryKnobs");
        if (localg2 != null)
          c = (InventoryKnobs)localg2;
        g localg3 = (g)localdh.get("PortalDiscoveryKnobBundle");
        if (localg3 != null)
          d = (PortalDiscoveryKnobBundle)localg3;
        g localg4 = (g)localdh.get("PortalKnobs");
        if (localg4 != null)
          e = (PortalKnobBundle)localg4;
        g localg5 = (g)localdh.get("ScannerKnobs");
        if (localg5 != null)
          f = (ScannerKnobs)localg5;
        g localg6 = (g)localdh.get("XmCostKnobs");
        if (localg6 != null)
          h = (XmCostKnobs)localg6;
        g localg7 = (g)localdh.get("recycleKnobs");
        if (localg7 != null)
          i = (RecycleKnobs)localg7;
        g localg8 = (g)localdh.get("PortalModSharedKnobs");
        if (localg8 != null)
          j = (PortalModSharedKnobs)localg8;
        g localg9 = (g)localdh.get("NearbyPortalKnobs");
        if (localg9 != null)
          k = (NearbyPortalKnobs)localg9;
        g localg10 = (g)localdh.get("PlayerAnnounceSharedKnobs");
        if (localg10 != null)
          l = (PlayerAnnounceSharedKnobs)localg10;
      }
    }
    finally
    {
    }
  }

  public static PortalKnobBundle b()
  {
    return e;
  }

  public static PortalDiscoveryKnobBundle c()
  {
    return d;
  }

  public static InventoryKnobs d()
  {
    return c;
  }

  public static ScannerKnobs e()
  {
    return f;
  }

  public static ClientFeatureKnobBundle f()
  {
    return b;
  }

  public static ClientWeaponKnobBundle g()
  {
    return g;
  }

  public static XmCostKnobs h()
  {
    return h;
  }

  public static RecycleKnobs i()
  {
    return i;
  }

  public static PortalModSharedKnobs j()
  {
    return j;
  }

  public static NearbyPortalKnobs k()
  {
    return k;
  }

  public static PlayerAnnounceSharedKnobs l()
  {
    return l;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q
 * JD-Core Version:    0.6.2
 */