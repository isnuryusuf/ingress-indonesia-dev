package com.nianticproject.ingress.common.ui;

import com.google.a.a.an;
import com.nianticproject.ingress.common.t.b;
import com.nianticproject.ingress.common.t.c;

public final class e
{
  private static final b a = c.a("Wait for Frame");
  private long b;
  private float c;
  private float d;
  private long e;
  private long f;
  private long g;
  private boolean h;

  public e()
  {
    this(20);
  }

  public e(int paramInt)
  {
    this.h = bool;
    float f1 = paramInt;
    if (f1 > 0.0F);
    while (true)
    {
      an.a(bool);
      this.c = f1;
      this.d = (1.0F / this.c);
      this.e = (()(1.0E+09F * this.d));
      d();
      return;
      bool = false;
    }
  }

  private static long a(long paramLong1, int paramInt, long paramLong2)
  {
    return (paramLong2 + paramLong1 * paramInt) / (paramInt + 1);
  }

  private long f()
  {
    if (this.b > 0L)
      return System.nanoTime() - this.b;
    return this.e;
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 35	com/nianticproject/ingress/common/ui/e:h	Z
    //   4: ifne +19 -> 23
    //   7: aload_0
    //   8: aload_0
    //   9: invokespecial 62	com/nianticproject/ingress/common/ui/e:f	()J
    //   12: putfield 64	com/nianticproject/ingress/common/ui/e:g	J
    //   15: aload_0
    //   16: invokestatic 58	java/lang/System:nanoTime	()J
    //   19: putfield 53	com/nianticproject/ingress/common/ui/e:b	J
    //   22: return
    //   23: ldc 66
    //   25: invokestatic 71	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 53	com/nianticproject/ingress/common/ui/e:b	J
    //   32: lconst_0
    //   33: lcmp
    //   34: ifle +130 -> 164
    //   37: aload_0
    //   38: invokespecial 62	com/nianticproject/ingress/common/ui/e:f	()J
    //   41: lstore_2
    //   42: lload_2
    //   43: ldc2_w 72
    //   46: lcmp
    //   47: ifle +8 -> 55
    //   50: aload_0
    //   51: getfield 47	com/nianticproject/ingress/common/ui/e:e	J
    //   54: lstore_2
    //   55: lload_2
    //   56: aload_0
    //   57: getfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   60: lcmp
    //   61: ifle +114 -> 175
    //   64: aload_0
    //   65: aload_0
    //   66: getfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   69: bipush 9
    //   71: lload_2
    //   72: invokestatic 77	com/nianticproject/ingress/common/ui/e:a	(JIJ)J
    //   75: putfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   78: aload_0
    //   79: ldc2_w 78
    //   82: aload_0
    //   83: getfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   86: invokestatic 85	java/lang/Math:min	(JJ)J
    //   89: putfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   92: aload_0
    //   93: ldc2_w 86
    //   96: ldc2_w 86
    //   99: aload_0
    //   100: getfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   103: ladd
    //   104: lconst_1
    //   105: lsub
    //   106: ldc2_w 86
    //   109: ldiv
    //   110: lmul
    //   111: aload_0
    //   112: getfield 47	com/nianticproject/ingress/common/ui/e:e	J
    //   115: invokestatic 90	java/lang/Math:max	(JJ)J
    //   118: putfield 64	com/nianticproject/ingress/common/ui/e:g	J
    //   121: aload_0
    //   122: getfield 64	com/nianticproject/ingress/common/ui/e:g	J
    //   125: lload_2
    //   126: lsub
    //   127: ldc2_w 91
    //   130: lsub
    //   131: lstore 4
    //   133: lload 4
    //   135: ldc2_w 93
    //   138: lcmp
    //   139: iflt +25 -> 164
    //   142: getstatic 27	com/nianticproject/ingress/common/ui/e:a	Lcom/nianticproject/ingress/common/t/b;
    //   145: invokevirtual 98	com/nianticproject/ingress/common/t/b:b	()V
    //   148: lload 4
    //   150: ldc2_w 93
    //   153: ldiv
    //   154: invokestatic 104	java/lang/Thread:sleep	(J)V
    //   157: getstatic 27	com/nianticproject/ingress/common/ui/e:a	Lcom/nianticproject/ingress/common/t/b;
    //   160: pop
    //   161: invokestatic 106	com/nianticproject/ingress/common/t/b:c	()V
    //   164: aload_0
    //   165: invokestatic 58	java/lang/System:nanoTime	()J
    //   168: putfield 53	com/nianticproject/ingress/common/ui/e:b	J
    //   171: invokestatic 107	com/nianticproject/ingress/shared/aj:b	()V
    //   174: return
    //   175: aload_0
    //   176: aload_0
    //   177: getfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   180: iconst_4
    //   181: lload_2
    //   182: invokestatic 77	com/nianticproject/ingress/common/ui/e:a	(JIJ)J
    //   185: putfield 75	com/nianticproject/ingress/common/ui/e:f	J
    //   188: goto -110 -> 78
    //   191: astore_1
    //   192: invokestatic 107	com/nianticproject/ingress/shared/aj:b	()V
    //   195: aload_1
    //   196: athrow
    //   197: astore 6
    //   199: goto -42 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   23	42	191	finally
    //   50	55	191	finally
    //   55	78	191	finally
    //   78	133	191	finally
    //   142	148	191	finally
    //   148	157	191	finally
    //   157	164	191	finally
    //   164	171	191	finally
    //   175	188	191	finally
    //   148	157	197	java/lang/InterruptedException
  }

  public final void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public final float b()
  {
    return (float)this.g / 1.0E+09F;
  }

  public final long c()
  {
    return this.e - f();
  }

  public final void d()
  {
    this.b = 0L;
    this.f = this.e;
    this.g = this.e;
  }

  public final boolean e()
  {
    return this.h;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.e
 * JD-Core Version:    0.6.2
 */