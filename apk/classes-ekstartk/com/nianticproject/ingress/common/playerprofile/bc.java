package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.rpc.q;
import java.util.List;

public final class bc
  implements ba, bk
{
  private final ax a;
  private final bi b;
  private final bj c;
  private final av d;
  private final boolean e;
  private final boolean f;

  public bc(ax paramax, bi parambi, bj parambj, av paramav, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = ((ax)an.a(paramax));
    this.b = ((bi)an.a(parambi));
    this.c = ((bj)an.a(parambj));
    this.d = ((av)an.a(paramav));
    this.e = paramBoolean1;
    this.f = paramBoolean2;
    parambj.a(this);
  }

  private void b(DisplayedAchievement paramDisplayedAchievement)
  {
    p.a().n().b(new ac(this.b.d(), this.d, this.a, paramDisplayedAchievement, this.f));
  }

  public final void a()
  {
    a(this.b.d(), true);
  }

  public final void a(DisplayedAchievement paramDisplayedAchievement)
  {
    b(paramDisplayedAchievement);
  }

  public final void a(q paramq)
  {
    this.b.a(paramq);
    this.c.a(this.b);
  }

  public final void a(q paramq, int paramInt)
  {
    this.b.a(paramq, paramInt);
    this.c.a(this.b);
  }

  public final void a(String paramString, PlayerProfile paramPlayerProfile, j paramj)
  {
    this.b.a(paramPlayerProfile);
    this.b.a(paramj);
    this.c.a(this.b);
    if ((this.e) && (paramPlayerProfile.e() != -1))
      this.a.a(paramString, paramPlayerProfile.e(), this);
  }

  public final void a(String paramString, List<DisplayedAchievement> paramList, int paramInt)
  {
    bi localbi = this.b;
    if (paramInt == -1);
    for (boolean bool = true; ; bool = false)
    {
      localbi.a(paramList, bool);
      this.c.a(this.b);
      if (paramInt != -1)
        this.a.a(paramString, paramInt, this);
      return;
    }
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    if ((!this.b.a()) && (!paramBoolean))
      return;
    this.b.c();
    this.c.a(this.b);
    this.a.a(paramString, this);
  }

  public final void b()
  {
    b(null);
  }

  public final void c()
  {
    this.b.i();
    this.c.a(this.b);
    this.a.a(this.b.d(), this.b.l(), this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.bc
 * JD-Core Version:    0.6.2
 */