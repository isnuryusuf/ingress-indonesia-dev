package com.nianticproject.ingress.common.h;

import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.GameScore;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.y;

public class m extends com.nianticproject.ingress.common.f.m<GameScore>
{
  private static final aa a = new aa(m.class);
  private final q b;
  private final a c;

  public m(q paramq, a parama)
  {
    this.b = paramq;
    this.c = parama;
  }

  private GameScore j()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("GetGameScoreTask");
      ab localab = com.nianticproject.ingress.common.u.aj.a();
      try
      {
        GameScore localGameScore = (GameScore)this.b.b(localab);
        return localGameScore;
      }
      catch (y localy)
      {
        a.a(localy, "Failed to get the game score");
        return null;
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.m
 * JD-Core Version:    0.6.2
 */