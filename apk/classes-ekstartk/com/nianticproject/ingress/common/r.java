package com.nianticproject.ingress.common;

import com.google.a.a.an;
import com.nianticproject.ingress.common.g.c;
import com.nianticproject.ingress.common.g.h;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.u.av;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.d;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.knobs.ScannerKnobs;

public class r
{
  private static final aa b = new aa(r.class);
  protected final k a;
  private l c;
  private final c d;
  private final u e;
  private final v f = new v((byte)0);
  private final d g = new d(i.a());
  private h h;
  private ad i;
  private ad j;
  private ad k;
  private ad l;
  private long m;
  private av n;

  public r(k paramk, l paraml, c paramc)
  {
    this.a = ((k)an.a(paramk));
    this.c = ((l)an.a(paraml));
    this.d = ((c)an.a(paramc));
    this.e = a(q.e().c());
  }

  // ERROR //
  private void a(ad paramad, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_2
    //   3: ifeq +199 -> 202
    //   6: ldc 99
    //   8: astore_3
    //   9: ldc 101
    //   11: aload_3
    //   12: invokestatic 106	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   15: aload_1
    //   16: invokestatic 66	com/google/a/a/an:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   19: pop
    //   20: aload_0
    //   21: aload_1
    //   22: putfield 108	com/nianticproject/ingress/common/r:j	Lcom/nianticproject/ingress/common/ad;
    //   25: aload_0
    //   26: getfield 61	com/nianticproject/ingress/common/r:g	Lcom/nianticproject/ingress/common/x/d;
    //   29: new 110	com/nianticproject/ingress/common/s
    //   32: dup
    //   33: aload_0
    //   34: aload_1
    //   35: invokespecial 113	com/nianticproject/ingress/common/s:<init>	(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/ad;)V
    //   38: invokevirtual 116	com/nianticproject/ingress/common/x/d:a	(Lcom/nianticproject/ingress/common/x/f;)V
    //   41: aload_0
    //   42: getfield 93	com/nianticproject/ingress/common/r:e	Lcom/nianticproject/ingress/common/u;
    //   45: aload_1
    //   46: invokevirtual 121	com/nianticproject/ingress/common/ad:a	()Lcom/google/a/d/u;
    //   49: invokeinterface 126 2 0
    //   54: aload_0
    //   55: aload_0
    //   56: getfield 49	com/nianticproject/ingress/common/r:f	Lcom/nianticproject/ingress/common/v;
    //   59: invokestatic 129	com/nianticproject/ingress/common/v:a	(Lcom/nianticproject/ingress/common/v;)Lcom/nianticproject/ingress/common/g/h;
    //   62: putfield 96	com/nianticproject/ingress/common/r:h	Lcom/nianticproject/ingress/common/g/h;
    //   65: ldc 131
    //   67: invokestatic 134	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   70: aload_0
    //   71: getfield 136	com/nianticproject/ingress/common/r:l	Lcom/nianticproject/ingress/common/ad;
    //   74: ifnull +134 -> 208
    //   77: iload_2
    //   78: ifne +130 -> 208
    //   81: dconst_1
    //   82: aload_0
    //   83: getfield 136	com/nianticproject/ingress/common/r:l	Lcom/nianticproject/ingress/common/ad;
    //   86: invokevirtual 121	com/nianticproject/ingress/common/ad:a	()Lcom/google/a/d/u;
    //   89: aload_1
    //   90: invokevirtual 121	com/nianticproject/ingress/common/ad:a	()Lcom/google/a/d/u;
    //   93: invokevirtual 141	com/google/a/d/u:a	(Lcom/google/a/d/u;)D
    //   96: invokestatic 83	com/nianticproject/ingress/common/q:e	()Lcom/nianticproject/ingress/knobs/ScannerKnobs;
    //   99: invokevirtual 143	com/nianticproject/ingress/knobs/ScannerKnobs:b	()I
    //   102: i2d
    //   103: ddiv
    //   104: invokestatic 149	java/lang/Math:max	(DD)D
    //   107: dstore 8
    //   109: aload_1
    //   110: invokevirtual 152	com/nianticproject/ingress/common/ad:b	()J
    //   113: aload_0
    //   114: getfield 154	com/nianticproject/ingress/common/r:m	J
    //   117: lsub
    //   118: l2d
    //   119: dstore 10
    //   121: invokestatic 83	com/nianticproject/ingress/common/q:e	()Lcom/nianticproject/ingress/knobs/ScannerKnobs;
    //   124: invokevirtual 156	com/nianticproject/ingress/knobs/ScannerKnobs:a	()I
    //   127: istore 12
    //   129: dload 10
    //   131: iload 12
    //   133: i2d
    //   134: dload 8
    //   136: ddiv
    //   137: dcmpg
    //   138: ifge +70 -> 208
    //   141: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   144: ldc 160
    //   146: invokestatic 134	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   149: aload_0
    //   150: getfield 162	com/nianticproject/ingress/common/r:k	Lcom/nianticproject/ingress/common/ad;
    //   153: ifnull +128 -> 281
    //   156: iload_2
    //   157: ifne +124 -> 281
    //   160: aload_0
    //   161: getfield 162	com/nianticproject/ingress/common/r:k	Lcom/nianticproject/ingress/common/ad;
    //   164: invokevirtual 121	com/nianticproject/ingress/common/ad:a	()Lcom/google/a/d/u;
    //   167: aload_1
    //   168: invokevirtual 121	com/nianticproject/ingress/common/ad:a	()Lcom/google/a/d/u;
    //   171: invokevirtual 141	com/google/a/d/u:a	(Lcom/google/a/d/u;)D
    //   174: dstore 15
    //   176: invokestatic 83	com/nianticproject/ingress/common/q:e	()Lcom/nianticproject/ingress/knobs/ScannerKnobs;
    //   179: invokevirtual 143	com/nianticproject/ingress/knobs/ScannerKnobs:b	()I
    //   182: istore 17
    //   184: dload 15
    //   186: iload 17
    //   188: i2d
    //   189: dcmpg
    //   190: ifge +91 -> 281
    //   193: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   196: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   199: aload_0
    //   200: monitorexit
    //   201: return
    //   202: ldc 164
    //   204: astore_3
    //   205: goto -196 -> 9
    //   208: aload_0
    //   209: aload_1
    //   210: putfield 136	com/nianticproject/ingress/common/r:l	Lcom/nianticproject/ingress/common/ad;
    //   213: aload_0
    //   214: aload_1
    //   215: invokevirtual 152	com/nianticproject/ingress/common/ad:b	()J
    //   218: putfield 154	com/nianticproject/ingress/common/r:m	J
    //   221: new 166	com/nianticproject/ingress/common/g/z
    //   224: dup
    //   225: aload_0
    //   226: getfield 96	com/nianticproject/ingress/common/r:h	Lcom/nianticproject/ingress/common/g/h;
    //   229: invokeinterface 171 1 0
    //   234: invokespecial 174	com/nianticproject/ingress/common/g/z:<init>	(Ljava/util/Collection;)V
    //   237: astore 13
    //   239: aload_0
    //   240: getfield 74	com/nianticproject/ingress/common/r:c	Lcom/nianticproject/ingress/common/l;
    //   243: aload_1
    //   244: invokevirtual 121	com/nianticproject/ingress/common/ad:a	()Lcom/google/a/d/u;
    //   247: aload 13
    //   249: invokevirtual 177	com/nianticproject/ingress/common/l:a	(Lcom/google/a/d/u;Lcom/nianticproject/ingress/common/g/h;)V
    //   252: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   255: goto -111 -> 144
    //   258: astore 4
    //   260: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   263: aload 4
    //   265: athrow
    //   266: astore 5
    //   268: aload_0
    //   269: monitorexit
    //   270: aload 5
    //   272: athrow
    //   273: astore 7
    //   275: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   278: aload 7
    //   280: athrow
    //   281: aload_0
    //   282: aload_1
    //   283: putfield 162	com/nianticproject/ingress/common/r:k	Lcom/nianticproject/ingress/common/ad;
    //   286: invokestatic 56	com/nianticproject/ingress/common/x/i:a	()Lcom/nianticproject/ingress/common/x/i;
    //   289: new 179	com/nianticproject/ingress/common/t
    //   292: dup
    //   293: aload_0
    //   294: invokespecial 182	com/nianticproject/ingress/common/t:<init>	(Lcom/nianticproject/ingress/common/r;)V
    //   297: invokevirtual 183	com/nianticproject/ingress/common/x/i:a	(Lcom/nianticproject/ingress/common/x/f;)V
    //   300: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   303: goto -107 -> 196
    //   306: astore 14
    //   308: invokestatic 158	com/nianticproject/ingress/shared/aj:b	()V
    //   311: aload 14
    //   313: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   9	65	258	finally
    //   141	144	258	finally
    //   193	196	258	finally
    //   252	255	258	finally
    //   275	281	258	finally
    //   300	303	258	finally
    //   308	314	258	finally
    //   196	199	266	finally
    //   260	266	266	finally
    //   65	77	273	finally
    //   81	129	273	finally
    //   208	252	273	finally
    //   144	156	306	finally
    //   160	184	306	finally
    //   281	300	306	finally
  }

  public final av a()
  {
    return this.n;
  }

  public final u a(int paramInt)
  {
    w localw = new w(this, paramInt, (byte)0);
    v.a(this.f, localw);
    return localw;
  }

  public final void a(ad paramad)
  {
    try
    {
      this.i = ((ad)an.a(paramad));
      if ((this.j == null) || (!this.i.a(this.j)))
        a(this.i, false);
      return;
    }
    finally
    {
    }
  }

  public final void a(av paramav)
  {
    this.n = paramav;
  }

  public final void b()
  {
    if (this.j != null)
      a(this.j, true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.r
 * JD-Core Version:    0.6.2
 */