package com.google.analytics.tracking.android;

import android.content.Context;
import com.google.android.gms.analytics.internal.Command;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

final class ac extends Thread
  implements j
{
  private static ac i;
  private final LinkedBlockingQueue<Runnable> a = new LinkedBlockingQueue();
  private volatile boolean b = false;
  private volatile boolean c = false;
  private volatile boolean d;
  private volatile List<Command> e;
  private volatile ar f;
  private volatile String g;
  private volatile String h;
  private volatile bc j;
  private final Context k;

  private ac(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null);
    for (this.k = paramContext.getApplicationContext(); ; this.k = paramContext)
    {
      start();
      return;
    }
  }

  static ac a(Context paramContext)
  {
    if (i == null)
      i = new ac(paramContext);
    return i;
  }

  private static String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }

  private void a(Runnable paramRunnable)
  {
    this.a.add(paramRunnable);
  }

  private static void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (!paramMap.containsKey(paramString1))
      paramMap.put(paramString1, paramString2);
  }

  private boolean a(String paramString)
  {
    try
    {
      FileOutputStream localFileOutputStream = this.k.openFileOutput("gaClientId", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      return true;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      aq.b("Error creating clientId file.");
      return false;
    }
    catch (IOException localIOException)
    {
      aq.b("Error writing to clientId file.");
    }
    return false;
  }

  private static String b(Context paramContext)
  {
    try
    {
      FileInputStream localFileInputStream = paramContext.openFileInput("gaInstallData");
      arrayOfByte = new byte[8192];
      m = localFileInputStream.read(arrayOfByte, 0, 8192);
      if (localFileInputStream.available() > 0)
      {
        aq.b("Too much campaign data, ignoring it.");
        localFileInputStream.close();
        paramContext.deleteFile("gaInstallData");
        return null;
      }
      localFileInputStream.close();
      paramContext.deleteFile("gaInstallData");
      if (m <= 0)
      {
        aq.f("Campaign file is empty.");
        return null;
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      byte[] arrayOfByte;
      int m;
      aq.c("No campaign data found.");
      return null;
      String str = new String(arrayOfByte, 0, m);
      aq.c("Campaign found: " + str);
      return str;
    }
    catch (IOException localIOException)
    {
      aq.b("Error reading campaign data.");
      paramContext.deleteFile("gaInstallData");
    }
    return null;
  }

  // ERROR //
  private String d()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 53	com/google/analytics/tracking/android/ac:k	Landroid/content/Context;
    //   6: ldc 181
    //   8: invokevirtual 207	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore 9
    //   13: sipush 128
    //   16: newarray byte
    //   18: astore 10
    //   20: aload 9
    //   22: aload 10
    //   24: iconst_0
    //   25: sipush 128
    //   28: invokevirtual 213	java/io/FileInputStream:read	([BII)I
    //   31: istore 11
    //   33: aload 9
    //   35: invokevirtual 217	java/io/FileInputStream:available	()I
    //   38: ifle +25 -> 63
    //   41: ldc_w 360
    //   44: invokestatic 166	com/google/analytics/tracking/android/aq:b	(Ljava/lang/String;)I
    //   47: pop
    //   48: aload 9
    //   50: invokevirtual 220	java/io/FileInputStream:close	()V
    //   53: aload_0
    //   54: getfield 53	com/google/analytics/tracking/android/ac:k	Landroid/content/Context;
    //   57: ldc 203
    //   59: invokevirtual 223	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   62: pop
    //   63: iload 11
    //   65: ifgt +53 -> 118
    //   68: ldc_w 362
    //   71: invokestatic 166	com/google/analytics/tracking/android/aq:b	(Ljava/lang/String;)I
    //   74: pop
    //   75: aload 9
    //   77: invokevirtual 220	java/io/FileInputStream:close	()V
    //   80: aload_0
    //   81: getfield 53	com/google/analytics/tracking/android/ac:k	Landroid/content/Context;
    //   84: ldc 203
    //   86: invokevirtual 223	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   89: pop
    //   90: aload_1
    //   91: ifnonnull +25 -> 116
    //   94: invokestatic 368	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   97: invokevirtual 369	java/util/UUID:toString	()Ljava/lang/String;
    //   100: invokevirtual 372	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   103: astore_1
    //   104: aload_0
    //   105: aload_1
    //   106: invokespecial 374	com/google/analytics/tracking/android/ac:a	(Ljava/lang/String;)Z
    //   109: ifne +7 -> 116
    //   112: ldc_w 376
    //   115: astore_1
    //   116: aload_1
    //   117: areturn
    //   118: new 84	java/lang/String
    //   121: dup
    //   122: aload 10
    //   124: iconst_0
    //   125: iload 11
    //   127: invokespecial 234	java/lang/String:<init>	([BII)V
    //   130: astore 14
    //   132: aload 9
    //   134: invokevirtual 220	java/io/FileInputStream:close	()V
    //   137: aload 14
    //   139: astore_1
    //   140: goto -50 -> 90
    //   143: astore 6
    //   145: ldc_w 378
    //   148: invokestatic 166	com/google/analytics/tracking/android/aq:b	(Ljava/lang/String;)I
    //   151: pop
    //   152: aload_0
    //   153: getfield 53	com/google/analytics/tracking/android/ac:k	Landroid/content/Context;
    //   156: ldc 203
    //   158: invokevirtual 223	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   161: pop
    //   162: goto -72 -> 90
    //   165: astore_3
    //   166: ldc_w 380
    //   169: invokestatic 166	com/google/analytics/tracking/android/aq:b	(Ljava/lang/String;)I
    //   172: pop
    //   173: aload_0
    //   174: getfield 53	com/google/analytics/tracking/android/ac:k	Landroid/content/Context;
    //   177: ldc 203
    //   179: invokevirtual 223	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   182: pop
    //   183: goto -93 -> 90
    //   186: astore 17
    //   188: aload 14
    //   190: astore_1
    //   191: goto -25 -> 166
    //   194: astore 16
    //   196: aload 14
    //   198: astore_1
    //   199: goto -54 -> 145
    //   202: astore_2
    //   203: aconst_null
    //   204: astore_1
    //   205: goto -115 -> 90
    //   208: astore 15
    //   210: aload 14
    //   212: astore_1
    //   213: goto -123 -> 90
    //
    // Exception table:
    //   from	to	target	type
    //   2	63	143	java/io/IOException
    //   68	90	143	java/io/IOException
    //   118	132	143	java/io/IOException
    //   2	63	165	java/lang/NumberFormatException
    //   68	90	165	java/lang/NumberFormatException
    //   118	132	165	java/lang/NumberFormatException
    //   132	137	186	java/lang/NumberFormatException
    //   132	137	194	java/io/IOException
    //   2	63	202	java/io/FileNotFoundException
    //   68	90	202	java/io/FileNotFoundException
    //   118	132	202	java/io/FileNotFoundException
    //   132	137	208	java/io/FileNotFoundException
  }

  public final void a()
  {
    a(new ae(this));
  }

  public final void a(am paramam)
  {
    a(new af(this, paramam));
  }

  public final void a(k paramk)
  {
    a(new ag(this, paramk));
  }

  public final void a(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap(paramMap);
    long l = System.currentTimeMillis();
    localHashMap.put("hitTime", Long.toString(l));
    a(new ad(this, localHashMap, l));
  }

  public final LinkedBlockingQueue<Runnable> b()
  {
    return this.a;
  }

  public final Thread c()
  {
    return this;
  }

  public final void run()
  {
    try
    {
      Thread.sleep(5000L);
    }
    catch (InterruptedException localInterruptedException1)
    {
      try
      {
        while (true)
        {
          if (this.j == null)
            this.j = new t(this.k, this, (byte)0);
          this.j.d();
          this.e = new ArrayList();
          this.e.add(new Command("appendVersion", "_v", "ma1b6"));
          this.e.add(new Command("appendQueueTime", "qt", null));
          this.e.add(new Command("appendCacheBuster", "z", null));
          this.f = new ar();
          au.a(this.f);
          this.d = this.k.getFileStreamPath("gaOptOut").exists();
          this.h = d();
          this.g = b(this.k);
          while (!this.c)
            try
            {
              Runnable localRunnable = (Runnable)this.a.take();
              if (!this.b)
                localRunnable.run();
            }
            catch (InterruptedException localInterruptedException2)
            {
              aq.c(localInterruptedException2.toString());
            }
            catch (Throwable localThrowable2)
            {
              aq.b("Error on GAThread: " + a(localThrowable2));
              aq.b("Google Analytics is shutting down.");
              this.b = true;
            }
          localInterruptedException1 = localInterruptedException1;
          aq.f("sleep interrupted in GAThread initialize");
        }
      }
      catch (Throwable localThrowable1)
      {
        while (true)
        {
          aq.b("Error initializing the GAThread: " + a(localThrowable1));
          aq.b("Google Analytics will not start up.");
          this.b = true;
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ac
 * JD-Core Version:    0.6.2
 */