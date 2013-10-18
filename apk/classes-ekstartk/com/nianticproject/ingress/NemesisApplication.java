package com.nianticproject.ingress;

import android.app.Application;
import android.content.res.AssetManager;
import com.google.analytics.tracking.android.bf;
import com.nianticproject.ingress.common.a.d;
import com.nianticproject.ingress.common.c.ak;
import com.nianticproject.ingress.common.c.g;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.q.b.r;
import com.nianticproject.ingress.common.u.b;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class NemesisApplication extends Application
  implements d
{
  private static final aa a = new aa(NemesisApplication.class);
  private static NemesisApplication b;
  private FutureTask<av> c;
  private com.google.analytics.tracking.android.aj d;
  private FutureTask<r> e;
  private p f;
  private com.nianticproject.ingress.common.c.e g;
  private ak h;
  private com.nianticproject.ingress.connectivity.a i;
  private double j = 60.0D;
  private long k = System.currentTimeMillis();
  private final long l = System.currentTimeMillis();
  private int m;
  private boolean n;
  private boolean o;

  static
  {
    com.nianticproject.ingress.o.e.a();
  }

  public static NemesisApplication a()
  {
    return b;
  }

  private static void a(com.nianticproject.ingress.common.c.e parame)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisApplication.initAudioFromPreferences");
      for (g localg : g.values())
        parame.a(localg, com.nianticproject.ingress.common.s.c.a(localg));
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  private FutureTask<com.nianticproject.ingress.common.n.a> b(String paramString)
  {
    return new FutureTask(new cm(this, paramString));
  }

  public static b f()
  {
    return c.a();
  }

  private void n()
  {
    double d1 = 0.001D * (System.currentTimeMillis() - this.k);
    this.k = System.currentTimeMillis();
    try
    {
      this.j += d1 * 0.5D;
      this.j = Math.min(60.0D, this.j);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean o()
  {
    while (true)
    {
      try
      {
        if (this.j < 1.0D)
        {
          if (!this.n)
          {
            this.n = true;
            bool = false;
            i1 = 0;
            i2 = 1;
            if (com.nianticproject.ingress.common.q.f().d())
            {
              long l1 = (System.currentTimeMillis() - this.l) / 1000L;
              if (i2 == 1)
              {
                aa localaa2 = a;
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = Long.valueOf(l1);
                localaa2.c(String.format("Analytics event rate limit reached after %d seconds", arrayOfObject2));
              }
              if (i1 == 1)
              {
                aa localaa1 = a;
                Object[] arrayOfObject1 = new Object[1];
                arrayOfObject1[0] = Long.valueOf(l1);
                localaa1.c(String.format("Analytics event quota per session reached after %d seconds", arrayOfObject1));
              }
            }
            return bool;
          }
        }
        else
        {
          if (this.m > 500)
          {
            if (this.o)
              break label199;
            this.o = true;
            i1 = 1;
            bool = false;
            i2 = 0;
            continue;
          }
          this.j -= 1.0D;
          this.m = (1 + this.m);
          bool = true;
          i1 = 0;
          i2 = 0;
          continue;
        }
      }
      finally
      {
      }
      label199: boolean bool = false;
      int i1 = 0;
      int i2 = 0;
    }
  }

  private byte[] p()
  {
    try
    {
      DataInputStream localDataInputStream = new DataInputStream(getAssets().open("common/missing_image.png"));
      byte[] arrayOfByte = new byte[localDataInputStream.available()];
      localDataInputStream.readFully(arrayOfByte);
      localDataInputStream.close();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("failed to load COMMON_MISSING_IMAGE_PNG", localIOException);
    }
  }

  public final void a(int paramInt, String paramString)
  {
    this.d.a().a(paramInt, paramString);
  }

  public final void a(String paramString)
  {
    new cj(this, paramString).e();
  }

  public final void a(String paramString1, long paramLong, String paramString2)
  {
    new ck(this, paramString1, paramLong, paramString2).e();
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    new cl(this, paramString1, paramString2, paramString3).e();
  }

  public final void b()
  {
    try
    {
      n();
      com.google.analytics.tracking.android.q.a().c();
      return;
    }
    catch (Exception localException)
    {
      a.a(localException, "Failed to dispatch stats: ");
    }
  }

  public final int c()
  {
    return this.m;
  }

  public final double d()
  {
    return this.j;
  }

  public final p e()
  {
    return this.f;
  }

  public final com.nianticproject.ingress.common.c.e g()
  {
    return this.g;
  }

  public final bf h()
  {
    return this.d.a();
  }

  public final av i()
  {
    try
    {
      av localav = (av)this.c.get();
      return localav;
    }
    catch (InterruptedException localInterruptedException)
    {
      a.b(localInterruptedException, "Interrupted while attempting to get the image cache");
      return null;
    }
    catch (ExecutionException localExecutionException)
    {
      while (true)
        a.b(localExecutionException, "ExecutionException while attempting to get the image cache");
    }
  }

  public final ak j()
  {
    return this.h;
  }

  public final r k()
  {
    try
    {
      r localr = (r)this.e.get();
      return localr;
    }
    catch (InterruptedException localInterruptedException)
    {
      a.b(localInterruptedException, "Interrupted while attempting to get the tile store");
      return null;
    }
    catch (ExecutionException localExecutionException)
    {
      while (true)
        a.b(localExecutionException, "ExecutionException while attempting to get the tile store");
    }
  }

  public final com.nianticproject.ingress.connectivity.a l()
  {
    return this.i;
  }

  // ERROR //
  public void onCreate()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 300	a:p	(Landroid/app/Application;)V
    //   4: ldc_w 302
    //   7: invokestatic 79	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   10: aload_0
    //   11: invokespecial 304	android/app/Application:onCreate	()V
    //   14: aload_0
    //   15: putstatic 68	com/nianticproject/ingress/NemesisApplication:b	Lcom/nianticproject/ingress/NemesisApplication;
    //   18: new 306	com/nianticproject/ingress/cg
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 308	com/nianticproject/ingress/cg:<init>	(Lcom/nianticproject/ingress/NemesisApplication;)V
    //   26: invokestatic 313	com/nianticproject/ingress/common/w/l:a	(Lcom/nianticproject/ingress/common/w/m;)V
    //   29: ldc_w 315
    //   32: iconst_2
    //   33: invokestatic 321	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   36: ifeq +18 -> 54
    //   39: invokestatic 327	java/util/logging/LogManager:getLogManager	()Ljava/util/logging/LogManager;
    //   42: ldc_w 329
    //   45: invokevirtual 333	java/util/logging/LogManager:getLogger	(Ljava/lang/String;)Ljava/util/logging/Logger;
    //   48: getstatic 339	java/util/logging/Level:ALL	Ljava/util/logging/Level;
    //   51: invokevirtual 345	java/util/logging/Logger:setLevel	(Ljava/util/logging/Level;)V
    //   54: new 347	com/nianticproject/ingress/g/a
    //   57: dup
    //   58: invokespecial 348	com/nianticproject/ingress/g/a:<init>	()V
    //   61: invokestatic 351	com/nianticproject/ingress/common/w/aa:a	(Lcom/nianticproject/ingress/g/d;)Lcom/nianticproject/ingress/g/d;
    //   64: pop
    //   65: new 353	com/nianticproject/ingress/knobs/a
    //   68: dup
    //   69: invokespecial 354	com/nianticproject/ingress/knobs/a:<init>	()V
    //   72: invokestatic 359	com/nianticproject/ingress/common/p/a:a	(Lcom/nianticproject/ingress/knobs/b;)V
    //   75: new 361	com/nianticproject/ingress/ch
    //   78: dup
    //   79: aload_0
    //   80: invokespecial 362	com/nianticproject/ingress/ch:<init>	(Lcom/nianticproject/ingress/NemesisApplication;)V
    //   83: invokevirtual 363	com/nianticproject/ingress/ch:e	()Lcom/nianticproject/ingress/common/f/a;
    //   86: pop
    //   87: invokestatic 366	android/support/v4/app/w:a	()V
    //   90: aload_0
    //   91: invokestatic 371	com/nianticproject/ingress/aa:a	(Landroid/content/Context;)V
    //   94: new 373	com/nianticproject/ingress/k/a
    //   97: dup
    //   98: aload_0
    //   99: invokespecial 375	com/nianticproject/ingress/k/a:<init>	(Landroid/content/Context;)V
    //   102: invokestatic 378	com/nianticproject/ingress/common/s/c:a	(Lcom/nianticproject/ingress/common/s/e;)V
    //   105: ldc_w 380
    //   108: invokestatic 79	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   111: aload_0
    //   112: invokestatic 385	com/nianticproject/ingress/ec:b	(Landroid/content/Context;)Ljava/lang/String;
    //   115: astore 5
    //   117: aload_0
    //   118: aload_0
    //   119: invokevirtual 389	com/nianticproject/ingress/NemesisApplication:getApplicationContext	()Landroid/content/Context;
    //   122: invokestatic 392	com/google/analytics/tracking/android/aj:a	(Landroid/content/Context;)Lcom/google/analytics/tracking/android/aj;
    //   125: putfield 211	com/nianticproject/ingress/NemesisApplication:d	Lcom/google/analytics/tracking/android/aj;
    //   128: aload_0
    //   129: getfield 211	com/nianticproject/ingress/NemesisApplication:d	Lcom/google/analytics/tracking/android/aj;
    //   132: invokestatic 393	com/nianticproject/ingress/ec:d	()Z
    //   135: invokevirtual 396	com/google/analytics/tracking/android/aj:a	(Z)V
    //   138: invokestatic 247	com/google/analytics/tracking/android/q:a	()Lcom/google/analytics/tracking/android/q;
    //   141: invokevirtual 398	com/google/analytics/tracking/android/q:d	()V
    //   144: aload_0
    //   145: getfield 211	com/nianticproject/ingress/NemesisApplication:d	Lcom/google/analytics/tracking/android/aj;
    //   148: astore 6
    //   150: invokestatic 393	com/nianticproject/ingress/ec:d	()Z
    //   153: ifeq +409 -> 562
    //   156: ldc_w 400
    //   159: astore 7
    //   161: aload 6
    //   163: aload 7
    //   165: invokevirtual 403	com/google/analytics/tracking/android/aj:a	(Ljava/lang/String;)Lcom/google/analytics/tracking/android/bf;
    //   168: astore 8
    //   170: aload_0
    //   171: getfield 211	com/nianticproject/ingress/NemesisApplication:d	Lcom/google/analytics/tracking/android/aj;
    //   174: aload 8
    //   176: invokevirtual 406	com/google/analytics/tracking/android/aj:a	(Lcom/google/analytics/tracking/android/bf;)V
    //   179: aload_0
    //   180: invokestatic 411	com/nianticproject/ingress/common/a/c:a	(Lcom/nianticproject/ingress/common/a/d;)V
    //   183: aload 8
    //   185: ldc_w 413
    //   188: invokevirtual 414	com/google/analytics/tracking/android/bf:a	(Ljava/lang/String;)V
    //   191: aload 8
    //   193: aload 5
    //   195: invokevirtual 416	com/google/analytics/tracking/android/bf:b	(Ljava/lang/String;)V
    //   198: getstatic 421	com/nianticproject/ingress/shared/ag:a	Lcom/nianticproject/ingress/shared/ah;
    //   201: pop
    //   202: getstatic 424	com/nianticproject/ingress/shared/ah:a	Lcom/nianticproject/ingress/shared/ah;
    //   205: pop
    //   206: aload 8
    //   208: invokevirtual 425	com/google/analytics/tracking/android/bf:b	()V
    //   211: aload 8
    //   213: invokevirtual 426	com/google/analytics/tracking/android/bf:c	()V
    //   216: aload 8
    //   218: invokevirtual 427	com/google/analytics/tracking/android/bf:a	()V
    //   221: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   224: new 429	com/google/android/a/a/a/a/b
    //   227: dup
    //   228: invokespecial 430	com/google/android/a/a/a/a/b:<init>	()V
    //   231: ldc_w 432
    //   234: invokevirtual 435	com/google/android/a/a/a/a/b:a	(Ljava/lang/String;)Lcom/google/android/a/a/a/a/b;
    //   237: invokestatic 440	com/google/android/a/a/a/a/e:a	(Lcom/google/android/a/a/a/a/b;)V
    //   240: new 442	android/util/DisplayMetrics
    //   243: dup
    //   244: invokespecial 443	android/util/DisplayMetrics:<init>	()V
    //   247: astore 11
    //   249: aload_0
    //   250: ldc_w 445
    //   253: invokevirtual 451	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   256: checkcast 453	android/view/WindowManager
    //   259: invokeinterface 457 1 0
    //   264: aload 11
    //   266: invokevirtual 463	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   269: aload 11
    //   271: getfield 466	android/util/DisplayMetrics:densityDpi	I
    //   274: sipush 480
    //   277: if_icmplt +307 -> 584
    //   280: getstatic 471	com/nianticproject/ingress/common/b/q:e	Lcom/nianticproject/ingress/common/b/q;
    //   283: astore 12
    //   285: new 473	com/nianticproject/ingress/common/b/p
    //   288: dup
    //   289: ldc_w 329
    //   292: aload 12
    //   294: invokespecial 476	com/nianticproject/ingress/common/b/p:<init>	(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/q;)V
    //   297: astore 13
    //   299: aload 13
    //   301: invokestatic 480	a:aq	(Lcom/nianticproject/ingress/common/b/p;)V
    //   304: aload 13
    //   306: invokestatic 485	com/nianticproject/ingress/common/b/c:a	(Lcom/nianticproject/ingress/common/b/a;)V
    //   309: aload_0
    //   310: invokestatic 489	com/nianticproject/ingress/common/g/p:a	()Lcom/nianticproject/ingress/common/g/p;
    //   313: putfield 258	com/nianticproject/ingress/NemesisApplication:f	Lcom/nianticproject/ingress/common/g/p;
    //   316: invokestatic 123	com/nianticproject/ingress/c:a	()Lcom/nianticproject/ingress/c;
    //   319: pop
    //   320: iconst_5
    //   321: invokestatic 494	com/google/a/c/eq:a	(I)Ljava/util/ArrayList;
    //   324: astore 15
    //   326: aload_0
    //   327: ldc_w 496
    //   330: invokespecial 498	com/nianticproject/ingress/NemesisApplication:b	(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
    //   333: astore 16
    //   335: aload 15
    //   337: aload 16
    //   339: invokeinterface 504 2 0
    //   344: pop
    //   345: aload_0
    //   346: new 100	java/util/concurrent/FutureTask
    //   349: dup
    //   350: new 506	com/nianticproject/ingress/cn
    //   353: dup
    //   354: aload_0
    //   355: aload 16
    //   357: invokespecial 509	com/nianticproject/ingress/cn:<init>	(Lcom/nianticproject/ingress/NemesisApplication;Ljava/util/concurrent/FutureTask;)V
    //   360: invokespecial 108	java/util/concurrent/FutureTask:<init>	(Ljava/util/concurrent/Callable;)V
    //   363: putfield 286	com/nianticproject/ingress/NemesisApplication:e	Ljava/util/concurrent/FutureTask;
    //   366: aload 15
    //   368: aload_0
    //   369: getfield 286	com/nianticproject/ingress/NemesisApplication:e	Ljava/util/concurrent/FutureTask;
    //   372: invokeinterface 504 2 0
    //   377: pop
    //   378: aload_0
    //   379: ldc_w 511
    //   382: invokespecial 498	com/nianticproject/ingress/NemesisApplication:b	(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
    //   385: astore 19
    //   387: aload 15
    //   389: aload 19
    //   391: invokeinterface 504 2 0
    //   396: pop
    //   397: aload_0
    //   398: new 100	java/util/concurrent/FutureTask
    //   401: dup
    //   402: new 513	com/nianticproject/ingress/co
    //   405: dup
    //   406: aload_0
    //   407: aload 19
    //   409: invokespecial 514	com/nianticproject/ingress/co:<init>	(Lcom/nianticproject/ingress/NemesisApplication;Ljava/util/concurrent/FutureTask;)V
    //   412: invokespecial 108	java/util/concurrent/FutureTask:<init>	(Ljava/util/concurrent/Callable;)V
    //   415: putfield 268	com/nianticproject/ingress/NemesisApplication:c	Ljava/util/concurrent/FutureTask;
    //   418: aload 15
    //   420: aload_0
    //   421: getfield 268	com/nianticproject/ingress/NemesisApplication:c	Ljava/util/concurrent/FutureTask;
    //   424: invokeinterface 504 2 0
    //   429: pop
    //   430: new 516	com/nianticproject/ingress/ci
    //   433: dup
    //   434: aload_0
    //   435: aload 15
    //   437: invokespecial 519	com/nianticproject/ingress/ci:<init>	(Lcom/nianticproject/ingress/NemesisApplication;Ljava/util/List;)V
    //   440: invokevirtual 520	com/nianticproject/ingress/ci:e	()Lcom/nianticproject/ingress/common/f/a;
    //   443: pop
    //   444: ldc_w 522
    //   447: invokestatic 79	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   450: new 524	java/io/File
    //   453: dup
    //   454: aload_0
    //   455: invokevirtual 528	com/nianticproject/ingress/NemesisApplication:getCacheDir	()Ljava/io/File;
    //   458: ldc_w 530
    //   461: invokespecial 533	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   464: astore 24
    //   466: aload 24
    //   468: invokevirtual 536	java/io/File:mkdirs	()Z
    //   471: pop
    //   472: aload 24
    //   474: invokestatic 541	com/nianticproject/ingress/common/k/c:a	(Ljava/io/File;)V
    //   477: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   480: ldc_w 543
    //   483: invokestatic 79	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   486: new 545	com/nianticproject/ingress/common/c/ad
    //   489: dup
    //   490: new 547	com/nianticproject/ingress/a/a
    //   493: dup
    //   494: aload_0
    //   495: invokevirtual 389	com/nianticproject/ingress/NemesisApplication:getApplicationContext	()Landroid/content/Context;
    //   498: invokespecial 548	com/nianticproject/ingress/a/a:<init>	(Landroid/content/Context;)V
    //   501: invokespecial 551	com/nianticproject/ingress/common/c/ad:<init>	(Lcom/nianticproject/ingress/common/c/m;)V
    //   504: invokestatic 556	com/nianticproject/ingress/common/c/o:a	(Lcom/nianticproject/ingress/common/c/ai;)V
    //   507: aload_0
    //   508: invokestatic 558	com/nianticproject/ingress/common/c/o:a	()Lcom/nianticproject/ingress/common/c/e;
    //   511: putfield 261	com/nianticproject/ingress/NemesisApplication:g	Lcom/nianticproject/ingress/common/c/e;
    //   514: aload_0
    //   515: getfield 261	com/nianticproject/ingress/NemesisApplication:g	Lcom/nianticproject/ingress/common/c/e;
    //   518: invokestatic 560	com/nianticproject/ingress/NemesisApplication:a	(Lcom/nianticproject/ingress/common/c/e;)V
    //   521: aload_0
    //   522: new 562	com/nianticproject/ingress/common/c/ak
    //   525: dup
    //   526: aload_0
    //   527: getfield 261	com/nianticproject/ingress/NemesisApplication:g	Lcom/nianticproject/ingress/common/c/e;
    //   530: aload_0
    //   531: getfield 258	com/nianticproject/ingress/NemesisApplication:f	Lcom/nianticproject/ingress/common/g/p;
    //   534: invokevirtual 565	com/nianticproject/ingress/common/g/p:b	()Lcom/nianticproject/ingress/common/model/k;
    //   537: invokespecial 568	com/nianticproject/ingress/common/c/ak:<init>	(Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/model/k;)V
    //   540: putfield 283	com/nianticproject/ingress/NemesisApplication:h	Lcom/nianticproject/ingress/common/c/ak;
    //   543: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   546: aload_0
    //   547: new 570	com/nianticproject/ingress/connectivity/a
    //   550: dup
    //   551: aload_0
    //   552: invokespecial 571	com/nianticproject/ingress/connectivity/a:<init>	(Landroid/content/Context;)V
    //   555: putfield 295	com/nianticproject/ingress/NemesisApplication:i	Lcom/nianticproject/ingress/connectivity/a;
    //   558: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   561: return
    //   562: ldc_w 573
    //   565: astore 7
    //   567: goto -406 -> 161
    //   570: astore 4
    //   572: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   575: aload 4
    //   577: athrow
    //   578: astore_1
    //   579: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   582: aload_1
    //   583: athrow
    //   584: aload 11
    //   586: getfield 466	android/util/DisplayMetrics:densityDpi	I
    //   589: sipush 320
    //   592: if_icmplt +11 -> 603
    //   595: getstatic 575	com/nianticproject/ingress/common/b/q:d	Lcom/nianticproject/ingress/common/b/q;
    //   598: astore 12
    //   600: goto -315 -> 285
    //   603: aload 11
    //   605: getfield 466	android/util/DisplayMetrics:densityDpi	I
    //   608: sipush 240
    //   611: if_icmplt +11 -> 622
    //   614: getstatic 577	com/nianticproject/ingress/common/b/q:c	Lcom/nianticproject/ingress/common/b/q;
    //   617: astore 12
    //   619: goto -334 -> 285
    //   622: aload 11
    //   624: getfield 466	android/util/DisplayMetrics:densityDpi	I
    //   627: sipush 160
    //   630: if_icmplt +11 -> 641
    //   633: getstatic 579	com/nianticproject/ingress/common/b/q:b	Lcom/nianticproject/ingress/common/b/q;
    //   636: astore 12
    //   638: goto -353 -> 285
    //   641: getstatic 581	com/nianticproject/ingress/common/b/q:a	Lcom/nianticproject/ingress/common/b/q;
    //   644: astore 12
    //   646: goto -361 -> 285
    //   649: astore 23
    //   651: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   654: aload 23
    //   656: athrow
    //   657: astore 26
    //   659: invokestatic 97	com/nianticproject/ingress/shared/aj:b	()V
    //   662: aload 26
    //   664: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   105	156	570	finally
    //   161	221	570	finally
    //   4	54	578	finally
    //   54	105	578	finally
    //   221	285	578	finally
    //   285	444	578	finally
    //   477	480	578	finally
    //   543	558	578	finally
    //   572	578	578	finally
    //   584	600	578	finally
    //   603	619	578	finally
    //   622	638	578	finally
    //   641	646	578	finally
    //   651	657	578	finally
    //   659	665	578	finally
    //   444	477	649	finally
    //   480	543	657	finally
  }

  public void onTerminate()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisApplication.onTerminate");
      com.nianticproject.ingress.common.a.c.b();
      super.onTerminate();
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.NemesisApplication
 * JD-Core Version:    0.6.2
 */