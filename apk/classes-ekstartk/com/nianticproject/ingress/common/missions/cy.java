package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.w.b;

final class cy extends n
{
  private boolean b = false;
  private boolean c = false;

  cy(cu paramcu)
  {
  }

  public final String a()
  {
    return "XmTrainingMission:playerChangeListener";
  }

  public final void a(long paramLong1, long paramLong2, long paramLong3, z paramz)
  {
    if ((!this.b) && (paramLong2 > 750L))
    {
      this.b = true;
      a.a(this.a, "FirstXmCollected");
      this.a.t().a(cu.d(this.a));
    }
    if ((!this.c) && (paramLong2 >= 1000L))
    {
      this.c = true;
      this.a.k.b(this);
      a.a(this.a, "AllXmCollected");
      this.a.t().a(cu.e(this.a));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.cy
 * JD-Core Version:    0.6.2
 */