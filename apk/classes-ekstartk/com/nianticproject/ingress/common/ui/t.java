package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.t.b;
import com.nianticproject.ingress.common.t.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;

public class t
{
  private static final aa a = new aa(t.class);
  private static final b b = c.a("Workqueue");
  private static boolean r = true;
  private final Map<m, y> c = hc.b();
  private final Map<Class<? extends m>, m> d;
  private final Iterable<? extends m> e;
  private final Stack<y> f;
  private GameState g;
  private x h;
  public Skin i;
  private final z j;
  private final f k = new f();
  private final InputMultiplexer l = new InputMultiplexer();
  private y m;
  private final w n = new u(this);
  private w o;
  private int p;
  private int q;

  public t(m paramm, Iterable<? extends m> paramIterable)
  {
    di localdi = dh.j();
    this.e = paramIterable;
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      localm.a(this);
      localdi.a(localm.getClass(), localm);
      this.c.put(localm, new y(localm, false, this.l, this.n));
    }
    this.d = localdi.a();
    if ((paramm == null) || (!this.c.containsKey(paramm)))
      throw new IllegalArgumentException("Invalid foreground activity");
    this.f = new Stack();
    this.f.push(this.c.get(paramm));
    this.j = new z(this.k, this.l);
  }

  public static long a(long paramLong)
  {
    try
    {
      aj.a("SubActivityManager.processWorkqueue");
      i locali = i.a();
      b.b();
      long l1 = locali.a(paramLong);
      locali.c().a();
      b.c();
      return l1;
    }
    finally
    {
      aj.b();
    }
  }

  public static void a(Stage paramStage)
  {
    GL20 localGL20 = Gdx.gl20;
    localGL20.glDisable(2929);
    localGL20.glDisable(2884);
    paramStage.draw();
    if (r)
      Table.drawDebug(paramStage);
  }

  private void a(y paramy, GameState paramGameState)
  {
    paramy.a(this.g, paramGameState);
  }

  public static void a(boolean paramBoolean)
  {
    r = paramBoolean;
  }

  private boolean a(y paramy)
  {
    if (this.f.lastElement() != paramy)
    {
      this.f.push(an.a(paramy));
      return true;
    }
    return false;
  }

  private boolean b(y paramy)
  {
    try
    {
      aj.a("SubActivityManager.replaceActivityState");
      an.a(paramy);
      if (this.f.lastElement() != paramy)
      {
        j();
        this.f.push(paramy);
        return true;
      }
      return false;
    }
    finally
    {
      aj.b();
    }
  }

  private void c(y paramy)
  {
    paramy.c();
    paramy.a.q_();
    this.c.remove(paramy.a);
  }

  private n i()
  {
    try
    {
      aj.a("SubActivityManager.setPreviousActivityInternal");
      if (!this.f.isEmpty());
      for (boolean bool = true; ; bool = false)
      {
        an.b(bool);
        localn1 = ((y)this.f.peek()).d();
        if (localn1 != n.a)
          break label78;
        if (this.f.size() > 1)
          break;
        n localn2 = n.a;
        return localn2;
      }
      j();
      n localn1 = n.b;
      label78: if (localn1 == n.b)
        o.a().a(bs.aM);
      return localn1;
    }
    finally
    {
      aj.b();
    }
  }

  private void j()
  {
    try
    {
      aj.a("SubActivityManager.popActivityState");
      y localy = (y)this.f.pop();
      if (localy.b)
        c(localy);
      while (true)
      {
        this.m = null;
        return;
        localy.b();
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final InputProcessor a()
  {
    return this.k;
  }

  public final <T extends m> T a(T paramT)
  {
    try
    {
      aj.a("SubActivityManager.replaceForegroundActivity(T)");
      y localy = new y(paramT, true, this.l, this.n);
      this.c.put(paramT, localy);
      b(localy);
      return paramT;
    }
    finally
    {
      aj.b();
    }
  }

  public final <T extends m> T a(Class<T> paramClass)
  {
    while (true)
    {
      Object localObject2;
      try
      {
        aj.a("SubActivityManager.getSubActivity");
        m localm = (m)this.d.get(paramClass);
        if (localm == null)
        {
          Iterator localIterator = this.d.entrySet().iterator();
          localObject2 = localm;
          if (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            if (!paramClass.isAssignableFrom((Class)localEntry.getKey()))
              break label152;
            if (localObject2 != null)
            {
              a.b("Ambiguous SubActivity Class: " + paramClass.getSimpleName());
              return null;
            }
            localObject3 = (m)localEntry.getValue();
            localObject2 = localObject3;
            continue;
          }
        }
        else
        {
          localObject2 = localm;
        }
        return localObject2;
      }
      finally
      {
        aj.b();
      }
      label152: Object localObject3 = localObject2;
    }
  }

  public final void a(float paramFloat)
  {
    try
    {
      aj.a("SubActivityManager.onUpdate");
      if (this.f.peek() != this.m)
        i.a().b();
      y localy = (y)an.a(this.f.peek());
      if (localy != this.m)
      {
        localy.a(this.i, this.h, this.p, this.q);
        if (this.m != null)
          this.m.b();
        this.m = localy;
        this.m.a();
        if (this.g != null)
          a(this.m, this.g);
        an.a(this.m, "transitionToForeground didn't set activity");
      }
      this.m.a(paramFloat);
      this.j.a(paramFloat);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(float paramFloat, Runnable paramRunnable)
  {
    this.j.a(paramFloat, paramRunnable);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.p = paramInt1;
    this.q = paramInt2;
    Iterator localIterator = this.c.values().iterator();
    while (localIterator.hasNext())
    {
      y localy = (y)localIterator.next();
      localy.a(paramInt1, paramInt2);
      localy.b(paramInt1, paramInt2);
    }
    this.j.a(paramInt1, paramInt2);
  }

  // ERROR //
  public final void a(Skin paramSkin, x paramx)
  {
    // Byte code:
    //   0: ldc_w 404
    //   3: invokestatic 183	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: aload_1
    //   8: putfield 366	com/nianticproject/ingress/common/ui/t:i	Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    //   11: aload_0
    //   12: aload_2
    //   13: putfield 368	com/nianticproject/ingress/common/ui/t:h	Lcom/nianticproject/ingress/common/ui/x;
    //   16: aload_2
    //   17: iconst_0
    //   18: iconst_0
    //   19: invokeinterface 409 3 0
    //   24: astore 4
    //   26: aload_0
    //   27: getfield 176	com/nianticproject/ingress/common/ui/t:j	Lcom/nianticproject/ingress/common/ui/z;
    //   30: aload_1
    //   31: aload 4
    //   33: invokevirtual 412	com/nianticproject/ingress/common/ui/z:a	(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    //   36: aload_0
    //   37: getfield 87	com/nianticproject/ingress/common/ui/t:l	Lcom/badlogic/gdx/InputMultiplexer;
    //   40: aload 4
    //   42: invokevirtual 416	com/badlogic/gdx/InputMultiplexer:addProcessor	(Lcom/badlogic/gdx/InputProcessor;)V
    //   45: aload_0
    //   46: getfield 101	com/nianticproject/ingress/common/ui/t:e	Ljava/lang/Iterable;
    //   49: invokeinterface 107 1 0
    //   54: astore 5
    //   56: aload 5
    //   58: invokeinterface 113 1 0
    //   63: ifeq +56 -> 119
    //   66: aload 5
    //   68: invokeinterface 117 1 0
    //   73: checkcast 119	com/nianticproject/ingress/common/ui/m
    //   76: astore 6
    //   78: aload 6
    //   80: invokeinterface 419 1 0
    //   85: ldc_w 421
    //   88: invokestatic 424	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   91: aload 6
    //   93: aload_1
    //   94: invokeinterface 427 2 0
    //   99: invokestatic 204	com/nianticproject/ingress/shared/aj:b	()V
    //   102: goto -46 -> 56
    //   105: astore_3
    //   106: invokestatic 204	com/nianticproject/ingress/shared/aj:b	()V
    //   109: aload_3
    //   110: athrow
    //   111: astore 7
    //   113: invokestatic 204	com/nianticproject/ingress/shared/aj:b	()V
    //   116: aload 7
    //   118: athrow
    //   119: invokestatic 204	com/nianticproject/ingress/shared/aj:b	()V
    //   122: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	56	105	finally
    //   56	78	105	finally
    //   99	102	105	finally
    //   113	119	105	finally
    //   78	99	111	finally
  }

  public final void a(GameState paramGameState)
  {
    try
    {
      aj.a("SubActivityManager.updateGameState");
      an.a(paramGameState);
      if (this.m != null)
        a(this.m, paramGameState);
      this.g = paramGameState;
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(w paramw)
  {
    if (this.o == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.o = paramw;
      return;
    }
  }

  public final m b()
  {
    if (this.m == null)
      return null;
    return this.m.a;
  }

  public final <T extends m> T b(T paramT)
  {
    boolean bool = true;
    try
    {
      aj.a("SubActivityManager.setForegroundActivity");
      if (!this.c.containsKey(paramT));
      while (true)
      {
        an.b(bool, "Attempt to set a transient activity that is already present in the manager: " + this.c.get(paramT));
        paramT.a(this);
        paramT.b(this.i);
        y localy = new y(paramT, true, this.l, this.n);
        this.c.put(paramT, localy);
        a(localy);
        return paramT;
        bool = false;
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final <T extends m> m b(Class<T> paramClass)
  {
    m localm1;
    try
    {
      aj.a("SubActivityManager.popTo");
      localm1 = a(paramClass);
      if (localm1 == null)
        throw new IllegalArgumentException("Unknown SubActivity class " + paramClass);
    }
    finally
    {
      aj.b();
    }
    y localy = (y)this.c.get(localm1);
    while (this.f.lastElement() != localy)
    {
      n localn = i();
      int i1 = v.a[localn.ordinal()];
      switch (i1)
      {
      default:
        break;
      case 1:
        aj.b();
        return null;
      case 2:
        m localm2 = ((y)this.f.lastElement()).a;
        aj.b();
        return localm2;
      }
    }
    aj.b();
    return localm1;
  }

  public final <T extends m> T c(Class<T> paramClass)
  {
    m localm;
    try
    {
      aj.a("SubActivityManager.setForegroundActivity");
      localm = a(paramClass);
      if (localm == null)
        throw new IllegalArgumentException("Unknown SubActivity class " + paramClass);
    }
    finally
    {
      aj.b();
    }
    a((y)this.c.get(localm));
    aj.b();
    return localm;
  }

  public final boolean c()
  {
    try
    {
      aj.a("SubActivityManager.onNavigationalBackPressed");
      if (!this.f.isEmpty());
      for (boolean bool1 = true; ; bool1 = false)
      {
        an.b(bool1);
        boolean bool2 = ((y)this.f.peek()).e();
        if (!bool2)
          break;
        return true;
      }
      boolean bool3 = d();
      return bool3;
    }
    finally
    {
      aj.b();
    }
  }

  public final <T extends m> T d(Class<T> paramClass)
  {
    m localm;
    try
    {
      aj.a("SubActivityManager.replaceForegroundActivity(Class<T>)");
      localm = a(paramClass);
      if (localm == null)
        throw new IllegalArgumentException("Unknown SubActivity class " + paramClass);
    }
    finally
    {
      aj.b();
    }
    b((y)this.c.get(localm));
    aj.b();
    return localm;
  }

  public final boolean d()
  {
    return i() != n.a;
  }

  public final void e()
  {
    try
    {
      aj.a("SubActivityManager.onRender");
      if (this.m != null)
        this.m.f();
      this.j.a();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void f()
  {
    try
    {
      aj.a("SubActivityManager.onPause");
      if (this.m != null)
        this.m.b();
      i.a().b();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void g()
  {
    try
    {
      aj.a("SubActivityManager.onResume");
      Iterator localIterator = this.c.values().iterator();
      while (localIterator.hasNext())
        ((y)localIterator.next()).b(this.p, this.q);
    }
    finally
    {
      aj.b();
    }
    if (this.m != null)
      this.m.a();
    aj.b();
  }

  public final void h()
  {
    if (this.m != null)
      c(this.m);
    Iterator localIterator = eq.a(this.c.values()).iterator();
    while (localIterator.hasNext())
      c((y)localIterator.next());
    this.j.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.t
 * JD-Core Version:    0.6.2
 */