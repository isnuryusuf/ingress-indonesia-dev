package com.nianticproject.ingress.common.model;

import com.google.a.a.an;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.ac;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.g;
import com.nianticproject.ingress.gameentity.components.EnergyGlob;
import com.nianticproject.ingress.shared.aj;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class f
  implements d
{
  private static final aa a = new aa(f.class);
  private final com.nianticproject.ingress.common.g.e b;
  private final ac c = new ac();
  private Set<String> d = jc.a();
  private long e;
  private final Set<e> f = jc.a();
  private long g;

  public f(com.nianticproject.ingress.common.g.e parame)
  {
    this.b = ((com.nianticproject.ingress.common.g.e)an.a(parame));
  }

  private e a(u paramu, long paramLong)
  {
    try
    {
      aj.a("EnergyGlobCollector.vacuumEnergyGlobs");
      this.c.a(paramu, 40);
      Collection localCollection = this.b.a(EnergyGlob.class, this.c);
      if (localCollection.isEmpty())
      {
        e locale3 = e.a;
        return locale3;
      }
      HashSet localHashSet = jc.a(localCollection.size());
      Iterator localIterator = localCollection.iterator();
      long l = 0L;
      do
      {
        if (!localIterator.hasNext())
          break;
        EnergyGlob localEnergyGlob = (EnergyGlob)localIterator.next();
        l += localEnergyGlob.getTotal();
        localHashSet.add(localEnergyGlob.getEntity().getGuid());
      }
      while (l < paramLong);
      if (l == 0L)
      {
        e locale1 = e.a;
        return locale1;
      }
      e locale2 = new e(localHashSet, l);
      a(locale2);
      return locale2;
    }
    finally
    {
      aj.b();
    }
  }

  private void a(e parame)
  {
    try
    {
      b(parame);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void b(e parame)
  {
    this.d.addAll(parame.b);
    this.e += parame.c;
  }

  private long g()
  {
    try
    {
      long l = this.g;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private long h()
  {
    try
    {
      long l = this.e;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  private void i()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 149
    //   4: invokestatic 64	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield 45	com/nianticproject/ingress/common/model/f:d	Ljava/util/Set;
    //   11: astore_3
    //   12: aload_0
    //   13: invokestatic 43	com/google/a/c/jc:a	()Ljava/util/HashSet;
    //   16: putfield 45	com/nianticproject/ingress/common/model/f:d	Ljava/util/Set;
    //   19: aload_0
    //   20: getfield 140	com/nianticproject/ingress/common/model/f:e	J
    //   23: lstore 4
    //   25: aload_0
    //   26: lconst_0
    //   27: putfield 140	com/nianticproject/ingress/common/model/f:e	J
    //   30: new 151	com/nianticproject/ingress/common/g
    //   33: dup
    //   34: lload 4
    //   36: bipush 44
    //   38: invokestatic 156	com/google/a/a/ab:a	(C)Lcom/google/a/a/ab;
    //   41: aload_3
    //   42: invokevirtual 159	com/google/a/a/ab:a	(Ljava/lang/Iterable;)Ljava/lang/String;
    //   45: invokespecial 162	com/nianticproject/ingress/common/g:<init>	(JLjava/lang/String;)V
    //   48: invokestatic 167	com/nianticproject/ingress/common/s/c:a	(Lcom/nianticproject/ingress/common/g;)V
    //   51: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   54: aload_0
    //   55: monitorexit
    //   56: return
    //   57: astore_1
    //   58: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   61: aload_1
    //   62: athrow
    //   63: astore_2
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_2
    //   67: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	51	57	finally
    //   51	54	63	finally
    //   58	63	63	finally
  }

  // ERROR //
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 170
    //   4: invokestatic 64	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   7: ldc 172
    //   9: invokestatic 64	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   12: invokestatic 176	com/nianticproject/ingress/common/s/c:n	()Lcom/nianticproject/ingress/common/g;
    //   15: astore 4
    //   17: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   20: ldc 178
    //   22: invokestatic 64	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   25: aload 4
    //   27: getfield 181	com/nianticproject/ingress/common/g:b	Ljava/lang/String;
    //   30: astore 6
    //   32: aload 6
    //   34: ifnull +11 -> 45
    //   37: aload 6
    //   39: invokevirtual 184	java/lang/String:isEmpty	()Z
    //   42: ifeq +108 -> 150
    //   45: invokestatic 190	java/util/Collections:emptyList	()Ljava/util/List;
    //   48: astore 7
    //   50: aload 7
    //   52: astore 8
    //   54: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   57: ldc 192
    //   59: invokestatic 64	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   62: aload_0
    //   63: aload 4
    //   65: getfield 194	com/nianticproject/ingress/common/g:a	J
    //   68: putfield 140	com/nianticproject/ingress/common/model/f:e	J
    //   71: aload 8
    //   73: invokeinterface 96 1 0
    //   78: astore 10
    //   80: aload 10
    //   82: invokeinterface 101 1 0
    //   87: ifeq +90 -> 177
    //   90: aload 10
    //   92: invokeinterface 105 1 0
    //   97: checkcast 183	java/lang/String
    //   100: astore 11
    //   102: aload 11
    //   104: invokevirtual 184	java/lang/String:isEmpty	()Z
    //   107: ifne -27 -> 80
    //   110: aload_0
    //   111: getfield 45	com/nianticproject/ingress/common/model/f:d	Ljava/util/Set;
    //   114: aload 11
    //   116: invokeinterface 124 2 0
    //   121: pop
    //   122: goto -42 -> 80
    //   125: astore 9
    //   127: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   130: aload 9
    //   132: athrow
    //   133: astore_1
    //   134: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   137: aload_1
    //   138: athrow
    //   139: astore_2
    //   140: aload_0
    //   141: monitorexit
    //   142: aload_2
    //   143: athrow
    //   144: astore_3
    //   145: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   148: aload_3
    //   149: athrow
    //   150: aload 6
    //   152: ldc 196
    //   154: invokevirtual 200	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   157: invokestatic 206	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   160: astore 13
    //   162: aload 13
    //   164: astore 8
    //   166: goto -112 -> 54
    //   169: astore 5
    //   171: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   174: aload 5
    //   176: athrow
    //   177: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   180: invokestatic 85	com/nianticproject/ingress/shared/aj:b	()V
    //   183: aload_0
    //   184: monitorexit
    //   185: return
    //
    // Exception table:
    //   from	to	target	type
    //   57	80	125	finally
    //   80	122	125	finally
    //   2	7	133	finally
    //   17	20	133	finally
    //   54	57	133	finally
    //   127	133	133	finally
    //   145	150	133	finally
    //   171	177	133	finally
    //   177	180	133	finally
    //   134	139	139	finally
    //   180	183	139	finally
    //   7	17	144	finally
    //   20	32	169	finally
    //   37	45	169	finally
    //   45	50	169	finally
    //   150	162	169	finally
  }

  public final void a(ad paramad, long paramLong, g<e> paramg)
  {
    paramg.a(a(paramad.a(), paramLong));
  }

  public final void a(e parame, boolean paramBoolean)
  {
    try
    {
      if (this.f.remove(parame))
      {
        this.g -= parame.c;
        if (!paramBoolean)
          b(parame);
      }
      return;
    }
    finally
    {
    }
  }

  public final void b()
  {
    i();
  }

  public final void c()
  {
    i();
  }

  public final e d()
  {
    try
    {
      e locale;
      if (this.d.size() < 0)
        locale = e.a;
      while (true)
      {
        return locale;
        locale = new e(this.d, this.e);
        this.f.add(locale);
        this.g += this.e;
        this.d = jc.a();
        this.e = 0L;
      }
    }
    finally
    {
    }
  }

  public final long e()
  {
    try
    {
      long l1 = h();
      long l2 = g();
      long l3 = l1 + l2;
      return l3;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void f()
  {
    try
    {
      this.d = jc.a();
      this.e = 0L;
      this.f.clear();
      this.g = 0L;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void f_()
  {
    j();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.f
 * JD-Core Version:    0.6.2
 */