package com.nianticproject.ingress.common.missions;

import com.google.a.d.u;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.w.b;

final class fa extends n
{
  fa(eu parameu)
  {
  }

  public final String a()
  {
    return "WalkToPortalAndHackTrainingMission:playerChangeListener";
  }

  public final void a(ad paramad)
  {
    if (paramad.a().a(this.a.b.a) < 40.0D)
    {
      this.a.k.b(this);
      a.a(this.a, "WalkedToPortal");
      this.a.t().a(eu.f(this.a));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.fa
 * JD-Core Version:    0.6.2
 */