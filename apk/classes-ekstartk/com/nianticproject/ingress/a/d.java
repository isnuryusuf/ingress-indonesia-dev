package com.nianticproject.ingress.a;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import com.google.a.a.an;
import com.nianticproject.ingress.common.c.ai;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bj;
import com.nianticproject.ingress.common.c.bk;
import com.nianticproject.ingress.common.c.bl;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.al;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.shared.aj;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

class d
  implements bj
{
  private static final aa a = new aa(d.class);
  private static final AtomicInteger b = new AtomicInteger(1);
  private static boolean c = false;
  private static boolean d = false;
  private static final Executor v = new h();
  private final MediaPlayer e = new MediaPlayer();
  private final int f = b.getAndIncrement();
  private final AssetManager g;
  private final String h;
  private final ai i;
  private bi j;
  private float k;
  private float l;
  private boolean m;
  private int n;
  private bk o;
  private final Object p = new Object();
  private k q = k.a;
  private j r;
  private CountDownLatch s;
  private final MediaPlayer.OnCompletionListener t = new e(this);
  private final MediaPlayer.OnErrorListener u = new f(this);

  public d(AssetManager paramAssetManager, String paramString, ai paramai)
  {
    this.g = ((AssetManager)an.a(paramAssetManager));
    if (paramString == null)
      paramString = "";
    this.h = paramString;
    this.i = paramai;
  }

  private void a(String paramString)
  {
    switch (i.a[this.q.ordinal()])
    {
    default:
      throw new IllegalStateException("unexpected state=" + this.q);
    case 1:
    case 4:
    case 5:
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = this.q;
      throw new bl(String.format("%s failed: player is %s", arrayOfObject));
    case 2:
    case 3:
    }
  }

  private void a(String paramString, Exception paramException)
  {
    this.q = k.e;
    throw new bl(paramString + " failed", paramException);
  }

  private void a(boolean paramBoolean)
  {
    try
    {
      this.e.setLooping(this.m);
      this.e.setOnCompletionListener(this.t);
      this.e.setOnErrorListener(this.u);
      b(this.k, this.l);
      if (paramBoolean)
      {
        this.q = k.d;
        h();
        return;
      }
      this.q = k.c;
      return;
    }
    catch (Exception localException)
    {
      a("configurePlayerAfterLoad", localException);
    }
  }

  private void b(float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat1 * y.b((paramFloat2 + 1.0F) / 2.0F);
    float f2 = paramFloat1 * y.b((1.0F - paramFloat2) / 2.0F);
    this.e.setVolume(f1, f2);
  }

  // ERROR //
  private void b(bi parambi, float paramFloat1, float paramFloat2, boolean paramBoolean, bk parambk)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_m1
    //   4: putfield 224	com/nianticproject/ingress/a/d:n	I
    //   7: aload_0
    //   8: invokespecial 226	com/nianticproject/ingress/a/d:i	()V
    //   11: aload_0
    //   12: getfield 88	com/nianticproject/ingress/a/d:p	Ljava/lang/Object;
    //   15: astore 7
    //   17: aload 7
    //   19: monitorenter
    //   20: aload_0
    //   21: getfield 80	com/nianticproject/ingress/a/d:e	Landroid/media/MediaPlayer;
    //   24: invokevirtual 229	android/media/MediaPlayer:reset	()V
    //   27: aload_0
    //   28: getstatic 92	com/nianticproject/ingress/a/k:a	Lcom/nianticproject/ingress/a/k;
    //   31: putfield 94	com/nianticproject/ingress/a/d:q	Lcom/nianticproject/ingress/a/k;
    //   34: aload 7
    //   36: monitorexit
    //   37: aload_0
    //   38: getfield 88	com/nianticproject/ingress/a/d:p	Ljava/lang/Object;
    //   41: astore 10
    //   43: aload 10
    //   45: monitorenter
    //   46: getstatic 133	com/nianticproject/ingress/a/i:a	[I
    //   49: aload_0
    //   50: getfield 94	com/nianticproject/ingress/a/d:q	Lcom/nianticproject/ingress/a/k;
    //   53: invokevirtual 136	com/nianticproject/ingress/a/k:ordinal	()I
    //   56: iaload
    //   57: tableswitch	default:+35 -> 92, 1:+35->92, 2:+35->92, 3:+35->92, 4:+156->213, 5:+174->231
    //   93: aload_1
    //   94: putfield 231	com/nianticproject/ingress/a/d:j	Lcom/nianticproject/ingress/common/c/bi;
    //   97: aload_0
    //   98: fload_2
    //   99: putfield 193	com/nianticproject/ingress/a/d:k	F
    //   102: aload_0
    //   103: fload_3
    //   104: putfield 195	com/nianticproject/ingress/a/d:l	F
    //   107: aload_0
    //   108: iload 4
    //   110: putfield 180	com/nianticproject/ingress/a/d:m	Z
    //   113: aload_0
    //   114: aload 5
    //   116: putfield 211	com/nianticproject/ingress/a/d:o	Lcom/nianticproject/ingress/common/c/bk;
    //   119: aload_0
    //   120: getstatic 233	com/nianticproject/ingress/a/k:b	Lcom/nianticproject/ingress/a/k;
    //   123: putfield 94	com/nianticproject/ingress/a/d:q	Lcom/nianticproject/ingress/a/k;
    //   126: aload_0
    //   127: new 235	java/util/concurrent/CountDownLatch
    //   130: dup
    //   131: iconst_1
    //   132: invokespecial 236	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   135: putfield 238	com/nianticproject/ingress/a/d:s	Ljava/util/concurrent/CountDownLatch;
    //   138: getstatic 65	com/nianticproject/ingress/a/d:c	Z
    //   141: ifeq +100 -> 241
    //   144: aload_0
    //   145: new 240	com/nianticproject/ingress/a/j
    //   148: dup
    //   149: aload_0
    //   150: invokespecial 241	com/nianticproject/ingress/a/j:<init>	(Lcom/nianticproject/ingress/a/d;)V
    //   153: putfield 243	com/nianticproject/ingress/a/d:r	Lcom/nianticproject/ingress/a/j;
    //   156: aload 10
    //   158: monitorexit
    //   159: aload_0
    //   160: getfield 243	com/nianticproject/ingress/a/d:r	Lcom/nianticproject/ingress/a/j;
    //   163: ifnull +11 -> 174
    //   166: aload_0
    //   167: getfield 243	com/nianticproject/ingress/a/d:r	Lcom/nianticproject/ingress/a/j;
    //   170: invokevirtual 246	com/nianticproject/ingress/a/j:e	()Lcom/nianticproject/ingress/common/f/a;
    //   173: pop
    //   174: aload_0
    //   175: monitorexit
    //   176: return
    //   177: astore 9
    //   179: aload_0
    //   180: getstatic 167	com/nianticproject/ingress/a/k:e	Lcom/nianticproject/ingress/a/k;
    //   183: putfield 94	com/nianticproject/ingress/a/d:q	Lcom/nianticproject/ingress/a/k;
    //   186: new 155	com/nianticproject/ingress/common/c/bl
    //   189: dup
    //   190: ldc 248
    //   192: aload 9
    //   194: invokespecial 176	com/nianticproject/ingress/common/c/bl:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   197: athrow
    //   198: astore 8
    //   200: aload 7
    //   202: monitorexit
    //   203: aload 8
    //   205: athrow
    //   206: astore 6
    //   208: aload_0
    //   209: monitorexit
    //   210: aload 6
    //   212: athrow
    //   213: new 138	java/lang/IllegalStateException
    //   216: dup
    //   217: ldc 250
    //   219: invokespecial 153	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   222: athrow
    //   223: astore 11
    //   225: aload 10
    //   227: monitorexit
    //   228: aload 11
    //   230: athrow
    //   231: new 155	com/nianticproject/ingress/common/c/bl
    //   234: dup
    //   235: ldc 252
    //   237: invokespecial 164	com/nianticproject/ingress/common/c/bl:<init>	(Ljava/lang/String;)V
    //   240: athrow
    //   241: getstatic 67	com/nianticproject/ingress/a/d:d	Z
    //   244: ifeq +23 -> 267
    //   247: aload_0
    //   248: getfield 121	com/nianticproject/ingress/a/d:i	Lcom/nianticproject/ingress/common/c/ai;
    //   251: new 254	com/nianticproject/ingress/a/g
    //   254: dup
    //   255: aload_0
    //   256: invokespecial 255	com/nianticproject/ingress/a/g:<init>	(Lcom/nianticproject/ingress/a/d;)V
    //   259: invokeinterface 260 2 0
    //   264: goto -108 -> 156
    //   267: aload_0
    //   268: iconst_1
    //   269: invokespecial 127	com/nianticproject/ingress/a/d:b	(Z)V
    //   272: goto -116 -> 156
    //
    // Exception table:
    //   from	to	target	type
    //   20	34	177	java/lang/IllegalStateException
    //   20	34	198	finally
    //   34	37	198	finally
    //   179	198	198	finally
    //   2	20	206	finally
    //   37	46	206	finally
    //   159	174	206	finally
    //   200	206	206	finally
    //   225	231	206	finally
    //   46	92	223	finally
    //   92	156	223	finally
    //   156	159	223	finally
    //   213	223	223	finally
    //   231	241	223	finally
    //   241	264	223	finally
    //   267	272	223	finally
  }

  private void b(boolean paramBoolean)
  {
    try
    {
      aj.a("loadClip(", this.j.toString(), ")");
      try
      {
        j();
        this.e.prepare();
        a(paramBoolean);
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          d();
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(this.f);
          arrayOfObject[1] = this.j;
          String str = String.format("#%d loadClip failed clip=%s", arrayOfObject);
          if (this.o != null)
            this.o.a(new bl(str, localException));
        }
      }
    }
    finally
    {
      this.s.countDown();
      aj.b();
    }
  }

  private void h()
  {
    if (this.n != -1);
    try
    {
      this.e.seekTo(this.n);
      this.n = -1;
    }
    catch (IllegalStateException localIllegalStateException2)
    {
      try
      {
        this.e.start();
        return;
        localIllegalStateException2 = localIllegalStateException2;
        a("seekAndStart: seekTo failed", localIllegalStateException2);
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        a("seekAndStart: start failed", localIllegalStateException1);
      }
    }
  }

  private void i()
  {
    if (!c)
      return;
    synchronized (this.p)
    {
      if (!this.q.equals(k.b))
        return;
    }
    new al().a();
    this.r.b(false);
    try
    {
      this.s.await();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      a.a(localInterruptedException, "interrupted awaiting doneSignal");
      Thread.currentThread().interrupt();
    }
  }

  private void j()
  {
    try
    {
      ba localba = this.j.a();
      String str = new File(this.h, localba.b()).toString();
      AssetFileDescriptor localAssetFileDescriptor = this.g.openFd(str);
      try
      {
        this.e.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
        return;
      }
      finally
      {
        localAssetFileDescriptor.close();
      }
    }
    catch (Exception localException)
    {
      a("loadSoundData", localException);
    }
  }

  public final void a()
  {
    if (!c)
      return;
    while (true)
    {
      synchronized (this.p)
      {
        if (this.q == k.b)
        {
          j.a(this.r);
          return;
        }
      }
      a("playLoaded");
      if (this.n == -1)
        this.n = 0;
      h();
      this.q = k.d;
    }
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    synchronized (this.p)
    {
      try
      {
        if (this.q == k.b)
        {
          this.k = paramFloat1;
          this.l = paramFloat2;
        }
        while (true)
        {
          return;
          a("setVolumeAndPan");
          b(paramFloat1, paramFloat2);
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        while (true)
          a("setVolumeAndPan failed", localIllegalStateException);
      }
    }
  }

  public final void a(int paramInt)
  {
    synchronized (this.p)
    {
      this.n = paramInt;
      if (this.q == k.d)
        h();
      return;
    }
  }

  public final void a(bi parambi, float paramFloat1, float paramFloat2, boolean paramBoolean, bk parambk)
  {
    b(parambi, paramFloat1, paramFloat2, paramBoolean, parambk);
  }

  public final boolean b()
  {
    while (true)
    {
      synchronized (this.p)
      {
        if (!this.q.equals(k.c))
          if (this.q.equals(k.d))
          {
            break label50;
            return bool;
          }
          else
          {
            bool = false;
          }
      }
      label50: boolean bool = true;
    }
  }

  public final void c()
  {
    synchronized (this.p)
    {
      try
      {
        this.e.stop();
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        this.q = k.e;
        throw new bl("failed to stop", localIllegalStateException);
      }
    }
  }

  public final void d()
  {
    i();
    try
    {
      synchronized (this.p)
      {
        this.e.reset();
        try
        {
          label18: this.e.release();
          this.q = k.e;
          return;
        }
        catch (Exception localException)
        {
          while (true)
            a.a(localException, "Exception in AndroidSoundPlayer.release");
        }
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label18;
    }
  }

  public final int e()
  {
    k localk1 = this.q;
    k localk2 = k.d;
    int i1 = 0;
    if (localk1 == localk2);
    try
    {
      synchronized (this.p)
      {
        i1 = this.e.getCurrentPosition();
        return i1;
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      this.q = k.e;
      throw new bl("getCurrentPosition failed", localIllegalStateException);
    }
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = Integer.valueOf(this.f);
    arrayOfObject[1] = this.q;
    arrayOfObject[2] = this.j;
    arrayOfObject[3] = Boolean.valueOf(this.m);
    arrayOfObject[4] = Float.valueOf(this.k);
    arrayOfObject[5] = Float.valueOf(this.l);
    return String.format("{#=%d state=%s clip=%s isLooping=%s V=%f Pan=%f}", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.d
 * JD-Core Version:    0.6.2
 */