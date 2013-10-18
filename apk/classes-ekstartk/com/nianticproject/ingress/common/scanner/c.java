package com.nianticproject.ingress.common.scanner;

import com.google.a.c.dh;
import com.google.a.c.di;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.i;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class c
{
  private static final f a = new GameEntityBuilder("").a();
  private Map<String, f> b = hc.b();
  private d c = d();
  private d d = null;
  private boolean e = false;

  private dh<String, f> a(dh<String, f> paramdh)
  {
    di localdi = dh.j();
    Iterator localIterator1 = this.b.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
      if (localEntry2.getValue() != a)
        localdi.a(localEntry2);
    }
    Iterator localIterator2 = paramdh.f().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
      if (!this.b.containsKey(localEntry1.getKey()))
        localdi.a(localEntry1);
    }
    return localdi.a();
  }

  private dv<String> a(du<String> paramdu)
  {
    dv localdv = du.h();
    Iterator localIterator = paramdu.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!this.b.containsKey(str))
        localdv.c(str);
    }
    return localdv;
  }

  private dv<f> b(du<f> paramdu)
  {
    dv localdv = du.h();
    Iterator localIterator = paramdu.iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      if (!this.b.containsKey(localf.getGuid()))
        localdv.c(localf);
    }
    return localdv;
  }

  private d c()
  {
    if (this.d == null)
      return this.c;
    return this.d;
  }

  private static d d()
  {
    GameState localGameState = new GameState(0L, du.g(), du.g(), dh.i());
    return new d(localGameState, localGameState);
  }

  public final GameState a()
  {
    if (this.d == null)
      return null;
    if (this.e);
    for (GameState localGameState = i.a(this.c.b, this.d.b); ; localGameState = this.d.b)
    {
      this.c = this.d;
      this.d = null;
      this.e = false;
      return localGameState;
    }
  }

  public final void a(GameState paramGameState)
  {
    d locald = c();
    if ((locald == null) || (paramGameState != locald.a))
    {
      if (this.d != null)
        this.e = true;
      if (!this.b.isEmpty())
        break label59;
    }
    label59: dh localdh;
    du localdu1;
    du localdu2;
    for (GameState localGameState = paramGameState; ; localGameState = new GameState(paramGameState.timestamp, localdu1, localdu2, localdh))
    {
      this.d = new d(paramGameState, localGameState);
      return;
      localdh = a(paramGameState.gameEntities);
      localdu1 = a(paramGameState.disappeared).a();
      localdu2 = b(paramGameState.changedEntities).a();
    }
  }

  public final void a(Collection<String> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      f localf = (f)this.c.b.gameEntities.get(str);
      if (localf != null)
        this.b.put(str, localf);
      else
        this.b.put(str, a);
    }
  }

  public final boolean a(String paramString)
  {
    return this.b.containsKey(paramString);
  }

  public final void b()
  {
    this.d = null;
    this.e = false;
    this.b.clear();
    this.c = d();
  }

  public final void b(Collection<String> paramCollection)
  {
    ArrayList localArrayList = eq.a(paramCollection.size());
    Iterator localIterator1 = paramCollection.iterator();
    while (localIterator1.hasNext())
    {
      String str2 = (String)localIterator1.next();
      if (this.b.remove(str2) != null)
        localArrayList.add(str2);
    }
    if (localArrayList.isEmpty())
      return;
    GameState localGameState1 = c().a;
    dh localdh = a(localGameState1.gameEntities);
    dv localdv1 = du.h();
    dv localdv2 = du.h();
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      String str1 = (String)localIterator2.next();
      f localf = (f)localdh.get(str1);
      if (localf != null)
        localdv2.c(localf);
      else
        localdv1.c(str1);
    }
    GameState localGameState2 = new GameState(localGameState1.timestamp, localdv1.a(), localdv2.a(), localdh);
    if (this.d != null)
      this.e = true;
    this.d = new d(localGameState1, localGameState2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.c
 * JD-Core Version:    0.6.2
 */