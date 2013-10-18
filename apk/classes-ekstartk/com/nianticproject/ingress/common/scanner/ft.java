package com.nianticproject.ingress.common.scanner;

import a.a.a.a.b.bj;
import a.a.a.a.b.bk;
import a.a.a.a.b.bl;
import a.a.a.a.b.bw;
import a.a.a.a.c.j;
import a.a.a.a.c.l;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.collision.Ray;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.ak;
import com.nianticproject.ingress.common.j.au;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.r;
import com.nianticproject.ingress.common.q.a;
import com.nianticproject.ingress.common.scanner.a.ad;
import com.nianticproject.ingress.common.scanner.a.ag;
import com.nianticproject.ingress.common.scanner.a.k;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.z;
import java.util.Iterator;
import java.util.List;

public final class ft
  implements Disposable
{
  private static final com.nianticproject.ingress.common.t.b a = com.nianticproject.ingress.common.t.c.a("Tile Cull");
  private static final com.nianticproject.ingress.common.t.b b = com.nianticproject.ingress.common.t.c.a("Render ground");
  private static final com.nianticproject.ingress.common.t.b c = com.nianticproject.ingress.common.t.c.a("Render objects");
  private static final com.nianticproject.ingress.common.t.b d = com.nianticproject.ingress.common.t.c.a("Render vfx");
  private final Matrix4 e = new Matrix4();
  private final k f = new k();
  private final ag g = new ag();
  private final bl<ep> h = new bl((byte)0);
  private final r i = new r();
  private final r j = new r();
  private final List<au> k = eq.a();
  private final es l;
  private long m;
  private long n;
  private final bw o = new bw();
  private final bw p = new bw();
  private ad q;
  private u r;
  private a s;
  private double t;
  private double u;
  private int v;
  private float w;
  private final n x = new n();

  public ft(es parames)
  {
    this.l = ((es)an.a(parames));
  }

  public final ej a(Ray paramRay)
  {
    l locall = this.h.b().a();
    Object localObject1 = null;
    Object localObject2;
    if (locall.hasNext())
    {
      ep localep = (ep)locall.next();
      if (localep.b != this.v)
        break label97;
      localObject2 = localep.a(paramRay);
      if ((localObject2 == null) || ((localObject1 != null) && (((ak)localObject2).b >= localObject1.b)))
        break label97;
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      if (localObject1 == null)
        return null;
      return (ej)localObject1.a;
      label97: localObject2 = localObject1;
    }
  }

  public final ej a(f paramf, Vector2 paramVector2)
  {
    l locall = this.h.b().a();
    Object localObject1 = null;
    Object localObject2;
    if (locall.hasNext())
    {
      localObject2 = ((ep)locall.next()).a(paramf, z.a, paramVector2);
      if ((localObject2 == null) || (((ak)localObject2).b >= 0.045F) || ((localObject1 != null) && (((ak)localObject2).b >= localObject1.b)))
        break label102;
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      if (localObject1 == null)
        return null;
      return (ej)localObject1.a;
      label102: localObject2 = localObject1;
    }
  }

  public final void a(float paramFloat)
  {
    this.t += paramFloat;
    l locall = this.h.d().b();
    while (locall.hasNext())
    {
      ep localep = (ep)((bj)locall.next()).getValue();
      if (!localep.a(paramFloat))
      {
        localep.dispose();
        locall.remove();
      }
    }
    this.i.a(paramFloat);
    this.j.a(paramFloat);
  }

  public final void a(long paramLong, fg paramfg)
  {
    ep localep = (ep)this.h.e(paramLong);
    if (localep == null)
    {
      localep = this.l.a(paramLong);
      this.h.a(paramLong, localep);
    }
    localep.b(paramfg);
  }

  public final void a(u paramu)
  {
    this.r = ((u)an.a(paramu));
    this.s = a.a(paramu);
    this.w = ((float)(1.0D / com.nianticproject.ingress.common.q.b.a(paramu.b())));
    int i1 = 16384 + (int)(275.0D * com.nianticproject.ingress.common.q.b.a(this.r.b()));
    double d1 = i1;
    this.f.a();
    k localk1 = this.f;
    double[] arrayOfDouble1 = new double[3];
    arrayOfDouble1[0] = (-d1);
    arrayOfDouble1[1] = 0.0D;
    arrayOfDouble1[2] = (-d1);
    localk1.a(arrayOfDouble1);
    k localk2 = this.f;
    double[] arrayOfDouble2 = new double[3];
    arrayOfDouble2[0] = d1;
    arrayOfDouble2[1] = 0.0D;
    arrayOfDouble2[2] = (-d1);
    localk2.a(arrayOfDouble2);
    this.f.a(new double[] { d1, 0.0D, d1 });
    k localk3 = this.f;
    double[] arrayOfDouble3 = new double[3];
    arrayOfDouble3[0] = (-d1);
    arrayOfDouble3[1] = 0.0D;
    arrayOfDouble3[2] = d1;
    localk3.a(arrayOfDouble3);
    int i2 = this.s.a();
    int i3 = this.s.b();
    int i4 = i2 - i1;
    int i5 = i3 - i1;
    int i6 = i2 + i1;
    int i7 = i3 + i1;
    int i8 = i4 >> 13;
    int i9 = i5 >> 13;
    int i10 = i6 >> 13;
    int i11 = i7 >> 13;
    this.s.a();
    this.s.b();
    long l1 = com.nianticproject.ingress.common.q.c.a(17, i8, i9);
    long l2 = com.nianticproject.ingress.common.q.c.a(17, i10, i11);
    if ((this.m == l1) && (this.n == l2));
    for (int i13 = 0; ; i13 = 1)
    {
      if (this.q != null)
      {
        this.q.a(paramu);
        if (i13 != 0)
          this.q.a(this.o);
      }
      return;
      this.m = l1;
      this.n = l2;
      this.o.clear();
      for (int i12 = i9; i12 <= i11; i12++)
        for (int i14 = i8; i14 <= i10; i14++)
          this.o.d(com.nianticproject.ingress.common.q.c.a(17, i14, i12));
    }
  }

  public final void a(au paramau)
  {
    this.k.add(paramau);
  }

  // ERROR //
  public final void a(f paramf)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: ldc_w 289
    //   5: invokestatic 294	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 226	com/nianticproject/ingress/common/scanner/ft:r	Lcom/google/a/d/u;
    //   12: astore 4
    //   14: aload 4
    //   16: ifnonnull +7 -> 23
    //   19: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   22: return
    //   23: aload_0
    //   24: getfield 182	com/nianticproject/ingress/common/scanner/ft:t	D
    //   27: pop2
    //   28: aload_0
    //   29: getfield 298	com/nianticproject/ingress/common/scanner/ft:u	D
    //   32: pop2
    //   33: aload_0
    //   34: aload_0
    //   35: getfield 182	com/nianticproject/ingress/common/scanner/ft:t	D
    //   38: putfield 298	com/nianticproject/ingress/common/scanner/ft:u	D
    //   41: aload_1
    //   42: invokevirtual 303	com/nianticproject/ingress/common/j/f:e	()Lcom/badlogic/gdx/math/Matrix4;
    //   45: astore 9
    //   47: ldc_w 305
    //   50: invokestatic 294	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   53: getstatic 60	com/nianticproject/ingress/common/scanner/ft:a	Lcom/nianticproject/ingress/common/t/b;
    //   56: invokevirtual 308	com/nianticproject/ingress/common/t/b:b	()V
    //   59: aload_0
    //   60: getfield 81	com/nianticproject/ingress/common/scanner/ft:e	Lcom/badlogic/gdx/math/Matrix4;
    //   63: aload 9
    //   65: invokevirtual 312	com/badlogic/gdx/math/Matrix4:set	(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    //   68: aload_0
    //   69: getfield 243	com/nianticproject/ingress/common/scanner/ft:w	F
    //   72: aload_0
    //   73: getfield 243	com/nianticproject/ingress/common/scanner/ft:w	F
    //   76: aload_0
    //   77: getfield 243	com/nianticproject/ingress/common/scanner/ft:w	F
    //   80: invokevirtual 316	com/badlogic/gdx/math/Matrix4:scale	(FFF)Lcom/badlogic/gdx/math/Matrix4;
    //   83: pop
    //   84: aload_0
    //   85: getfield 86	com/nianticproject/ingress/common/scanner/ft:f	Lcom/nianticproject/ingress/common/scanner/a/k;
    //   88: aload_0
    //   89: getfield 81	com/nianticproject/ingress/common/scanner/ft:e	Lcom/badlogic/gdx/math/Matrix4;
    //   92: invokevirtual 319	com/nianticproject/ingress/common/scanner/a/k:a	(Lcom/badlogic/gdx/math/Matrix4;)V
    //   95: aload_0
    //   96: getfield 233	com/nianticproject/ingress/common/scanner/ft:s	Lcom/nianticproject/ingress/common/q/a;
    //   99: invokevirtual 253	com/nianticproject/ingress/common/q/a:a	()I
    //   102: i2d
    //   103: dstore 12
    //   105: aload_0
    //   106: getfield 233	com/nianticproject/ingress/common/scanner/ft:s	Lcom/nianticproject/ingress/common/q/a;
    //   109: invokevirtual 255	com/nianticproject/ingress/common/q/a:b	()I
    //   112: i2d
    //   113: dstore 14
    //   115: aload_0
    //   116: getfield 91	com/nianticproject/ingress/common/scanner/ft:g	Lcom/nianticproject/ingress/common/scanner/a/ag;
    //   119: invokevirtual 320	com/nianticproject/ingress/common/scanner/a/ag:a	()V
    //   122: iconst_0
    //   123: istore 16
    //   125: iload 16
    //   127: aload_0
    //   128: getfield 86	com/nianticproject/ingress/common/scanner/ft:f	Lcom/nianticproject/ingress/common/scanner/a/k;
    //   131: invokevirtual 321	com/nianticproject/ingress/common/scanner/a/k:b	()I
    //   134: if_icmpge +41 -> 175
    //   137: aload_0
    //   138: getfield 86	com/nianticproject/ingress/common/scanner/ft:f	Lcom/nianticproject/ingress/common/scanner/a/k;
    //   141: iload 16
    //   143: invokevirtual 324	com/nianticproject/ingress/common/scanner/a/k:a	(I)[D
    //   146: astore 31
    //   148: aload_0
    //   149: getfield 91	com/nianticproject/ingress/common/scanner/ft:g	Lcom/nianticproject/ingress/common/scanner/a/ag;
    //   152: dload 12
    //   154: aload 31
    //   156: iconst_0
    //   157: daload
    //   158: dsub
    //   159: dload 14
    //   161: aload 31
    //   163: iconst_2
    //   164: daload
    //   165: dsub
    //   166: invokevirtual 327	com/nianticproject/ingress/common/scanner/a/ag:a	(DD)V
    //   169: iinc 16 1
    //   172: goto -47 -> 125
    //   175: aload_0
    //   176: getfield 91	com/nianticproject/ingress/common/scanner/ft:g	Lcom/nianticproject/ingress/common/scanner/a/ag;
    //   179: aload_0
    //   180: getfield 119	com/nianticproject/ingress/common/scanner/ft:p	La/a/a/a/b/bw;
    //   183: invokevirtual 328	com/nianticproject/ingress/common/scanner/a/ag:a	(La/a/a/a/b/bw;)V
    //   186: getstatic 60	com/nianticproject/ingress/common/scanner/ft:a	Lcom/nianticproject/ingress/common/t/b;
    //   189: pop
    //   190: invokestatic 330	com/nianticproject/ingress/common/t/b:c	()V
    //   193: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   196: iconst_0
    //   197: istore 18
    //   199: iload 18
    //   201: aload_0
    //   202: getfield 112	com/nianticproject/ingress/common/scanner/ft:k	Ljava/util/List;
    //   205: invokeinterface 333 1 0
    //   210: if_icmpge +59 -> 269
    //   213: aload_0
    //   214: getfield 112	com/nianticproject/ingress/common/scanner/ft:k	Ljava/util/List;
    //   217: iload 18
    //   219: invokeinterface 337 2 0
    //   224: checkcast 339	com/nianticproject/ingress/common/j/au
    //   227: astore 28
    //   229: aload_0
    //   230: getfield 119	com/nianticproject/ingress/common/scanner/ft:p	La/a/a/a/b/bw;
    //   233: astore 29
    //   235: aload_0
    //   236: getfield 117	com/nianticproject/ingress/common/scanner/ft:o	La/a/a/a/b/bw;
    //   239: pop
    //   240: aload 28
    //   242: aload 29
    //   244: invokeinterface 340 2 0
    //   249: iinc 18 1
    //   252: goto -53 -> 199
    //   255: astore 10
    //   257: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   260: aload 10
    //   262: athrow
    //   263: astore_3
    //   264: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   267: aload_3
    //   268: athrow
    //   269: getstatic 346	com/badlogic/gdx/Gdx:gl20	Lcom/badlogic/gdx/graphics/GL20;
    //   272: astore 19
    //   274: aload 19
    //   276: fconst_1
    //   277: invokeinterface 351 2 0
    //   282: aload 19
    //   284: sipush 2884
    //   287: invokeinterface 355 2 0
    //   292: aload 19
    //   294: sipush 2305
    //   297: invokeinterface 358 2 0
    //   302: aload 19
    //   304: sipush 1029
    //   307: invokeinterface 361 2 0
    //   312: aload 19
    //   314: sipush 2929
    //   317: invokeinterface 355 2 0
    //   322: aload 19
    //   324: ldc_w 362
    //   327: invokeinterface 365 2 0
    //   332: aload 19
    //   334: sipush 770
    //   337: sipush 771
    //   340: invokeinterface 369 3 0
    //   345: aload 19
    //   347: sipush 3042
    //   350: invokeinterface 355 2 0
    //   355: aload 19
    //   357: iconst_0
    //   358: invokeinterface 373 2 0
    //   363: aload_0
    //   364: getfield 266	com/nianticproject/ingress/common/scanner/ft:q	Lcom/nianticproject/ingress/common/scanner/a/ad;
    //   367: ifnull +18 -> 385
    //   370: aload_0
    //   371: getfield 266	com/nianticproject/ingress/common/scanner/ft:q	Lcom/nianticproject/ingress/common/scanner/a/ad;
    //   374: aload_1
    //   375: invokevirtual 303	com/nianticproject/ingress/common/j/f:e	()Lcom/badlogic/gdx/math/Matrix4;
    //   378: aload_0
    //   379: getfield 119	com/nianticproject/ingress/common/scanner/ft:p	La/a/a/a/b/bw;
    //   382: invokevirtual 376	com/nianticproject/ingress/common/scanner/a/ad:a	(Lcom/badlogic/gdx/math/Matrix4;La/a/a/a/b/bw;)V
    //   385: getstatic 64	com/nianticproject/ingress/common/scanner/ft:b	Lcom/nianticproject/ingress/common/t/b;
    //   388: invokevirtual 308	com/nianticproject/ingress/common/t/b:b	()V
    //   391: aload_0
    //   392: getfield 103	com/nianticproject/ingress/common/scanner/ft:i	Lcom/nianticproject/ingress/common/j/r;
    //   395: getstatic 175	com/nianticproject/ingress/common/w/z:a	Lcom/badlogic/gdx/math/Matrix4;
    //   398: aload_1
    //   399: aload_0
    //   400: getfield 124	com/nianticproject/ingress/common/scanner/ft:x	Lcom/nianticproject/ingress/common/j/n;
    //   403: invokevirtual 379	com/nianticproject/ingress/common/j/r:a	(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    //   406: getstatic 64	com/nianticproject/ingress/common/scanner/ft:b	Lcom/nianticproject/ingress/common/t/b;
    //   409: pop
    //   410: getstatic 68	com/nianticproject/ingress/common/scanner/ft:c	Lcom/nianticproject/ingress/common/t/b;
    //   413: invokestatic 382	com/nianticproject/ingress/common/t/b:a	(Lcom/nianticproject/ingress/common/t/b;)V
    //   416: aload 19
    //   418: sipush 3042
    //   421: invokeinterface 385 2 0
    //   426: aload 19
    //   428: iconst_1
    //   429: invokeinterface 373 2 0
    //   434: aload_0
    //   435: getfield 124	com/nianticproject/ingress/common/scanner/ft:x	Lcom/nianticproject/ingress/common/j/n;
    //   438: astore 21
    //   440: ldc_w 387
    //   443: invokestatic 294	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   446: aload_0
    //   447: iconst_1
    //   448: aload_0
    //   449: getfield 158	com/nianticproject/ingress/common/scanner/ft:v	I
    //   452: iadd
    //   453: putfield 158	com/nianticproject/ingress/common/scanner/ft:v	I
    //   456: aload_0
    //   457: getfield 119	com/nianticproject/ingress/common/scanner/ft:p	La/a/a/a/b/bw;
    //   460: invokevirtual 388	a/a/a/a/b/bw:size	()I
    //   463: istore 23
    //   465: iload_2
    //   466: iload 23
    //   468: if_icmpge +66 -> 534
    //   471: aload_0
    //   472: getfield 98	com/nianticproject/ingress/common/scanner/ft:h	La/a/a/a/b/bl;
    //   475: aload_0
    //   476: getfield 119	com/nianticproject/ingress/common/scanner/ft:p	La/a/a/a/b/bw;
    //   479: iload_2
    //   480: invokevirtual 391	a/a/a/a/b/bw:g	(I)J
    //   483: invokevirtual 212	a/a/a/a/b/bl:e	(J)Ljava/lang/Object;
    //   486: checkcast 154	com/nianticproject/ingress/common/scanner/ep
    //   489: astore 24
    //   491: aload 24
    //   493: ifnull +35 -> 528
    //   496: aload 24
    //   498: getfield 156	com/nianticproject/ingress/common/scanner/ep:b	I
    //   501: aload_0
    //   502: getfield 158	com/nianticproject/ingress/common/scanner/ft:v	I
    //   505: if_icmpeq +23 -> 528
    //   508: aload 24
    //   510: aload_0
    //   511: getfield 158	com/nianticproject/ingress/common/scanner/ft:v	I
    //   514: putfield 156	com/nianticproject/ingress/common/scanner/ep:b	I
    //   517: aload 24
    //   519: getstatic 175	com/nianticproject/ingress/common/w/z:a	Lcom/badlogic/gdx/math/Matrix4;
    //   522: aload_1
    //   523: aload 21
    //   525: invokevirtual 392	com/nianticproject/ingress/common/scanner/ep:a	(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    //   528: iinc 2 1
    //   531: goto -66 -> 465
    //   534: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   537: aload_0
    //   538: getfield 124	com/nianticproject/ingress/common/scanner/ft:x	Lcom/nianticproject/ingress/common/j/n;
    //   541: invokevirtual 393	com/nianticproject/ingress/common/j/n:a	()V
    //   544: getstatic 68	com/nianticproject/ingress/common/scanner/ft:c	Lcom/nianticproject/ingress/common/t/b;
    //   547: pop
    //   548: getstatic 72	com/nianticproject/ingress/common/scanner/ft:d	Lcom/nianticproject/ingress/common/t/b;
    //   551: invokestatic 382	com/nianticproject/ingress/common/t/b:a	(Lcom/nianticproject/ingress/common/t/b;)V
    //   554: ldc_w 395
    //   557: invokestatic 294	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   560: aload_0
    //   561: getfield 105	com/nianticproject/ingress/common/scanner/ft:j	Lcom/nianticproject/ingress/common/j/r;
    //   564: getstatic 175	com/nianticproject/ingress/common/w/z:a	Lcom/badlogic/gdx/math/Matrix4;
    //   567: aload_1
    //   568: aconst_null
    //   569: invokevirtual 379	com/nianticproject/ingress/common/j/r:a	(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    //   572: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   575: getstatic 72	com/nianticproject/ingress/common/scanner/ft:d	Lcom/nianticproject/ingress/common/t/b;
    //   578: pop
    //   579: invokestatic 330	com/nianticproject/ingress/common/t/b:c	()V
    //   582: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   585: return
    //   586: astore 22
    //   588: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   591: aload 22
    //   593: athrow
    //   594: astore 26
    //   596: invokestatic 296	com/nianticproject/ingress/shared/aj:b	()V
    //   599: aload 26
    //   601: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   47	122	255	finally
    //   125	169	255	finally
    //   175	193	255	finally
    //   2	14	263	finally
    //   23	47	263	finally
    //   193	196	263	finally
    //   199	249	263	finally
    //   257	263	263	finally
    //   269	385	263	finally
    //   385	440	263	finally
    //   534	554	263	finally
    //   572	582	263	finally
    //   588	594	263	finally
    //   596	602	263	finally
    //   440	465	586	finally
    //   471	491	586	finally
    //   496	528	586	finally
    //   554	572	594	finally
  }

  public final void a(o paramo)
  {
    this.i.b(paramo);
  }

  public final void a(ad paramad)
  {
    this.q = paramad;
  }

  public final void b(o paramo)
  {
    this.j.b(paramo);
  }

  public final void dispose()
  {
    this.i.dispose();
    this.j.dispose();
    ac.a(this.q);
    l locall = this.h.b().a();
    while (locall.hasNext())
      ((ep)locall.next()).dispose();
    this.h.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ft
 * JD-Core Version:    0.6.2
 */