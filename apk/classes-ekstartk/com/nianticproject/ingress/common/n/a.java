package com.nianticproject.ingress.common.n;

import com.google.a.e.ab;
import com.google.a.e.u;
import com.google.a.e.z;
import com.nianticproject.ingress.common.w.aa;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a
  implements Closeable
{
  static final Charset a = Charset.forName("UTF-8");
  private static final aa b = new aa(a.class);
  private final File c;
  private final File d;
  private final File e;
  private final int f;
  private final long g;
  private final int h;
  private long i = 0L;
  private Writer j;
  private final LinkedHashMap<String, e> k = new LinkedHashMap(0, 0.75F, true);
  private int l;
  private final ExecutorService m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final Callable<Void> n = new b(this);

  private a(File paramFile)
  {
    this.c = paramFile;
    this.f = 2;
    this.d = new File(paramFile, "journal");
    this.e = new File(paramFile, "journal.tmp");
    this.h = 1;
    this.g = 2097152L;
  }

  public static a a(File paramFile)
  {
    if (2097152L <= 0L)
      throw new IllegalArgumentException("maxSize <= 0");
    a locala1 = new a(paramFile);
    if (locala1.d.exists())
      try
      {
        locala1.a();
        locala1.b();
        locala1.j = new BufferedWriter(new FileWriter(locala1.d, true));
        return locala1;
      }
      catch (IOException localIOException)
      {
        b.b("Clearing cache at \"" + paramFile.toString() + "\" for corrupted journal.");
        locala1.close();
        b(locala1.c);
      }
    paramFile.mkdirs();
    a locala2 = new a(paramFile);
    locala2.c();
    return locala2;
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: new 175	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: getfield 102	com/nianticproject/ingress/common/n/a:d	Ljava/io/File;
    //   8: invokespecial 176	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   11: astore_1
    //   12: new 178	java/io/BufferedReader
    //   15: dup
    //   16: new 180	java/io/InputStreamReader
    //   19: dup
    //   20: aload_1
    //   21: invokespecial 183	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   24: invokespecial 186	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   27: astore_2
    //   28: aload_2
    //   29: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   32: astore 4
    //   34: aload_2
    //   35: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   38: astore 5
    //   40: aload_2
    //   41: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   44: astore 6
    //   46: aload_2
    //   47: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   50: astore 7
    //   52: aload_2
    //   53: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   56: astore 8
    //   58: ldc 191
    //   60: aload 4
    //   62: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   65: ifeq +53 -> 118
    //   68: ldc 199
    //   70: aload 5
    //   72: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   75: ifeq +43 -> 118
    //   78: aload_0
    //   79: getfield 93	com/nianticproject/ingress/common/n/a:f	I
    //   82: invokestatic 204	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   85: aload 6
    //   87: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   90: ifeq +28 -> 118
    //   93: aload_0
    //   94: getfield 108	com/nianticproject/ingress/common/n/a:h	I
    //   97: invokestatic 204	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   100: aload 7
    //   102: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   105: ifeq +13 -> 118
    //   108: ldc 206
    //   110: aload 8
    //   112: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   115: ifne +105 -> 220
    //   118: new 115	java/io/IOException
    //   121: dup
    //   122: new 146	java/lang/StringBuilder
    //   125: dup
    //   126: ldc 208
    //   128: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   131: aload 4
    //   133: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc 210
    //   138: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload 5
    //   143: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc 210
    //   148: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload 7
    //   153: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc 210
    //   158: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload 8
    //   163: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: ldc 212
    //   168: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: invokevirtual 160	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: invokespecial 213	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   177: athrow
    //   178: astore_3
    //   179: aload_1
    //   180: invokevirtual 214	java/io/FileInputStream:close	()V
    //   183: aload_3
    //   184: athrow
    //   185: aload 10
    //   187: iconst_1
    //   188: aaload
    //   189: astore 11
    //   191: aload 10
    //   193: iconst_0
    //   194: aaload
    //   195: ldc 216
    //   197: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   200: ifeq +72 -> 272
    //   203: aload 10
    //   205: arraylength
    //   206: iconst_2
    //   207: if_icmpne +65 -> 272
    //   210: aload_0
    //   211: getfield 64	com/nianticproject/ingress/common/n/a:k	Ljava/util/LinkedHashMap;
    //   214: aload 11
    //   216: invokevirtual 220	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   219: pop
    //   220: aload_2
    //   221: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   224: astore 9
    //   226: aload 9
    //   228: ifnull +246 -> 474
    //   231: aload 9
    //   233: ldc 222
    //   235: invokevirtual 226	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   238: astore 10
    //   240: aload 10
    //   242: arraylength
    //   243: iconst_2
    //   244: if_icmpge -59 -> 185
    //   247: new 115	java/io/IOException
    //   250: dup
    //   251: new 146	java/lang/StringBuilder
    //   254: dup
    //   255: ldc 228
    //   257: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   260: aload 9
    //   262: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: invokevirtual 160	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   268: invokespecial 213	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   271: athrow
    //   272: aload_0
    //   273: getfield 64	com/nianticproject/ingress/common/n/a:k	Ljava/util/LinkedHashMap;
    //   276: aload 11
    //   278: invokevirtual 231	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   281: checkcast 233	com/nianticproject/ingress/common/n/e
    //   284: astore 12
    //   286: aload 12
    //   288: ifnonnull +28 -> 316
    //   291: new 233	com/nianticproject/ingress/common/n/e
    //   294: dup
    //   295: aload_0
    //   296: aload 11
    //   298: iconst_0
    //   299: invokespecial 236	com/nianticproject/ingress/common/n/e:<init>	(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;B)V
    //   302: astore 12
    //   304: aload_0
    //   305: getfield 64	com/nianticproject/ingress/common/n/a:k	Ljava/util/LinkedHashMap;
    //   308: aload 11
    //   310: aload 12
    //   312: invokevirtual 240	java/util/LinkedHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   315: pop
    //   316: aload 10
    //   318: iconst_0
    //   319: aaload
    //   320: ldc 242
    //   322: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   325: ifeq +64 -> 389
    //   328: aload 10
    //   330: arraylength
    //   331: iconst_2
    //   332: aload_0
    //   333: getfield 108	com/nianticproject/ingress/common/n/a:h	I
    //   336: iadd
    //   337: if_icmpne +52 -> 389
    //   340: aload 12
    //   342: invokestatic 245	com/nianticproject/ingress/common/n/e:e	(Lcom/nianticproject/ingress/common/n/e;)Z
    //   345: pop
    //   346: aload 12
    //   348: aconst_null
    //   349: invokestatic 248	com/nianticproject/ingress/common/n/e:a	(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;
    //   352: pop
    //   353: bipush 254
    //   355: aload 10
    //   357: arraylength
    //   358: iadd
    //   359: anewarray 193	java/lang/String
    //   362: astore 17
    //   364: aload 10
    //   366: iconst_2
    //   367: aload 17
    //   369: iconst_0
    //   370: bipush 254
    //   372: aload 10
    //   374: arraylength
    //   375: iadd
    //   376: invokestatic 254	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   379: aload 12
    //   381: aload 17
    //   383: invokestatic 257	com/nianticproject/ingress/common/n/e:a	(Lcom/nianticproject/ingress/common/n/e;[Ljava/lang/String;)V
    //   386: goto -166 -> 220
    //   389: aload 10
    //   391: iconst_0
    //   392: aaload
    //   393: ldc_w 259
    //   396: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   399: ifeq +30 -> 429
    //   402: aload 10
    //   404: arraylength
    //   405: iconst_2
    //   406: if_icmpne +23 -> 429
    //   409: aload 12
    //   411: new 261	com/nianticproject/ingress/common/n/c
    //   414: dup
    //   415: aload_0
    //   416: aload 12
    //   418: iconst_0
    //   419: invokespecial 264	com/nianticproject/ingress/common/n/c:<init>	(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/e;B)V
    //   422: invokestatic 248	com/nianticproject/ingress/common/n/e:a	(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;
    //   425: pop
    //   426: goto -206 -> 220
    //   429: aload 10
    //   431: iconst_0
    //   432: aaload
    //   433: ldc_w 266
    //   436: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   439: ifeq +10 -> 449
    //   442: aload 10
    //   444: arraylength
    //   445: iconst_2
    //   446: if_icmpeq -226 -> 220
    //   449: new 115	java/io/IOException
    //   452: dup
    //   453: new 146	java/lang/StringBuilder
    //   456: dup
    //   457: ldc 228
    //   459: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   462: aload 9
    //   464: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: invokevirtual 160	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   470: invokespecial 213	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   473: athrow
    //   474: aload_1
    //   475: invokevirtual 214	java/io/FileInputStream:close	()V
    //   478: return
    //
    // Exception table:
    //   from	to	target	type
    //   28	118	178	finally
    //   118	178	178	finally
    //   185	220	178	finally
    //   220	226	178	finally
    //   231	272	178	finally
    //   272	286	178	finally
    //   291	316	178	finally
    //   316	386	178	finally
    //   389	426	178	finally
    //   429	449	178	finally
    //   449	474	178	finally
  }

  private void a(c paramc, boolean paramBoolean)
  {
    e locale;
    try
    {
      locale = c.b(paramc);
      if (e.a(locale) != paramc)
        throw new IllegalStateException();
    }
    finally
    {
    }
    int i1 = 0;
    int i2;
    if (paramBoolean)
    {
      boolean bool = e.b(locale);
      i1 = 0;
      if (!bool)
      {
        i2 = 0;
        int i3 = this.h;
        i1 = 0;
        if (i2 < i3)
        {
          if (locale.b(i2).exists())
            break label373;
          paramc.c();
          throw new IllegalStateException("edit didn't create file " + i2);
        }
      }
    }
    while (true)
    {
      if (i1 < this.h)
      {
        File localFile1 = locale.b(i1);
        if (paramBoolean)
        {
          if (localFile1.exists())
          {
            File localFile2 = locale.a(i1);
            localFile1.renameTo(localFile2);
            long l1 = e.d(locale)[i1];
            long l2 = localFile2.length();
            e.d(locale)[i1] = l2;
            this.i = (l2 + (this.i - l1));
          }
        }
        else
          localFile1.delete();
      }
      else
      {
        this.l = (1 + this.l);
        e.a(locale, null);
        if ((paramBoolean | e.b(locale)))
        {
          e.e(locale);
          this.j.write("CLEAN " + e.c(locale) + locale.a() + '\n');
        }
        while (true)
        {
          if ((this.i > this.g) || (d()))
            this.m.submit(this.n);
          return;
          this.k.remove(e.c(locale));
          this.j.write("REMOVE " + e.c(locale) + '\n');
        }
        label373: i2++;
        break;
      }
      i1++;
    }
  }

  private void b()
  {
    this.e.delete();
    Iterator localIterator = this.k.values().iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      if (e.a(locale) == null)
      {
        for (int i2 = 0; i2 < this.h; i2++)
          this.i += e.d(locale)[i2];
      }
      else
      {
        e.a(locale, null);
        for (int i1 = 0; i1 < this.h; i1++)
        {
          locale.a(i1).delete();
          locale.b(i1).delete();
        }
        localIterator.remove();
      }
    }
  }

  private static void b(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localException)
    {
    }
  }

  private static void b(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      throw new IllegalArgumentException("not a directory: " + paramFile);
    int i1 = arrayOfFile.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      File localFile = arrayOfFile[i2];
      if (localFile.isDirectory())
        b(localFile);
      if (!localFile.delete())
        throw new IOException("failed to delete file: " + localFile);
    }
  }

  private static String c(String paramString)
  {
    if (paramString != null);
    while (true)
    {
      return ab.a().a(paramString.getBytes()).toString();
      paramString = "50840139-b1d2-4ff3-8145-cc1dd0526c1b";
    }
  }

  private void c()
  {
    BufferedWriter localBufferedWriter;
    while (true)
    {
      e locale;
      try
      {
        if (this.j != null)
          this.j.close();
        localBufferedWriter = new BufferedWriter(new FileWriter(this.e));
        localBufferedWriter.write("libcore.io.DiskLruCache");
        localBufferedWriter.write("\n");
        localBufferedWriter.write("1");
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.f));
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.h));
        localBufferedWriter.write("\n");
        localBufferedWriter.write("\n");
        Iterator localIterator = this.k.values().iterator();
        if (!localIterator.hasNext())
          break;
        locale = (e)localIterator.next();
        if (e.a(locale) != null)
        {
          localBufferedWriter.write("DIRTY " + e.c(locale) + '\n');
          continue;
        }
      }
      finally
      {
      }
      localBufferedWriter.write("CLEAN " + e.c(locale) + locale.a() + '\n');
    }
    localBufferedWriter.close();
    this.e.renameTo(this.d);
    this.j = new BufferedWriter(new FileWriter(this.d, true));
  }

  private boolean d()
  {
    return (this.l >= 2000) && (this.l >= this.k.size());
  }

  private boolean d(String paramString)
  {
    while (true)
    {
      try
      {
        e();
        e locale = (e)this.k.get(paramString);
        int i1;
        if (locale != null)
        {
          c localc = e.a(locale);
          i1 = 0;
          if (localc == null);
        }
        else
        {
          bool = false;
          return bool;
          this.i -= e.d(locale)[i1];
          e.d(locale)[i1] = 0L;
          i1++;
        }
        if (i1 < this.h)
        {
          File localFile = locale.a(i1);
          if (localFile.delete())
            continue;
          throw new IOException("failed to delete " + localFile);
        }
      }
      finally
      {
      }
      this.l = (1 + this.l);
      this.j.append("REMOVE " + paramString + '\n');
      this.k.remove(paramString);
      if (d())
        this.m.submit(this.n);
      boolean bool = true;
    }
  }

  private void e()
  {
    if (this.j == null)
      throw new IllegalStateException("cache is closed");
  }

  private void f()
  {
    while (this.i > this.g)
      d((String)((Map.Entry)this.k.entrySet().iterator().next()).getKey());
  }

  public final f a(String paramString)
  {
    while (true)
    {
      int i2;
      try
      {
        e();
        String str = c(paramString);
        e locale = (e)this.k.get(str);
        if (locale == null)
        {
          localf = null;
          return localf;
        }
        if (!e.b(locale))
        {
          localf = null;
          continue;
        }
        InputStream[] arrayOfInputStream = new InputStream[this.h];
        int i1 = 0;
        try
        {
          if (i1 >= this.h)
            continue;
          arrayOfInputStream[i1] = new FileInputStream(locale.a(i1));
          i1++;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          i2 = 0;
          if (i2 >= this.h)
            break label217;
        }
        if (arrayOfInputStream[i2] != null)
        {
          b(arrayOfInputStream[i2]);
          break label211;
          this.l = (1 + this.l);
          this.j.append("READ " + str + '\n');
          if (d())
            this.m.submit(this.n);
          localf = new f(arrayOfInputStream, (byte)0);
          continue;
        }
      }
      finally
      {
      }
      label211: i2++;
      continue;
      label217: f localf = null;
    }
  }

  public final c b(String paramString)
  {
    while (true)
    {
      e locale1;
      try
      {
        e();
        String str = c(paramString);
        locale1 = (e)this.k.get(str);
        c localc1;
        if (locale1 == null)
        {
          e locale2 = new e(this, str, (byte)0);
          this.k.put(str, locale2);
          locale3 = locale2;
          localc1 = new c(this, locale3, (byte)0);
          e.a(locale3, localc1);
          this.j.write("DIRTY " + str + '\n');
          this.j.flush();
          return localc1;
        }
        c localc2 = e.a(locale1);
        if (localc2 != null)
        {
          localc1 = null;
          continue;
        }
      }
      finally
      {
      }
      e locale3 = locale1;
    }
  }

  public final void close()
  {
    while (true)
    {
      try
      {
        Writer localWriter = this.j;
        if (localWriter == null)
          return;
        Iterator localIterator = new ArrayList(this.k.values()).iterator();
        if (localIterator.hasNext())
        {
          e locale = (e)localIterator.next();
          if (e.a(locale) == null)
            continue;
          e.a(locale).c();
          continue;
        }
      }
      finally
      {
      }
      f();
      this.j.close();
      this.j = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.n.a
 * JD-Core Version:    0.6.2
 */