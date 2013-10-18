package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.google.a.a.br;
import com.google.a.c.eq;
import com.google.a.c.jc;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.PlayerAvatar;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import java.util.LinkedHashSet;
import java.util.List;

final class ae
  implements bi
{
  private final String a;
  private bw b;
  private com.nianticproject.ingress.shared.rpc.q c;
  private PlayerProfile d;
  private j e;
  private boolean f;
  private long g;
  private bw h;
  private com.nianticproject.ingress.shared.rpc.q i;
  private int j;
  private final LinkedHashSet<DisplayedAchievement> k = jc.c();

  public ae(String paramString)
  {
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = paramString;
      b();
      return;
    }
  }

  public final void a(j paramj)
  {
    this.e = paramj;
    this.f = true;
  }

  public final void a(PlayerProfile paramPlayerProfile)
  {
    this.b = bw.b;
    this.d = paramPlayerProfile;
    if (this.d.e() == -1)
      this.h = bw.b;
    this.g = System.currentTimeMillis();
  }

  public final void a(com.nianticproject.ingress.shared.rpc.q paramq)
  {
    this.b = bw.c;
    this.c = paramq;
  }

  public final void a(com.nianticproject.ingress.shared.rpc.q paramq, int paramInt)
  {
    this.h = bw.c;
    this.i = paramq;
    this.j = paramInt;
  }

  public final void a(List<DisplayedAchievement> paramList, boolean paramBoolean)
  {
    if (paramBoolean)
      this.h = bw.b;
    this.k.addAll(paramList);
  }

  public final boolean a()
  {
    int m;
    if (this.b == bw.b)
    {
      if (!this.f)
        break label36;
      this.f = false;
      m = 1;
    }
    while (true)
    {
      boolean bool = false;
      if (m != 0)
        bool = true;
      return bool;
      label36: if (this.g == -1L)
      {
        m = 1;
      }
      else
      {
        long l = com.nianticproject.ingress.common.q.f().k();
        if (()((float)(System.currentTimeMillis() - this.g) / 1000.0F) > l)
          m = 1;
        else
          m = 0;
      }
    }
  }

  public final void b()
  {
    this.b = bw.c;
    this.c = null;
    this.d = null;
    this.h = bw.c;
    this.i = null;
    this.j = 0;
    this.k.clear();
    this.g = -1L;
    this.e = null;
    this.f = false;
  }

  public final void c()
  {
    this.b = bw.a;
    this.c = null;
    i();
    this.d = null;
    this.k.clear();
    this.e = null;
  }

  public final String d()
  {
    return this.a;
  }

  public final bw e()
  {
    return this.b;
  }

  public final PlayerProfile f()
  {
    return this.d;
  }

  public final j g()
  {
    if (this.e != null)
      return this.e;
    if (this.d != null);
    for (PlayerAvatar localPlayerAvatar = this.d.b(); ; localPlayerAvatar = null)
      return j.a(localPlayerAvatar);
  }

  public final com.nianticproject.ingress.shared.rpc.q h()
  {
    return this.c;
  }

  public final void i()
  {
    this.h = bw.a;
    this.i = null;
    this.j = -1;
  }

  public final bw j()
  {
    return this.h;
  }

  public final List<DisplayedAchievement> k()
  {
    LinkedHashSet localLinkedHashSet = jc.c();
    if (this.d != null)
      localLinkedHashSet.addAll(this.d.d());
    localLinkedHashSet.addAll(this.k);
    return eq.b(localLinkedHashSet);
  }

  public final int l()
  {
    return this.j;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.ae
 * JD-Core Version:    0.6.2
 */