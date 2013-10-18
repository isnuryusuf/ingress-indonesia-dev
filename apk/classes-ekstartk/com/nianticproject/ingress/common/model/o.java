package com.nianticproject.ingress.common.model;

import com.google.a.a.an;
import com.google.a.a.ba;
import com.google.a.c.dc;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.playerprofile.j;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.gameentity.components.Avatar;
import com.nianticproject.ingress.gameentity.components.PlayerPersonal;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.model.ApGain;
import com.nianticproject.ingress.shared.model.LevelUp;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class o
  implements k
{
  private static final com.nianticproject.ingress.common.w.aa b = new com.nianticproject.ingress.common.w.aa("PlayerModel");
  protected int a = com.nianticproject.ingress.shared.t.b;
  private final List<aa> c = eq.a();
  private final String d;
  private final com.nianticproject.ingress.common.g.e e;
  private final i f;
  private final d g;
  private com.nianticproject.ingress.gameentity.f h;
  private ad i;
  private float j;
  private String k = "";
  private com.nianticproject.ingress.shared.f l;
  private long m;
  private long n;
  private ai o;
  private NotificationSettings p;
  private ProfileSettings q;
  private boolean r;
  private boolean s = false;
  private long t = 0L;
  private long u = 0L;
  private boolean v = false;
  private final com.nianticproject.ingress.common.x.f w = new p(this);
  private boolean x = false;
  private final List<ApGain> y = new ArrayList();
  private j z;

  public o(com.nianticproject.ingress.gameentity.f paramf, String paramString, com.nianticproject.ingress.common.g.e parame, i parami, d paramd)
  {
    this.d = paramf.getGuid();
    this.e = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.f = ((i)an.a(parami));
    this.l = com.nianticproject.ingress.shared.f.a;
    this.g = paramd;
    this.k = paramString;
    a(paramf, null, null);
  }

  private void a()
  {
    while (true)
    {
      try
      {
        this.v = false;
        long l1 = this.u;
        if (l1 == 0L)
          return;
        long l2 = System.nanoTime();
        if (this.u > l2)
        {
          d(this.u - l2);
          continue;
        }
      }
      finally
      {
      }
      b.b("allowEnergyGains not called in 10 seconds, forcing reset.");
      q();
    }
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt > com.nianticproject.ingress.shared.t.a())
    {
      int i3 = com.nianticproject.ingress.shared.t.a();
      com.nianticproject.ingress.common.w.aa localaa = b;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Integer.valueOf(com.nianticproject.ingress.shared.t.a());
      localaa.c("Attempt to level up beyond maximum level (%d > %d)", arrayOfObject);
      paramInt = i3;
    }
    int i1 = com.nianticproject.ingress.shared.t.c(this.a);
    int i2 = com.nianticproject.ingress.shared.t.c(paramInt);
    this.a = paramInt;
    if (i2 != i1)
      a(new x(this, paramBoolean), "player.level");
  }

  private void a(long paramLong, z paramz)
  {
    if (paramLong != 0L);
    try
    {
      if ((this.s) && (paramLong > 0L))
        this.t = (paramLong + this.t);
      while (true)
      {
        return;
        b(paramLong + this.m, paramz);
      }
    }
    finally
    {
    }
  }

  private void a(ba<l> paramba, String paramString)
  {
    try
    {
      aj.a("PlayerModel.notify");
      try
      {
        ArrayList localArrayList = eq.a(this.c);
        this.f.a(new r(this, localArrayList, paramba, paramString));
        return;
      }
      finally
      {
      }
    }
    finally
    {
      aj.b();
    }
  }

  private void a(com.nianticproject.ingress.gameentity.f paramf, LevelUp paramLevelUp, List<ApGain> paramList)
  {
    b(b.a(paramf));
    Avatar localAvatar = (Avatar)paramf.getComponent(Avatar.class);
    if (localAvatar != null)
      a(j.a(localAvatar));
    PlayerPersonal localPlayerPersonal = (PlayerPersonal)paramf.getComponent(PlayerPersonal.class);
    if (localPlayerPersonal != null)
    {
      a(localPlayerPersonal, paramLevelUp, paramList);
      this.p = localPlayerPersonal.getNotificationSettings();
      this.q = localPlayerPersonal.getProfileSettings();
      this.r = localPlayerPersonal.getAllowedFactionChoice();
    }
  }

  private void a(List<ApGain> paramList)
  {
    an.a(paramList);
    a(new u(this, dc.a(paramList)), "player.ap");
  }

  private void c(long paramLong, z paramz)
  {
    a(new t(this, paramLong, paramz), "player.energy");
  }

  private void d(long paramLong)
  {
    if (!this.v)
    {
      this.v = true;
      i.a().a(this.w, paramLong);
    }
  }

  public final com.nianticproject.ingress.gameentity.f a(String paramString)
  {
    try
    {
      aj.a("PlayerModel.findInventoryItem");
      com.nianticproject.ingress.gameentity.f localf = this.e.b(paramString);
      return localf;
    }
    finally
    {
      aj.b();
    }
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> a(Collection<af> paramCollection)
  {
    try
    {
      aj.a("PlayerModel.getAvailableResourcesOfType(", paramCollection.toString(), ")");
      Collection localCollection = this.e.a(paramCollection);
      return localCollection;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(float paramFloat)
  {
    this.j = paramFloat;
  }

  protected abstract void a(int paramInt);

  public final void a(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Amount of gained energy can't be negative: " + paramLong);
    a(paramLong, z.a);
  }

  public final void a(ad paramad)
  {
    an.a(paramad);
    if ((this.i == null) || (!paramad.a(this.i)));
    for (int i1 = 1; ; i1 = 0)
    {
      this.i = paramad;
      if (i1 != 0)
        a(new w(this), "player.location");
      return;
    }
  }

  public final void a(l paraml)
  {
    an.a(paraml);
    try
    {
      aa localaa = new aa(paraml);
      if (this.c.contains(localaa))
        return;
      this.c.add(localaa);
      return;
    }
    finally
    {
    }
  }

  public final void a(j paramj)
  {
    this.z = paramj;
    a(new q(this), "player.avatarSelection");
  }

  protected void a(PlayerPersonal paramPlayerPersonal, LevelUp paramLevelUp, List<ApGain> paramList)
  {
    long l1 = paramPlayerPersonal.getAp();
    int i1;
    if (this.n != l1)
    {
      i1 = 1;
      this.n = l1;
      if ((i1 != 0) || (paramList != null))
      {
        if (paramList == null)
          paramList = Collections.emptyList();
        if (!this.x)
          break label131;
        this.y.addAll(paramList);
      }
    }
    while (true)
    {
      a(paramPlayerPersonal.getEnergyForRead() - (this.m - this.g.e()), z.d);
      a(paramPlayerPersonal.getEnergyState());
      if (paramLevelUp == null)
        break label139;
      a(paramPlayerPersonal.getClientLevel(), true);
      a(paramLevelUp.a());
      return;
      i1 = 0;
      break;
      label131: a(paramList);
    }
    label139: a(paramPlayerPersonal.getClientLevel(), false);
  }

  protected void a(com.nianticproject.ingress.shared.f paramf)
  {
    com.nianticproject.ingress.shared.f localf = this.l;
    if (this.l != paramf)
    {
      this.l = paramf;
      a(new s(this, localf, this.l), "player.energyState");
    }
  }

  public final void a(NotificationSettings paramNotificationSettings)
  {
    this.p = paramNotificationSettings;
  }

  public final void a(ProfileSettings paramProfileSettings)
  {
    this.q = paramProfileSettings;
  }

  public final void a(com.nianticproject.ingress.shared.rpc.e parame)
  {
    com.nianticproject.ingress.gameentity.f localf = parame.a();
    if (localf != null)
    {
      if ((this.h == null) || (localf.getLastModifiedMs() > this.h.getLastModifiedMs()))
        this.h = localf;
      a(this.h, parame.c(), parame.d());
    }
    b(parame.b());
  }

  public final void a(boolean paramBoolean)
  {
    if (this.x == paramBoolean);
    do
    {
      return;
      this.x = paramBoolean;
    }
    while (paramBoolean);
    a(this.y);
    this.y.clear();
  }

  public final com.nianticproject.ingress.shared.f b()
  {
    return this.l;
  }

  public final void b(long paramLong)
  {
    z localz = z.b;
    if (paramLong < 0L)
      throw new IllegalArgumentException("Amount of energy decremented can't be negative: " + paramLong);
    a(0L - paramLong, localz);
  }

  protected final void b(long paramLong, z paramz)
  {
    long l1 = Math.max(0L, Math.min(c(), paramLong));
    long l2 = l1 - this.m;
    if (l2 != 0L)
    {
      this.m = l1;
      c(l2, paramz);
    }
  }

  public final void b(l paraml)
  {
    an.a(paraml);
    try
    {
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        aa localaa = (aa)localIterator.next();
        if (localaa.a == paraml)
        {
          localaa.b = false;
          localIterator.remove();
        }
      }
      return;
    }
    finally
    {
    }
  }

  protected final void b(ai paramai)
  {
    if (paramai == this.o)
      return;
    ai localai = this.o;
    this.o = paramai;
    an.a(paramai);
    a(new v(this, localai, paramai), "player.team");
  }

  protected final void b(Set<PlayerDamage> paramSet)
  {
    if (paramSet == null);
    long l1;
    do
    {
      return;
      Iterator localIterator = paramSet.iterator();
      l1 = 0L;
      while (localIterator.hasNext())
      {
        PlayerDamage localPlayerDamage = (PlayerDamage)localIterator.next();
        l1 += localPlayerDamage.a();
        a(new y(this, localPlayerDamage), "player.attacked");
      }
    }
    while (l1 <= 0L);
    c(-l1, z.c);
  }

  public final long c()
  {
    return com.nianticproject.ingress.shared.t.a(this.a);
  }

  public final void c(long paramLong)
  {
    a(paramLong, z.e);
  }

  public final long d()
  {
    return this.m;
  }

  public final long e()
  {
    return this.n;
  }

  public final float f()
  {
    return this.j;
  }

  public final ad g()
  {
    return this.i;
  }

  public final ai h()
  {
    return this.o;
  }

  public final boolean i()
  {
    return this.r;
  }

  public final String j()
  {
    return this.k;
  }

  public final String k()
  {
    return this.d;
  }

  public final int l()
  {
    return com.nianticproject.ingress.shared.t.c(this.a);
  }

  public final int m()
  {
    return this.e.f();
  }

  public final NotificationSettings n()
  {
    return this.p;
  }

  public final ProfileSettings o()
  {
    return this.q;
  }

  public final void p()
  {
    try
    {
      this.s = true;
      if (this.u == 0L)
      {
        this.u = (10000L + System.nanoTime());
        d(10000L);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void q()
  {
    try
    {
      if (this.s)
      {
        this.s = false;
        this.u = 0L;
        a(this.t, z.a);
        this.t = 0L;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final j r()
  {
    return this.z;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.o
 * JD-Core Version:    0.6.2
 */