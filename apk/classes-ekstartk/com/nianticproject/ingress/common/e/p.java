package com.nianticproject.ingress.common.e;

import com.nianticproject.ingress.common.u.e;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.y;

final class p extends com.nianticproject.ingress.common.f.m<Boolean>
{
  p(m paramm, int paramInt)
  {
  }

  private Boolean j()
  {
    try
    {
      aj.a("CheatSetPlayerLevelTask");
      try
      {
        m.a(this.b).b(e.a(this.a));
        Boolean localBoolean2 = Boolean.valueOf(true);
        return localBoolean2;
      }
      catch (y localy)
      {
        Boolean localBoolean1 = Boolean.valueOf(false);
        return localBoolean1;
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.p
 * JD-Core Version:    0.6.2
 */