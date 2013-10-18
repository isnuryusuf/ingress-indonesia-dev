package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;

final class al
  implements f
{
  al(af paramaf, d paramd)
  {
  }

  public final f a(p paramp)
  {
    try
    {
      af.a(this.b).a(this.a);
      return null;
    }
    catch (Throwable localThrowable)
    {
      af.v().b(localThrowable, "Exception in TrainingMission scheduled event");
      throw new RuntimeException(localThrowable);
    }
  }

  public final String n_()
  {
    return "scheduleMissionEvent";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.al
 * JD-Core Version:    0.6.2
 */