package com.nianticproject.ingress.curation;

import android.content.Context;
import android.content.SyncResult;
import android.content.SyncStats;
import android.net.Uri;
import android.text.TextUtils;
import com.google.a.d.u;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.o.g;
import com.nianticproject.ingress.shared.PregameStatus;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle;
import com.nianticproject.ingress.shared.i;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.b;
import com.nianticproject.ingress.shared.rpc.y;
import java.io.File;
import java.io.IOException;

public class f
{
  private static final aa a = new aa(f.class);

  private static PortalCurationTask a(Context paramContext, PortalCurationTask paramPortalCurationTask)
  {
    PortalCurationTask localPortalCurationTask = paramPortalCurationTask.n();
    d.b(paramContext, localPortalCurationTask);
    com.nianticproject.ingress.common.a.a.a(0L, "meta-data upload success. Failed attempts " + localPortalCurationTask.k());
    com.nianticproject.ingress.common.a.a.a(0L, "metadata upload retry " + localPortalCurationTask.k());
    return localPortalCurationTask;
  }

  private static PortalCurationTask a(Context paramContext, PortalCurationTask paramPortalCurationTask, int paramInt)
  {
    PortalCurationTask localPortalCurationTask = paramPortalCurationTask.o();
    d.b(paramContext, localPortalCurationTask);
    String str = "photo upload success. Failed attempts " + localPortalCurationTask.l();
    com.nianticproject.ingress.common.a.a.a(paramInt, str);
    return localPortalCurationTask;
  }

  private static PortalCurationTask a(Context paramContext, e parame, PortalCurationTask paramPortalCurationTask)
  {
    try
    {
      if (paramPortalCurationTask.j())
        return paramPortalCurationTask;
      if (paramPortalCurationTask.g() == null)
      {
        new Object[] { paramPortalCurationTask };
        paramPortalCurationTask = paramPortalCurationTask.o();
        d.b(paramContext, paramPortalCurationTask);
        return paramPortalCurationTask;
      }
    }
    catch (y localy)
    {
      PortalCurationTask localPortalCurationTask1 = paramPortalCurationTask;
      PortalCurationTask localPortalCurationTask2 = d.a(paramContext, localPortalCurationTask1.b());
      if (localPortalCurationTask2 != null);
      while (true)
      {
        d.b(paramContext, localPortalCurationTask2.q());
        throw localy;
        aa localaa = a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramPortalCurationTask.b();
        localaa.a("Uploading photo for task (request ID: %s)", arrayOfObject);
        if (q.c().e())
          return b(paramContext, parame, paramPortalCurationTask);
        PortalCurationTask localPortalCurationTask3 = c(paramContext, parame, paramPortalCurationTask);
        return localPortalCurationTask3;
        localPortalCurationTask2 = localPortalCurationTask1;
      }
    }
    catch (IOException localIOException)
    {
      a.a("Photo upload failure, will resume later");
      throw localIOException;
    }
  }

  public static void a(Context paramContext, e parame, SyncResult paramSyncResult)
  {
    a.a("Starting sync...");
    if (!com.nianticproject.ingress.o.a.b())
    {
      a.b("No signed-in account, finishing...");
      return;
    }
    a.a("has signed-in account, checking if there's something to submit...");
    PortalCurationTask localPortalCurationTask = d.a(paramContext);
    if (localPortalCurationTask == null)
    {
      a.a("nothing to submit, sync done.");
      return;
    }
    a.a("...found something to submit, performing handshake...");
    while (true)
    {
      try
      {
        Result localResult = parame.b();
        if (!localResult.e())
          break label316;
        PregameStatus localPregameStatus = ((com.nianticproject.ingress.service.d)localResult.c()).a;
        switch (g.a[localPregameStatus.a().ordinal()])
        {
        case 1:
          if (i != 0)
            break label189;
          a.b("Handshake told us the user must get involved to continue, finishing...");
          SyncStats localSyncStats2 = paramSyncResult.stats;
          localSyncStats2.numAuthExceptions = (1L + localSyncStats2.numAuthExceptions);
          return;
        case 2:
        }
      }
      catch (y localy)
      {
        a.a(localy, "RpcException while running handshake during sync, will retry later...");
        SyncStats localSyncStats1 = paramSyncResult.stats;
        localSyncStats1.numIoExceptions = (1L + localSyncStats1.numIoExceptions);
        return;
      }
      int i = 1;
      continue;
      label189: if (!q.c().d())
      {
        a.a("Skipping sync -- portal discovery feature knob is disabled.");
        return;
      }
      a.a("...handshake succeeded, continuing to sync...");
      boolean bool = true;
      while ((bool) && (localPortalCurationTask != null))
      {
        bool = a(paramContext, localPortalCurationTask, parame, paramSyncResult);
        aa localaa1 = a;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Boolean.toString(bool);
        localaa1.a("Sync will keep running? %s", arrayOfObject1);
        localPortalCurationTask = d.a(paramContext);
        if (localPortalCurationTask != null)
        {
          aa localaa2 = a;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localPortalCurationTask.b();
          localaa2.a("Next task to sync is request ID: %s", arrayOfObject2);
        }
        else
        {
          a.a("No more tasks to sync, sync finishing...");
        }
      }
      break;
      label316: i = 0;
    }
  }

  private static boolean a(Context paramContext, PortalCurationTask paramPortalCurationTask, e parame, SyncResult paramSyncResult)
  {
    aa localaa = a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramPortalCurationTask.b();
    localaa.a("Syncing task (request ID: %s)", arrayOfObject);
    try
    {
      PortalCurationTask localPortalCurationTask2 = d(paramContext, parame, paramPortalCurationTask);
      localObject = localPortalCurationTask2;
      if ((localObject == null) || (!((PortalCurationTask)localObject).i()));
    }
    catch (Exception localException1)
    {
      try
      {
        PortalCurationTask localPortalCurationTask1 = a(paramContext, parame, (PortalCurationTask)localObject);
        Object localObject = localPortalCurationTask1;
        if (localObject != null)
          paramPortalCurationTask = (PortalCurationTask)localObject;
        if (localObject == null)
        {
          bool = true;
          if (!a(paramContext, paramPortalCurationTask, bool))
            break label177;
          a.a("task done and cleaned up.");
          return true;
          localException1 = localException1;
          a.a(localException1, "Exception while uploading meta-data, will retry");
          SyncStats localSyncStats1 = paramSyncResult.stats;
          localSyncStats1.numIoExceptions = (1L + localSyncStats1.numIoExceptions);
          localObject = paramPortalCurationTask;
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          a.a(localException2, "Exception while uploading photo, will retry");
          SyncStats localSyncStats3 = paramSyncResult.stats;
          localSyncStats3.numIoExceptions = (1L + localSyncStats3.numIoExceptions);
          continue;
          boolean bool = false;
        }
        label177: a.a("task could not be cleaned up, marking as skipped, will retry...");
        SyncStats localSyncStats2 = paramSyncResult.stats;
        localSyncStats2.numSkippedEntries = (1L + localSyncStats2.numSkippedEntries);
      }
    }
    return false;
  }

  private static boolean a(Context paramContext, PortalCurationTask paramPortalCurationTask, boolean paramBoolean)
  {
    if ((!paramBoolean) && (paramPortalCurationTask.s()))
      return false;
    aa localaa = a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramPortalCurationTask.b();
    localaa.a("Deleting task (request ID: %s)", arrayOfObject);
    d.c(paramContext, paramPortalCurationTask);
    Uri localUri = paramPortalCurationTask.g();
    if (localUri != null);
    try
    {
      g.c(paramContext, localUri);
      return true;
    }
    catch (IOException localIOException)
    {
      while (true)
        a.b(localIOException, "IOException while trying to delete photo: dangling file left in player's private directory!");
    }
  }

  private static PortalCurationTask b(Context paramContext, e parame, PortalCurationTask paramPortalCurationTask)
  {
    new Object[] { paramPortalCurationTask };
    Object localObject1;
    if (paramPortalCurationTask.m() == null)
    {
      RpcResult localRpcResult2 = parame.a();
      if (localRpcResult2.e())
      {
        new Object[1][0] = localRpcResult2.a();
        localObject1 = paramPortalCurationTask.a((String)localRpcResult2.a());
        d.b(paramContext, (PortalCurationTask)localObject1);
      }
    }
    while (true)
    {
      Result localResult;
      RpcResult localRpcResult1;
      Object localObject2;
      try
      {
        File localFile = new File(((PortalCurationTask)localObject1).g().getPath());
        localResult = i.a(((PortalCurationTask)localObject1).m(), localFile);
        if (localResult.e())
        {
          localRpcResult1 = parame.a(((PortalCurationTask)localObject1).b(), ((PortalCurationTask)localObject1).t(), ((PortalCurationTask)localObject1).m());
          if (!localRpcResult1.e())
            break label401;
          localObject2 = a(paramContext, (PortalCurationTask)localObject1, 0);
          localObject1 = localObject2;
          return localObject1;
          throw new y("ResumableUpload: Error while asking the server for an upload URL");
        }
      }
      catch (IOException localIOException)
      {
        aa localaa1 = a;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = ((PortalCurationTask)localObject1).g();
        localaa1.c(localIOException, "Reading from %s failed, deleting task!", arrayOfObject1);
        return null;
      }
      switch (g.b[((com.nianticproject.ingress.shared.k)localResult.d()).ordinal()])
      {
      default:
        a.c("Unknown upload failure");
        return localObject1;
      case 1:
        throw new IOException("ResumableUpload: Failed to upload photo, retry later");
      case 2:
        d.b(paramContext, ((PortalCurationTask)localObject1).a(null));
        throw new y("ResumableUpload: Error uploading photo, must restart");
      case 3:
      }
      if (((PortalCurationTask)localObject1).l() >= 2)
      {
        aa localaa3 = a;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = ((PortalCurationTask)localObject1).m();
        localaa3.c("FAILURE_MD5_MISMATCH, treating as success (%s)", arrayOfObject3);
      }
      else
      {
        aa localaa2 = a;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = ((PortalCurationTask)localObject1).m();
        localaa2.c("FAILURE_MD5_MISMATCH, retrying (%s)", arrayOfObject2);
        d.b(paramContext, ((PortalCurationTask)localObject1).a(null));
        throw new y("ResumableUpload: MD5 mismatch when uploading photo, must restart");
        label401: if (localRpcResult1.g())
        {
          switch (g.c[((com.nianticproject.ingress.shared.rpc.v)localRpcResult1.b()).ordinal()])
          {
          case 1:
          default:
            throw new y("ResumableUpload: SERVER_ERROR");
          case 2:
            return a(paramContext, (PortalCurationTask)localObject1, 0);
          case 3:
            d.b(paramContext, ((PortalCurationTask)localObject1).a(null));
            throw new y("ResumableUpload: Error uploading photo, must restart");
          case 4:
            aa localaa6 = a;
            Object[] arrayOfObject6 = new Object[1];
            arrayOfObject6[0] = ((PortalCurationTask)localObject1).g();
            localaa6.c("Portal image %s is too big, deleting task!", arrayOfObject6);
            return null;
          case 5:
            aa localaa5 = a;
            Object[] arrayOfObject5 = new Object[1];
            arrayOfObject5[0] = ((PortalCurationTask)localObject1).g();
            localaa5.c("Portal image %s is not servable, deleting task!", arrayOfObject5);
            return null;
          case 6:
          }
          aa localaa4 = a;
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = ((PortalCurationTask)localObject1).g();
          localaa4.c("Portal related to this image %s does not exist, deleting task!", arrayOfObject4);
          return null;
        }
        if (localRpcResult1.f())
          throw new y(localRpcResult1.c());
        localObject2 = localObject1;
        continue;
        localObject1 = paramPortalCurationTask;
      }
    }
  }

  // ERROR //
  private static PortalCurationTask c(Context paramContext, e parame, PortalCurationTask paramPortalCurationTask)
  {
    // Byte code:
    //   0: getstatic 16	com/nianticproject/ingress/curation/f:a	Lcom/nianticproject/ingress/common/w/aa;
    //   3: pop
    //   4: iconst_1
    //   5: anewarray 4	java/lang/Object
    //   8: dup
    //   9: iconst_0
    //   10: aload_2
    //   11: aastore
    //   12: pop
    //   13: new 339	java/io/ByteArrayOutputStream
    //   16: dup
    //   17: invokespecial 340	java/io/ByteArrayOutputStream:<init>	()V
    //   20: astore 5
    //   22: aload_0
    //   23: aload_2
    //   24: invokevirtual 79	com/nianticproject/ingress/curation/PortalCurationTask:g	()Landroid/net/Uri;
    //   27: invokestatic 98	com/nianticproject/ingress/common/q:c	()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;
    //   30: invokevirtual 342	com/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle:b	()I
    //   33: invokestatic 98	com/nianticproject/ingress/common/q:c	()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;
    //   36: invokevirtual 344	com/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle:c	()Z
    //   39: lconst_0
    //   40: iconst_0
    //   41: invokestatic 347	com/nianticproject/ingress/o/g:a	(Landroid/content/Context;Landroid/net/Uri;IZJZ)Lcom/nianticproject/ingress/o/i;
    //   44: getfield 352	com/nianticproject/ingress/o/i:a	Landroid/graphics/Bitmap;
    //   47: getstatic 358	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   50: invokestatic 98	com/nianticproject/ingress/common/q:c	()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;
    //   53: invokevirtual 360	com/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle:a	()I
    //   56: aload 5
    //   58: invokevirtual 366	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   61: pop
    //   62: aload 5
    //   64: invokevirtual 370	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   67: astore 13
    //   69: aload 13
    //   71: bipush 10
    //   73: invokestatic 376	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   76: astore 14
    //   78: aload_1
    //   79: aload_2
    //   80: invokevirtual 81	com/nianticproject/ingress/curation/PortalCurationTask:b	()Ljava/lang/String;
    //   83: aload_2
    //   84: invokevirtual 278	com/nianticproject/ingress/curation/PortalCurationTask:t	()Ljava/lang/String;
    //   87: aload 14
    //   89: invokeinterface 378 4 0
    //   94: astore 15
    //   96: aload 15
    //   98: invokevirtual 255	com/nianticproject/ingress/shared/rpc/RpcResult:e	()Z
    //   101: ifeq +23 -> 124
    //   104: aload_0
    //   105: aload_2
    //   106: aload 13
    //   108: arraylength
    //   109: invokestatic 283	com/nianticproject/ingress/curation/f:a	(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;I)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    //   112: astore 20
    //   114: aload 20
    //   116: astore_2
    //   117: aload 5
    //   119: invokevirtual 381	java/io/ByteArrayOutputStream:close	()V
    //   122: aload_2
    //   123: areturn
    //   124: aload 15
    //   126: invokevirtual 317	com/nianticproject/ingress/shared/rpc/RpcResult:g	()Z
    //   129: ifeq +144 -> 273
    //   132: getstatic 319	com/nianticproject/ingress/curation/g:c	[I
    //   135: aload 15
    //   137: invokevirtual 321	com/nianticproject/ingress/shared/rpc/RpcResult:b	()Ljava/lang/Object;
    //   140: checkcast 323	com/nianticproject/ingress/shared/rpc/v
    //   143: invokevirtual 324	com/nianticproject/ingress/shared/rpc/v:ordinal	()I
    //   146: iaload
    //   147: tableswitch	default:+21 -> 168, 1:+70->217, 2:+92->239
    //   169: nop
    //   170: fstore_2
    //   171: dup
    //   172: ldc_w 383
    //   175: invokespecial 286	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/String;)V
    //   178: athrow
    //   179: astore 8
    //   181: getstatic 16	com/nianticproject/ingress/curation/f:a	Lcom/nianticproject/ingress/common/w/aa;
    //   184: astore 9
    //   186: iconst_1
    //   187: anewarray 4	java/lang/Object
    //   190: astore 10
    //   192: aload 10
    //   194: iconst_0
    //   195: aload_2
    //   196: invokevirtual 79	com/nianticproject/ingress/curation/PortalCurationTask:g	()Landroid/net/Uri;
    //   199: aastore
    //   200: aload 9
    //   202: ldc_w 385
    //   205: aload 10
    //   207: invokevirtual 311	com/nianticproject/ingress/common/w/aa:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   210: aload 5
    //   212: invokevirtual 381	java/io/ByteArrayOutputStream:close	()V
    //   215: aconst_null
    //   216: areturn
    //   217: aload 5
    //   219: invokevirtual 381	java/io/ByteArrayOutputStream:close	()V
    //   222: aload_2
    //   223: areturn
    //   224: astore 19
    //   226: getstatic 16	com/nianticproject/ingress/curation/f:a	Lcom/nianticproject/ingress/common/w/aa;
    //   229: aload 19
    //   231: ldc_w 387
    //   234: invokevirtual 181	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   237: aload_2
    //   238: areturn
    //   239: aload_0
    //   240: aload_2
    //   241: aload 13
    //   243: arraylength
    //   244: invokestatic 283	com/nianticproject/ingress/curation/f:a	(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;I)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    //   247: astore 17
    //   249: aload 5
    //   251: invokevirtual 381	java/io/ByteArrayOutputStream:close	()V
    //   254: aload 17
    //   256: areturn
    //   257: astore 18
    //   259: getstatic 16	com/nianticproject/ingress/curation/f:a	Lcom/nianticproject/ingress/common/w/aa;
    //   262: aload 18
    //   264: ldc_w 387
    //   267: invokevirtual 181	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   270: aload 17
    //   272: areturn
    //   273: aload 15
    //   275: invokevirtual 335	com/nianticproject/ingress/shared/rpc/RpcResult:f	()Z
    //   278: ifeq -161 -> 117
    //   281: new 69	com/nianticproject/ingress/shared/rpc/y
    //   284: dup
    //   285: aload 15
    //   287: invokevirtual 337	com/nianticproject/ingress/shared/rpc/RpcResult:c	()Ljava/lang/String;
    //   290: invokespecial 286	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/String;)V
    //   293: athrow
    //   294: astore 6
    //   296: aload 5
    //   298: invokevirtual 381	java/io/ByteArrayOutputStream:close	()V
    //   301: aload 6
    //   303: athrow
    //   304: astore 16
    //   306: getstatic 16	com/nianticproject/ingress/curation/f:a	Lcom/nianticproject/ingress/common/w/aa;
    //   309: aload 16
    //   311: ldc_w 387
    //   314: invokevirtual 181	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   317: aload_2
    //   318: areturn
    //   319: astore 11
    //   321: getstatic 16	com/nianticproject/ingress/curation/f:a	Lcom/nianticproject/ingress/common/w/aa;
    //   324: aload 11
    //   326: ldc_w 387
    //   329: invokevirtual 181	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   332: goto -117 -> 215
    //   335: astore 7
    //   337: getstatic 16	com/nianticproject/ingress/curation/f:a	Lcom/nianticproject/ingress/common/w/aa;
    //   340: aload 7
    //   342: ldc_w 387
    //   345: invokevirtual 181	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   348: goto -47 -> 301
    //
    // Exception table:
    //   from	to	target	type
    //   22	114	179	java/io/IOException
    //   124	168	179	java/io/IOException
    //   168	179	179	java/io/IOException
    //   239	249	179	java/io/IOException
    //   273	294	179	java/io/IOException
    //   217	222	224	java/io/IOException
    //   249	254	257	java/io/IOException
    //   22	114	294	finally
    //   124	168	294	finally
    //   168	179	294	finally
    //   181	210	294	finally
    //   239	249	294	finally
    //   273	294	294	finally
    //   117	122	304	java/io/IOException
    //   210	215	319	java/io/IOException
    //   296	301	335	java/io/IOException
  }

  private static PortalCurationTask d(Context paramContext, e parame, PortalCurationTask paramPortalCurationTask)
  {
    int i = 1;
    while (true)
    {
      String str5;
      RpcResult localRpcResult;
      try
      {
        if (paramPortalCurationTask.i())
          return paramPortalCurationTask;
        aa localaa = a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramPortalCurationTask.b();
        localaa.a("Uploading meta-data for task (request ID: %s)", arrayOfObject);
        if (TextUtils.isEmpty(paramPortalCurationTask.c()))
          break label267;
        if (!TextUtils.isEmpty(paramPortalCurationTask.h()))
        {
          localb = b.c;
          str1 = paramPortalCurationTask.h();
          Uri localUri = paramPortalCurationTask.g();
          if ((localUri == null) || (TextUtils.isEmpty(localUri.toString())))
            break label361;
          if (!paramPortalCurationTask.r())
            break label353;
          String str2 = paramPortalCurationTask.c();
          String str3 = paramPortalCurationTask.d();
          String str4 = paramPortalCurationTask.e();
          u localu = paramPortalCurationTask.f();
          if (i == 0)
            break label366;
          str5 = paramPortalCurationTask.b();
          localRpcResult = parame.a(str2, str3, str4, localu, str5, localb, str1);
          if ((localRpcResult == null) || (localRpcResult.e()))
            break label343;
          if (!localRpcResult.g())
            break label329;
          switch (g.e[((com.nianticproject.ingress.shared.rpc.t)localRpcResult.b()).ordinal()])
          {
          default:
            throw new y("SERVER_ERROR");
          case 5:
          case 6:
          case 1:
          case 2:
          case 3:
          case 4:
          }
        }
      }
      catch (y localy)
      {
        d.b(paramContext, paramPortalCurationTask.p());
        throw localy;
      }
      b localb = b.d;
      String str1 = null;
      continue;
      label267: localb = b.e;
      str1 = null;
      continue;
      switch (g.d[localb.ordinal()])
      {
      case 3:
        throw new y("Unexpected result from server: PORTAL_NOT_FOUND when sending a new suggestion");
        return a(paramContext, paramPortalCurationTask);
        label329: throw new y(localRpcResult.c(), null);
        label343: PortalCurationTask localPortalCurationTask = a(paramContext, paramPortalCurationTask);
        return localPortalCurationTask;
        label353: localRpcResult = null;
        continue;
        return paramPortalCurationTask;
        label361: i = 0;
        continue;
        label366: str5 = null;
      default:
      case 1:
      case 2:
      }
    }
    return null;
    return paramPortalCurationTask;
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.curation.f
 * JD-Core Version:    0.6.2
 */