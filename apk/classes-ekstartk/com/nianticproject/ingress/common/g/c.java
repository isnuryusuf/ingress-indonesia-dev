package com.nianticproject.ingress.common.g;

import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.i;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.util.Collection;

public abstract class c extends j<GameState>
{
  private static final aa a = new aa(c.class);
  private final e b;
  private GameState c;
  private h d;

  public c(e parame)
  {
    this.b = parame;
  }

  private GameState g()
  {
    try
    {
      aj.a("GameStateObserver.doQuery");
      if (this.d != null)
      {
        int i = this.d.a().size();
        if (i != 0);
      }
      else
      {
        return null;
      }
      z localz = new z(this.d.a());
      long l1 = System.currentTimeMillis();
      if (this.c != null);
      for (long l2 = this.c.timestamp; ; l2 = 0L)
      {
        ak localak = this.b.a(localz, l2);
        i locali = (i)an.a(localak.a);
        long l3 = ((Long)an.a(localak.b)).longValue();
        this.c = locali.a(this.c, l3);
        aa localaa = a;
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l1);
        arrayOfObject[1] = Integer.valueOf(this.c.disappeared.size());
        arrayOfObject[2] = Integer.valueOf(this.c.changedEntities.size());
        arrayOfObject[3] = Integer.valueOf(this.c.gameEntities.size());
        localaa.a("GameStateObserver.doQuery in %dms (%d disappeared %d changed %d total)", arrayOfObject);
        GameState localGameState = this.c;
        return localGameState;
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(h paramh)
  {
    this.d = paramh;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.c
 * JD-Core Version:    0.6.2
 */