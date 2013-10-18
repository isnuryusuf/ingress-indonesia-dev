package com.nianticproject.ingress.common.model;

import com.google.a.c.ct;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;

public final class i
{
  private final dv<String> a = du.h();
  private final dv<f> b = du.h();
  private final di<String, f> c = dh.j();

  public static GameState a(GameState paramGameState1, GameState paramGameState2)
  {
    i locali;
    try
    {
      aj.a("GameStateBuilder.rebuildIncrementalGameState");
      locali = new i();
      locali.c.a(paramGameState2.gameEntities);
      if (paramGameState1 == null)
      {
        locali.b.b(paramGameState2.gameEntities.d_());
        GameState localGameState = new GameState(paramGameState2.timestamp, locali.a.a(), locali.b.a(), locali.c.a());
        return localGameState;
      }
      Iterator localIterator1 = paramGameState1.gameEntities.g().iterator();
      while (localIterator1.hasNext())
      {
        String str = (String)localIterator1.next();
        if (!paramGameState2.gameEntities.containsKey(str))
          locali.a.c(str);
      }
    }
    finally
    {
      aj.b();
    }
    Iterator localIterator2 = paramGameState2.gameEntities.d_().iterator();
    while (localIterator2.hasNext())
    {
      f localf1 = (f)localIterator2.next();
      f localf2 = (f)paramGameState1.gameEntities.get(localf1.getGuid());
      if (localf2 == null)
        locali.b.c(localf1);
      else if (localf1.getLastModifiedMs() > localf2.getLastModifiedMs())
        locali.b.c(localf1);
    }
  }

  public final GameState a(GameState paramGameState, long paramLong)
  {
    dh localdh;
    try
    {
      aj.a("GameStateBuilder.buildIncrementalGameState");
      localdh = this.c.a();
      if (paramGameState == null)
        break label145;
      Iterator localIterator1 = paramGameState.gameEntities.g().iterator();
      while (localIterator1.hasNext())
      {
        String str = (String)localIterator1.next();
        if (!localdh.containsKey(str))
          this.a.c(str);
      }
    }
    finally
    {
      aj.b();
    }
    Iterator localIterator2 = localdh.d_().iterator();
    while (localIterator2.hasNext())
    {
      f localf = (f)localIterator2.next();
      if (!paramGameState.gameEntities.containsKey(localf.getGuid()))
      {
        this.b.c(localf);
        continue;
        label145: this.b.b(localdh.d_());
      }
    }
    GameState localGameState = new GameState(paramLong, this.a.a(), this.b.a(), localdh);
    aj.b();
    return localGameState;
  }

  public final void a(f paramf)
  {
    this.b.c(paramf);
    this.c.a(paramf.getGuid(), paramf);
  }

  public final void b(f paramf)
  {
    this.c.a(paramf.getGuid(), paramf);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.i
 * JD-Core Version:    0.6.2
 */