package com.nianticproject.ingress;

import com.nianticproject.ingress.common.playerprofile.ak;
import com.nianticproject.ingress.common.playerprofile.ax;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.x.a;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;

public final class au extends a
{
  private final DisplayedAchievement a;

  public au(DisplayedAchievement paramDisplayedAchievement)
  {
    super("EnqueueBadgeUnlockDialog");
    this.a = paramDisplayedAchievement;
  }

  public final f a(com.nianticproject.ingress.common.x.p paramp)
  {
    k localk = com.nianticproject.ingress.common.g.p.a().k();
    ax localax = com.nianticproject.ingress.common.g.p.a().E();
    if ((localk == null) || (localax == null))
    {
      i.a().a(this, 3000L);
      return null;
    }
    localk.a(new av(this));
    ak.j();
    localax.a();
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.au
 * JD-Core Version:    0.6.2
 */