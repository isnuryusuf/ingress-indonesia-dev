package com.nianticproject.ingress;

import android.accounts.Account;
import android.content.Context;
import android.os.Build.VERSION;
import com.nianticproject.ingress.common.u.z;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.PregameStatus;
import com.nianticproject.ingress.shared.handshake.ServerHandshake;
import java.net.HttpCookie;

public class c
  implements com.nianticproject.ingress.common.u.b
{
  private static final aa a = new aa(c.class);
  private static final Object b = new Object();
  private static final Object c = new Object();
  private static final c e = new c();
  private final Object d = new Object();
  private final Context f = NemesisApplication.a();

  public static c a()
  {
    return e;
  }

  // ERROR //
  private HttpCookie a(Context paramContext, Account paramAccount)
  {
    // Byte code:
    //   0: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   3: lstore_3
    //   4: ldc 58
    //   6: invokestatic 63	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   9: aload_1
    //   10: invokestatic 69	android/accounts/AccountManager:get	(Landroid/content/Context;)Landroid/accounts/AccountManager;
    //   13: astore 8
    //   15: aload_2
    //   16: ifnull +403 -> 419
    //   19: iconst_0
    //   20: istore 9
    //   22: iload 9
    //   24: iconst_2
    //   25: if_icmpge +394 -> 419
    //   28: getstatic 75	android/os/Build$VERSION:SDK_INT	I
    //   31: bipush 14
    //   33: if_icmplt +68 -> 101
    //   36: aload 8
    //   38: aload_2
    //   39: ldc 77
    //   41: aconst_null
    //   42: iconst_0
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokevirtual 81	android/accounts/AccountManager:getAuthToken	(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    //   48: astore 28
    //   50: aload 28
    //   52: astore 10
    //   54: aload 10
    //   56: invokeinterface 87 1 0
    //   61: checkcast 89	android/os/Bundle
    //   64: astore 27
    //   66: aload 27
    //   68: astore 12
    //   70: aload 12
    //   72: ifnonnull +63 -> 135
    //   75: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   78: new 91	java/lang/StringBuilder
    //   81: dup
    //   82: ldc 93
    //   84: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   87: iload 9
    //   89: invokevirtual 99	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   92: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: invokevirtual 104	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;)V
    //   98: goto +329 -> 427
    //   101: aload 8
    //   103: aload_2
    //   104: ldc 77
    //   106: iconst_0
    //   107: aconst_null
    //   108: aconst_null
    //   109: invokevirtual 107	android/accounts/AccountManager:getAuthToken	(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    //   112: astore 10
    //   114: goto -60 -> 54
    //   117: astore 11
    //   119: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   122: aload 11
    //   124: ldc 109
    //   126: invokevirtual 112	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   129: aconst_null
    //   130: astore 12
    //   132: goto -62 -> 70
    //   135: aload 12
    //   137: ldc 114
    //   139: invokevirtual 117	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   142: checkcast 119	android/content/Intent
    //   145: astore 13
    //   147: aload 13
    //   149: ifnull +35 -> 184
    //   152: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   155: pop
    //   156: aload 13
    //   158: invokestatic 124	com/nianticproject/ingress/CredentialsActivity:a	(Landroid/content/Intent;)V
    //   161: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   164: pop
    //   165: aload_0
    //   166: getfield 37	com/nianticproject/ingress/c:d	Ljava/lang/Object;
    //   169: astore 18
    //   171: aload 18
    //   173: monitorenter
    //   174: aload_0
    //   175: getfield 37	com/nianticproject/ingress/c:d	Ljava/lang/Object;
    //   178: invokevirtual 127	java/lang/Object:wait	()V
    //   181: aload 18
    //   183: monitorexit
    //   184: aload 12
    //   186: ldc 129
    //   188: invokevirtual 117	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   191: astore 20
    //   193: aload 20
    //   195: ifnonnull +102 -> 297
    //   198: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   201: ldc 131
    //   203: invokevirtual 133	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   206: aconst_null
    //   207: astore 21
    //   209: aload 21
    //   211: ifnonnull +118 -> 329
    //   214: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   217: new 91	java/lang/StringBuilder
    //   220: dup
    //   221: ldc 93
    //   223: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   226: iload 9
    //   228: invokevirtual 99	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   231: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   234: invokevirtual 104	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;)V
    //   237: goto +190 -> 427
    //   240: astore 5
    //   242: invokestatic 135	com/nianticproject/ingress/shared/aj:b	()V
    //   245: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   248: astore 6
    //   250: iconst_1
    //   251: anewarray 4	java/lang/Object
    //   254: astore 7
    //   256: aload 7
    //   258: iconst_0
    //   259: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   262: lload_3
    //   263: lsub
    //   264: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   267: aastore
    //   268: aload 6
    //   270: ldc 143
    //   272: aload 7
    //   274: invokevirtual 146	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   277: aload 5
    //   279: athrow
    //   280: astore 19
    //   282: aload 18
    //   284: monitorexit
    //   285: aload 19
    //   287: athrow
    //   288: astore 15
    //   290: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   293: pop
    //   294: goto +133 -> 427
    //   297: aload 20
    //   299: invokevirtual 147	java/lang/Object:toString	()Ljava/lang/String;
    //   302: astore 21
    //   304: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   307: pop
    //   308: new 91	java/lang/StringBuilder
    //   311: dup
    //   312: ldc 149
    //   314: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   317: aload 21
    //   319: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: pop
    //   326: goto -117 -> 209
    //   329: invokestatic 156	com/nianticproject/ingress/ec:a	()Ljava/lang/String;
    //   332: aload 21
    //   334: invokestatic 161	com/nianticproject/ingress/common/u/c:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpCookie;
    //   337: astore 22
    //   339: aload 22
    //   341: ifnull +41 -> 382
    //   344: invokestatic 135	com/nianticproject/ingress/shared/aj:b	()V
    //   347: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   350: astore 23
    //   352: iconst_1
    //   353: anewarray 4	java/lang/Object
    //   356: astore 24
    //   358: aload 24
    //   360: iconst_0
    //   361: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   364: lload_3
    //   365: lsub
    //   366: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   369: aastore
    //   370: aload 23
    //   372: ldc 143
    //   374: aload 24
    //   376: invokevirtual 146	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   379: aload 22
    //   381: areturn
    //   382: getstatic 26	com/nianticproject/ingress/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   385: new 91	java/lang/StringBuilder
    //   388: dup
    //   389: ldc 163
    //   391: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   394: iload 9
    //   396: invokevirtual 99	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   399: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokevirtual 104	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;)V
    //   405: aload 8
    //   407: aload_2
    //   408: getfield 169	android/accounts/Account:type	Ljava/lang/String;
    //   411: aload 21
    //   413: invokevirtual 173	android/accounts/AccountManager:invalidateAuthToken	(Ljava/lang/String;Ljava/lang/String;)V
    //   416: goto +11 -> 427
    //   419: new 175	com/nianticproject/ingress/f
    //   422: dup
    //   423: invokespecial 176	com/nianticproject/ingress/f:<init>	()V
    //   426: athrow
    //   427: iinc 9 1
    //   430: goto -408 -> 22
    //
    // Exception table:
    //   from	to	target	type
    //   54	66	117	java/lang/Exception
    //   4	15	240	finally
    //   28	50	240	finally
    //   54	66	240	finally
    //   75	98	240	finally
    //   101	114	240	finally
    //   119	129	240	finally
    //   135	147	240	finally
    //   152	161	240	finally
    //   161	174	240	finally
    //   184	193	240	finally
    //   198	206	240	finally
    //   214	237	240	finally
    //   282	288	240	finally
    //   290	294	240	finally
    //   297	326	240	finally
    //   329	339	240	finally
    //   382	416	240	finally
    //   419	427	240	finally
    //   174	184	280	finally
    //   161	174	288	java/lang/InterruptedException
    //   282	288	288	java/lang/InterruptedException
  }

  static void f()
  {
    CredentialsActivity.a();
  }

  private String g()
  {
    long l1 = System.currentTimeMillis();
    try
    {
      com.nianticproject.ingress.common.s.a locala1 = com.nianticproject.ingress.common.s.c.j();
      if (locala1 != null)
      {
        long l2 = locala1.b;
        long l3 = System.currentTimeMillis();
        if (l2 >= l3 - 3600000L);
      }
      else
      {
        try
        {
          com.nianticproject.ingress.common.s.a locala2 = h();
          com.nianticproject.ingress.common.s.c.a(locala2);
          String str2 = locala2.a;
          aa localaa5;
          Object[] arrayOfObject5;
          return str2;
        }
        catch (g localg)
        {
          a.b(localg, "Failed to get auth cookie");
          aa localaa4;
          Object[] arrayOfObject4;
          return null;
        }
        catch (e locale)
        {
          a.a(locale, "Failed to get auth cookie");
          com.nianticproject.ingress.common.a.a.a(com.nianticproject.ingress.common.a.b.g, "AuthRefresh");
          aa localaa3;
          Object[] arrayOfObject3;
          return null;
        }
      }
      String str1 = locala1.a;
      aa localaa2;
      Object[] arrayOfObject2;
      return str1;
    }
    finally
    {
      aa localaa1 = a;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(System.currentTimeMillis() - l1);
      localaa1.a("getAuth: %dms", arrayOfObject1);
    }
  }

  private com.nianticproject.ingress.common.s.a h()
  {
    long l = System.currentTimeMillis();
    Account localAccount;
    try
    {
      localAccount = com.nianticproject.ingress.o.a.c();
      if (localAccount == null)
        throw new g("Attempting to get authentication cookie for a null account, aborting...");
    }
    finally
    {
      aa localaa1 = a;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(System.currentTimeMillis() - l);
      localaa1.a("getAuthCookie: %dms", arrayOfObject1);
    }
    if (!ec.a().endsWith(".appspot.com"))
    {
      com.nianticproject.ingress.common.s.a locala1 = new com.nianticproject.ingress.common.s.a("dev_appserver_login=" + localAccount.name + ":false:" + localAccount.name, 9223372036854775807L);
      aa localaa2 = a;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l);
      localaa2.a("getAuthCookie: %dms", arrayOfObject2);
      return locala1;
    }
    HttpCookie localHttpCookie = a(this.f, localAccount);
    com.nianticproject.ingress.common.s.a locala2 = new com.nianticproject.ingress.common.s.a(localHttpCookie.getName() + "=" + localHttpCookie.getValue(), System.currentTimeMillis() + 1000L * localHttpCookie.getMaxAge());
    aa localaa3 = a;
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = Long.valueOf(System.currentTimeMillis() - l);
    localaa3.a("getAuthCookie: %dms", arrayOfObject3);
    return locala2;
  }

  public final com.nianticproject.ingress.shared.rpc.a b()
  {
    synchronized (b)
    {
      long l = System.currentTimeMillis();
      try
      {
        com.nianticproject.ingress.shared.rpc.a locala = new com.nianticproject.ingress.shared.rpc.a(g(), com.nianticproject.ingress.common.s.c.k());
        aa localaa1 = a;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(System.currentTimeMillis() - l);
        localaa1.a("getOrRefreshAuth: %dms", arrayOfObject1);
        return locala;
      }
      finally
      {
        localObject3 = finally;
        aa localaa2 = a;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l);
        localaa2.a("getOrRefreshAuth: %dms", arrayOfObject2);
        throw localObject3;
      }
    }
  }

  public final boolean c()
  {
    synchronized (c)
    {
      z localz = new z(this, ec.a());
      try
      {
        ServerHandshake localServerHandshake = (ServerHandshake)localz.b(com.nianticproject.ingress.common.u.y.a("2013-10-07T21:02:13Z a7cb9f5402e7 opt", Build.VERSION.RELEASE, null, false, ab.a(), new com.nianticproject.ingress.c.b()));
        com.nianticproject.ingress.shared.y localy = localServerHandshake.a().a();
        switch (d.a[localy.ordinal()])
        {
        default:
          a.b("Force handshake: Server requires restart (handshake action: " + localy + ")");
        case 1:
        case 2:
        }
        for (bool = false; ; bool = true)
        {
          if (!bool)
            com.nianticproject.ingress.o.a.d(this.f);
          return bool;
          String str = localServerHandshake.d();
          com.nianticproject.ingress.common.s.c.c(str);
          com.nianticproject.ingress.common.s.c.d(true);
          if (str == null)
            a.b("Server returned an empty XSRF token, this may prevent the client from talking to the server.");
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          a.b("Force handshake: restarting due to exception " + localException);
          boolean bool = false;
        }
      }
    }
  }

  public final void d()
  {
    com.nianticproject.ingress.common.s.c.a(null);
  }

  final void e()
  {
    synchronized (this.d)
    {
      this.d.notifyAll();
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.c
 * JD-Core Version:    0.6.2
 */