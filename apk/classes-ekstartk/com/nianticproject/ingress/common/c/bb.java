package com.nianticproject.ingress.common.c;

import com.google.a.a.an;
import com.nianticproject.ingress.common.w.q;
import com.nianticproject.ingress.common.w.s;
import java.util.Iterator;
import java.util.List;

public class bb
  implements com.nianticproject.ingress.common.aa
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(bb.class);
  private final s b = new bc(this);
  private final m c;
  private final ad d;
  private final i e;
  private final String f;
  private final g g;
  private final q<bf> h = new q(this.b);
  private bg i;
  private bn j;
  private bi k;
  private int l;
  private boolean m;
  private bj n;
  private be o;
  private final bk p = new bd(this);

  bb(m paramm, ad paramad, i parami, bh parambh)
  {
    this(paramm, paramad, parami, parambh.toString(), parambh.a());
  }

  bb(m paramm, ad paramad, i parami, String paramString, g paramg)
  {
    this.c = paramm;
    this.d = paramad;
    this.e = parami;
    this.f = paramString;
    this.g = paramg;
    this.i = bg.b;
  }

  private void a(boolean paramBoolean)
  {
    if ((this.n == null) || (paramBoolean));
    try
    {
      this.n.c();
      this.c.a(this.n);
      this.n = null;
      return;
    }
    catch (bl localbl)
    {
      while (true)
        a.a(localbl, "sound player stop failed.");
    }
  }

  private void f()
  {
    if ((j()) && (this.n != null));
    try
    {
      this.n.a(this.l);
      this.l = 0;
      return;
    }
    catch (bl localbl)
    {
      while (true)
      {
        com.nianticproject.ingress.common.w.aa localaa = a;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = this.f;
        arrayOfObject[1] = this.j;
        localaa.b(localbl, "%s seek failed: track=%s", arrayOfObject);
      }
    }
  }

  private boolean f(bn parambn)
  {
    return (this.j == null) || (parambn.l() >= this.j.l());
  }

  private void g()
  {
    a(true);
    if (this.i == bg.a)
    {
      g(null);
      this.i = bg.a;
      return;
    }
    g(null);
    h();
  }

  private void g(bn parambn)
  {
    if (this.j != null)
    {
      this.d.a(this.j);
      if (this.j.d())
        o.a().a(false);
    }
    this.j = parambn;
    if (this.j != null)
    {
      this.d.a(this.j, this);
      if (this.j.d())
        o.a().a(true);
    }
    this.m = false;
    this.k = null;
    this.i = bg.b;
  }

  private void h()
  {
    bf localbf = (bf)this.h.b();
    if (localbf != null)
    {
      g(localbf.a);
      this.i = bg.c;
      if (!i());
    }
    while (this.o == null)
    {
      return;
      g(null);
      break;
    }
    this.o.a();
  }

  private boolean i()
  {
    if (!this.i.equals(bg.a));
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      if (this.j != null)
        break;
      a.a(new Exception(), "playNextClip called with currentTrack == null");
      this.i = bg.b;
      return false;
    }
    this.k = null;
    if (this.j.hasNext())
    {
      bi localbi = this.j.r();
      if ((!this.j.g()) && (!localbi.b().equals(this.f)))
      {
        this.j.v();
        this.j.x();
        this.d.a(this.j, false);
        g(null);
        return false;
      }
      this.k = this.j.y();
      return j();
    }
    g(null);
    return false;
  }

  // ERROR //
  private boolean j()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 99	com/nianticproject/ingress/common/c/bb:i	Lcom/nianticproject/ingress/common/c/bg;
    //   4: getstatic 145	com/nianticproject/ingress/common/c/bg:a	Lcom/nianticproject/ingress/common/c/bg;
    //   7: invokevirtual 192	com/nianticproject/ingress/common/c/bg:equals	(Ljava/lang/Object;)Z
    //   10: ifne +47 -> 57
    //   13: iconst_1
    //   14: istore_1
    //   15: iload_1
    //   16: invokestatic 196	com/google/a/a/an:b	(Z)V
    //   19: aload_0
    //   20: getfield 130	com/nianticproject/ingress/common/c/bb:j	Lcom/nianticproject/ingress/common/c/bn;
    //   23: ifnull +10 -> 33
    //   26: aload_0
    //   27: getfield 171	com/nianticproject/ingress/common/c/bb:k	Lcom/nianticproject/ingress/common/c/bi;
    //   30: ifnonnull +32 -> 62
    //   33: getstatic 49	com/nianticproject/ingress/common/c/bb:a	Lcom/nianticproject/ingress/common/w/aa;
    //   36: new 198	java/lang/Exception
    //   39: dup
    //   40: invokespecial 199	java/lang/Exception:<init>	()V
    //   43: ldc 231
    //   45: invokevirtual 119	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   48: aload_0
    //   49: getstatic 97	com/nianticproject/ingress/common/c/bg:b	Lcom/nianticproject/ingress/common/c/bg;
    //   52: putfield 99	com/nianticproject/ingress/common/c/bb:i	Lcom/nianticproject/ingress/common/c/bg;
    //   55: iconst_0
    //   56: ireturn
    //   57: iconst_0
    //   58: istore_1
    //   59: goto -44 -> 15
    //   62: aload_0
    //   63: iconst_0
    //   64: invokespecial 143	com/nianticproject/ingress/common/c/bb:a	(Z)V
    //   67: aload_0
    //   68: aload_0
    //   69: getfield 85	com/nianticproject/ingress/common/c/bb:c	Lcom/nianticproject/ingress/common/c/m;
    //   72: aload_0
    //   73: getfield 89	com/nianticproject/ingress/common/c/bb:e	Lcom/nianticproject/ingress/common/c/i;
    //   76: aload_0
    //   77: getfield 171	com/nianticproject/ingress/common/c/bb:k	Lcom/nianticproject/ingress/common/c/bi;
    //   80: invokevirtual 234	com/nianticproject/ingress/common/c/bi:a	()Lcom/nianticproject/ingress/common/c/ba;
    //   83: aload_0
    //   84: getfield 87	com/nianticproject/ingress/common/c/bb:d	Lcom/nianticproject/ingress/common/c/ad;
    //   87: invokeinterface 237 4 0
    //   92: putfield 105	com/nianticproject/ingress/common/c/bb:n	Lcom/nianticproject/ingress/common/c/bj;
    //   95: aload_0
    //   96: getfield 87	com/nianticproject/ingress/common/c/bb:d	Lcom/nianticproject/ingress/common/c/ad;
    //   99: aload_0
    //   100: getfield 93	com/nianticproject/ingress/common/c/bb:g	Lcom/nianticproject/ingress/common/c/g;
    //   103: invokevirtual 240	com/nianticproject/ingress/common/c/ad:a	(Lcom/nianticproject/ingress/common/c/g;)Lcom/nianticproject/ingress/common/c/h;
    //   106: invokevirtual 245	com/nianticproject/ingress/common/c/h:a	()F
    //   109: aload_0
    //   110: getfield 130	com/nianticproject/ingress/common/c/bb:j	Lcom/nianticproject/ingress/common/c/bn;
    //   113: invokevirtual 247	com/nianticproject/ingress/common/c/bn:b	()F
    //   116: fmul
    //   117: fstore_3
    //   118: fload_3
    //   119: ldc 248
    //   121: fcmpg
    //   122: iflt -67 -> 55
    //   125: aload_0
    //   126: getfield 105	com/nianticproject/ingress/common/c/bb:n	Lcom/nianticproject/ingress/common/c/bj;
    //   129: aload_0
    //   130: getfield 171	com/nianticproject/ingress/common/c/bb:k	Lcom/nianticproject/ingress/common/c/bi;
    //   133: fload_3
    //   134: aload_0
    //   135: getfield 130	com/nianticproject/ingress/common/c/bb:j	Lcom/nianticproject/ingress/common/c/bn;
    //   138: invokevirtual 250	com/nianticproject/ingress/common/c/bn:c	()F
    //   141: aload_0
    //   142: getfield 171	com/nianticproject/ingress/common/c/bb:k	Lcom/nianticproject/ingress/common/c/bi;
    //   145: invokevirtual 252	com/nianticproject/ingress/common/c/bi:c	()Z
    //   148: aload_0
    //   149: getfield 83	com/nianticproject/ingress/common/c/bb:p	Lcom/nianticproject/ingress/common/c/bk;
    //   152: invokeinterface 255 6 0
    //   157: iconst_1
    //   158: ireturn
    //   159: astore_2
    //   160: getstatic 49	com/nianticproject/ingress/common/c/bb:a	Lcom/nianticproject/ingress/common/w/aa;
    //   163: aload_2
    //   164: ldc_w 257
    //   167: invokevirtual 119	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   170: aload_0
    //   171: getstatic 97	com/nianticproject/ingress/common/c/bg:b	Lcom/nianticproject/ingress/common/c/bg;
    //   174: putfield 99	com/nianticproject/ingress/common/c/bb:i	Lcom/nianticproject/ingress/common/c/bg;
    //   177: iconst_0
    //   178: ireturn
    //   179: astore 4
    //   181: getstatic 49	com/nianticproject/ingress/common/c/bb:a	Lcom/nianticproject/ingress/common/w/aa;
    //   184: aload 4
    //   186: ldc_w 259
    //   189: invokevirtual 119	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   192: aload_0
    //   193: iconst_0
    //   194: invokespecial 143	com/nianticproject/ingress/common/c/bb:a	(Z)V
    //   197: goto -40 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   67	95	159	com/nianticproject/ingress/common/c/bl
    //   125	157	179	com/nianticproject/ingress/common/c/bl
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat1 * this.d.a(this.g).a();
    try
    {
      if (this.n != null)
      {
        if (f1 >= 0.05F)
        {
          this.n.a(f1, paramFloat2);
          return;
        }
        a(true);
        return;
      }
    }
    catch (bl localbl)
    {
      a.a(localbl, "setVolume failed");
      a(false);
    }
  }

  public final void a(be parambe)
  {
    this.o = parambe;
  }

  public final void a(bn parambn)
  {
    this.h.add(new bf(this, parambn, (byte)0));
    bf localbf = (bf)this.h.a();
    if ((localbf != null) && (localbf.a.h()) && (f(localbf.a)))
      g();
    while (!this.i.equals(bg.b))
      return;
    h();
  }

  public final void a(g paramg)
  {
    if ((this.i == bg.b) || (this.g != paramg) || (this.j == null))
      return;
    a(this.j.b(), this.j.c());
  }

  public final void b()
  {
    a(true);
    g(null);
  }

  public final void b(bn parambn)
  {
    an.a(parambn);
    if (!f(parambn))
      return;
    this.h.clear();
    if (parambn.equals(this.j))
    {
      if ((((bi)this.j.a().get(0)).equals(this.k)) && (this.n != null) && (this.n.b()))
        try
        {
          this.n.a();
          return;
        }
        catch (bl localbl)
        {
          a.b(localbl, "playLoaded() failed");
          return;
        }
      this.j.q();
      i();
      return;
    }
    a(true);
    g(null);
    a(parambn);
  }

  public final void c()
  {
    if ((this.j != null) && (!this.j.f()))
      g(null);
    this.i = bg.a;
    if (this.n != null);
    try
    {
      this.l = this.n.e();
      a(true);
      Iterator localIterator = this.h.iterator();
      while (localIterator.hasNext())
        if (!((bf)localIterator.next()).a.f())
          localIterator.remove();
    }
    catch (bl localbl)
    {
      while (true)
      {
        a.a(localbl, "onPause failed getting currentPlaybackPosition()");
        this.l = 0;
      }
    }
  }

  public final void c(bn parambn)
  {
    if (parambn == this.j)
      g();
  }

  public final void d()
  {
    a(false);
    if (this.i.equals(bg.a));
    while ((this.j != null) && (i()))
      return;
    h();
  }

  public final void d(bn parambn)
  {
    if ((parambn == this.j) && (!this.m))
    {
      this.m = true;
      if ((this.i == bg.c) && (this.n == null))
        break label82;
    }
    while (true)
    {
      try
      {
        this.l = this.n.e();
        a(true);
        this.i = bg.b;
        return;
      }
      catch (bl localbl)
      {
        a.a(localbl, "explicitPause failed getting currentPlaybackPosition()");
        this.l = 0;
        continue;
      }
      label82: this.l = 0;
    }
  }

  public final void e(bn parambn)
  {
    if ((parambn == this.j) && (this.m))
    {
      this.m = false;
      if (this.i != bg.a)
      {
        this.i = bg.c;
        f();
      }
    }
  }

  public final void f_()
  {
    if (this.m)
    {
      this.i = bg.b;
      return;
    }
    if (this.j == null)
    {
      this.i = bg.b;
      h();
      return;
    }
    if (this.j.f())
    {
      this.i = bg.c;
      f();
      return;
    }
    this.i = bg.c;
    i();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.bb
 * JD-Core Version:    0.6.2
 */