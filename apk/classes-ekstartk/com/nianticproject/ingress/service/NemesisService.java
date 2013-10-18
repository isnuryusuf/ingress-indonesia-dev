package com.nianticproject.ingress.service;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract.Data;
import android.text.TextUtils;
import com.google.a.a.an;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.k.s;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.curation.PortalCurationTask;
import com.nianticproject.ingress.curation.d;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.o.g;
import com.nianticproject.ingress.service.core.CoreService;
import com.nianticproject.ingress.shared.portal.PortalImagePage;
import com.nianticproject.ingress.shared.q;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.y;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class NemesisService extends CoreService
{
  private static final Map<Integer, String> c;
  private static final Set<i> d = jc.a();
  private NemesisApplication e;
  private ah f;

  static
  {
    HashMap localHashMap = hc.b();
    c = localHashMap;
    localHashMap.put(Integer.valueOf(0), "OP_CODE_ADD_COMM_MESSAGE");
    c.put(Integer.valueOf(1), "OP_CODE_VALIDATE_NICKNAME");
    c.put(Integer.valueOf(2), "OP_CODE_PERSIST_NICKNAME");
    c.put(Integer.valueOf(3), "OP_CODE_LOG_TO_SERVER");
    c.put(Integer.valueOf(4), "OP_CODE_GET_SPACE2FACE_TEXTURE");
    c.put(Integer.valueOf(5), "OP_CODE_LOAD_CONTACT_PHOTO");
    c.put(Integer.valueOf(6), "OP_CODE_DOWNLOAD_PHOTO");
    c.put(Integer.valueOf(7), "OP_CODE_ENQUEUE_PORTAL_CURATION");
    c.put(Integer.valueOf(8), "OP_CODE_LOAD_PHOTO");
    c.put(Integer.valueOf(9), "OP_CODE_MAKE_PHOTO_COPY");
    c.put(Integer.valueOf(10), "OP_CODE_DELETE_PHOTO");
    c.put(Integer.valueOf(11), "OP_CODE_READ_PHOTO_GEOLOCATION");
    c.put(Integer.valueOf(12), "OP_CODE_CREATE_NEW_FILE_FOR_CAMERA");
    c.put(Integer.valueOf(13), "OP_CODE_ROTATE_PHOTO");
    c.put(Integer.valueOf(14), "OP_CODE_GET_PORTAL_IMAGES");
    c.put(Integer.valueOf(15), "OP_CODE_VOTE");
  }

  public static int a(Context paramContext)
  {
    return a(paramContext, b(paramContext, 4));
  }

  public static int a(Context paramContext, long paramLong)
  {
    Intent localIntent = b(paramContext, 5);
    localIntent.putExtra("photoId", paramLong);
    return a(paramContext, localIntent);
  }

  public static int a(Context paramContext, Uri paramUri)
  {
    Intent localIntent = b(paramContext, 10);
    localIntent.putExtra("photo_uri", paramUri);
    return a(paramContext, localIntent);
  }

  public static int a(Context paramContext, Uri paramUri, int paramInt)
  {
    Intent localIntent = b(paramContext, 13);
    localIntent.putExtra("photo_uri", paramUri);
    localIntent.putExtra("size", paramInt);
    localIntent.putExtra("precise", false);
    localIntent.putExtra("rotation", 90);
    localIntent.putExtra("load", true);
    return a(paramContext, localIntent);
  }

  public static int a(Context paramContext, Uri paramUri, int paramInt, long paramLong)
  {
    Intent localIntent = b(paramContext, 8);
    localIntent.putExtra("photo_uri", paramUri);
    localIntent.putExtra("size", paramInt);
    localIntent.putExtra("precise", false);
    localIntent.putExtra("file_size", paramLong);
    localIntent.putExtra("make_public_copy", true);
    return a(paramContext, localIntent);
  }

  public static int a(Context paramContext, com.google.h.a.a.c paramc)
  {
    String str = com.nianticproject.ingress.g.e.a(paramContext);
    byte[] arrayOfByte = com.nianticproject.ingress.g.e.a(paramc, paramContext);
    Intent localIntent = b(paramContext, 3);
    localIntent.putExtra("url", str);
    localIntent.putExtra("postData", arrayOfByte);
    return a(paramContext, localIntent);
  }

  public static int a(Context paramContext, com.nianticproject.ingress.common.b paramb, String paramString, List<com.nianticproject.ingress.shared.plext.c> paramList, boolean paramBoolean1, long paramLong, int paramInt, boolean paramBoolean2)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisService.addCommMessage", paramString);
      Intent localIntent = b(paramContext, 0);
      localIntent.putExtra("channel", paramb);
      localIntent.putExtra("text", paramString);
      if (paramList != null)
        localIntent.putExtra("markup", com.nianticproject.ingress.content.a.a(paramList));
      localIntent.putExtra("temporary", paramBoolean1);
      localIntent.putExtra("time", paramLong);
      localIntent.putExtra("duration", paramInt);
      localIntent.putExtra("guid", null);
      int i = 0;
      if (paramBoolean2)
        i = 1;
      localIntent.putExtra("factionOnly", i);
      int j = a(paramContext, localIntent);
      return j;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static int a(Context paramContext, PortalCurationTask paramPortalCurationTask)
  {
    Intent localIntent = b(paramContext, 7);
    localIntent.putExtra("request", paramPortalCurationTask);
    return a(paramContext, localIntent);
  }

  public static int a(Context paramContext, String paramString)
  {
    return a(paramContext, h.a(paramContext, paramString, false));
  }

  public static int a(Context paramContext, String paramString1, int paramInt, String paramString2)
  {
    an.a(paramString1, "Portal GUID is null!");
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "max items per page must be 1 or more");
      Intent localIntent = b(paramContext, 14);
      localIntent.putExtra("guid", paramString1);
      localIntent.putExtra("count", paramInt);
      localIntent.putExtra("cursor", paramString2);
      return a(paramContext, localIntent);
    }
  }

  public static int a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool1 = true;
    boolean bool2;
    if (!TextUtils.isEmpty(paramString1))
    {
      bool2 = bool1;
      an.a(bool2, "Portal GUID is null or empty!");
      if (TextUtils.isEmpty(paramString2))
        break label83;
    }
    while (true)
    {
      an.a(bool1, "Photo GUID is null or empty!");
      Intent localIntent = b(paramContext, 15);
      localIntent.putExtra("guid", paramString1);
      localIntent.putExtra("photoId", paramString2);
      localIntent.putExtra("add_vote", paramBoolean);
      return a(paramContext, localIntent);
      bool2 = false;
      break;
      label83: bool1 = false;
    }
  }

  public static void a(i parami)
  {
    ec.a("registerListener");
    d.add(parami);
  }

  public static int b(Context paramContext)
  {
    return a(paramContext, b(paramContext, 12));
  }

  public static int b(Context paramContext, Uri paramUri)
  {
    Intent localIntent = b(paramContext, 11);
    localIntent.putExtra("photo_uri", paramUri);
    return a(paramContext, localIntent);
  }

  public static int b(Context paramContext, String paramString)
  {
    return a(paramContext, h.a(paramContext, paramString, true));
  }

  private static Intent b(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, NemesisService.class);
    if (paramInt < 0)
      throw new IllegalArgumentException("Operation codes must not be negative!");
    localIntent.putExtra("CoreService.op_code", paramInt);
    return localIntent;
  }

  private static Bitmap b(Context paramContext, long paramLong)
  {
    Uri localUri = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, paramLong);
    String[] arrayOfString = { "data15" };
    Cursor localCursor = paramContext.getContentResolver().query(localUri, arrayOfString, null, null, null);
    if (localCursor == null)
      return null;
    try
    {
      if (localCursor.moveToFirst())
      {
        byte[] arrayOfByte = localCursor.getBlob(0);
        if (arrayOfByte == null)
          return null;
        Bitmap localBitmap = BitmapFactory.decodeStream(new ByteArrayInputStream(arrayOfByte));
        return localBitmap;
      }
      return null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public static void b(i parami)
  {
    ec.a("unregisterListener");
    d.remove(parami);
  }

  public static int c(Context paramContext, String paramString)
  {
    Intent localIntent = b(paramContext, 6);
    localIntent.putExtra("url", paramString);
    return a(paramContext, localIntent);
  }

  private static void j(Intent paramIntent)
  {
    paramIntent.getIntExtra("CoreService.request_id", -1);
    Uri localUri1 = (Uri)paramIntent.getParcelableExtra("photo_uri");
    Uri localUri2 = (Uri)paramIntent.getParcelableExtra("photo_copy_uri");
    paramIntent.getIntExtra("size", -1);
    com.nianticproject.ingress.o.h localh = (com.nianticproject.ingress.o.h)paramIntent.getSerializableExtra("photo_error");
    Bitmap localBitmap = (Bitmap)paramIntent.getParcelableExtra("photo");
    if (localh == com.nianticproject.ingress.o.h.a)
    {
      Iterator localIterator2 = d.iterator();
      while (localIterator2.hasNext())
        ((i)localIterator2.next()).a(localUri1, localUri2, localBitmap);
    }
    Iterator localIterator1 = d.iterator();
    while (localIterator1.hasNext())
      ((i)localIterator1.next()).a(localUri1, localh);
  }

  private void k(Intent paramIntent)
  {
    Uri localUri = (Uri)paramIntent.getParcelableExtra("photo_uri");
    int i = paramIntent.getIntExtra("size", -1);
    boolean bool1 = paramIntent.getBooleanExtra("precise", false);
    long l = paramIntent.getLongExtra("file_size", 0L);
    boolean bool2 = paramIntent.getBooleanExtra("make_public_copy", false);
    try
    {
      com.nianticproject.ingress.o.i locali = g.a(this, localUri, i, bool1, l, bool2);
      paramIntent.putExtra("photo_copy_uri", locali.c);
      paramIntent.putExtra("photo", locali.a);
      paramIntent.putExtra("photo_error", locali.d);
      return;
    }
    catch (IOException localIOException)
    {
      this.a.b(localIOException, "IOException while trying to load a photo");
    }
  }

  protected final String a()
  {
    return "NemesisService";
  }

  public final void a(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("CoreService.op_code", -1);
    aa localaa = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = c.get(Integer.valueOf(i));
    localaa.a("Processing %s", arrayOfObject);
    i(paramIntent);
  }

  public final void b(Intent paramIntent)
  {
    int i = 1;
    while (true)
    {
      int j;
      try
      {
        j = paramIntent.getIntExtra("CoreService.op_code", -1);
        aa localaa1 = this.a;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = c.get(Integer.valueOf(j));
        localaa1.a("Processing %s on a threadpool thread", arrayOfObject1);
        switch (j)
        {
        default:
          return;
        case 0:
          com.nianticproject.ingress.shared.aj.a("NemesisService.processIntent(AddCommMessage)");
          com.nianticproject.ingress.common.b localb1 = (com.nianticproject.ingress.common.b)paramIntent.getSerializableExtra("channel");
          String str7 = paramIntent.getStringExtra("text");
          boolean bool2 = paramIntent.hasExtra("markup");
          byte[] arrayOfByte = null;
          if (bool2)
            arrayOfByte = paramIntent.getByteArrayExtra("markup");
          boolean bool3 = paramIntent.getBooleanExtra("temporary", false);
          long l = paramIntent.getLongExtra("time", -1L);
          int n = paramIntent.getIntExtra("duration", -1);
          String str8 = paramIntent.getStringExtra("guid");
          if (paramIntent.getIntExtra("factionOnly", 0) == i)
          {
            if (i == 0)
              break label286;
            i1 = com.nianticproject.ingress.common.a.b;
            com.nianticproject.ingress.content.a.a(this, localb1, str7, arrayOfByte, bool3, l, n, str8, i1);
            continue;
          }
          break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        }
      }
      finally
      {
        h(paramIntent);
        com.nianticproject.ingress.shared.aj.b();
      }
      i = 0;
      continue;
      label286: int i1 = com.nianticproject.ingress.common.a.c;
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(ValidateNickname)");
      h localh = new h(paramIntent);
      String str6 = localh.a();
      if (j == i);
      RpcResult localRpcResult5;
      while (true)
      {
        try
        {
          localab2 = com.nianticproject.ingress.common.u.aj.b(str6);
          localRpcResult5 = this.f.a(localab2);
          if (localRpcResult5.g())
            break label389;
          localh.b();
        }
        catch (y localy5)
        {
          this.a.b(localy5, "Exception while validating nickname");
          localh.c();
        }
        break;
        ab localab2 = com.nianticproject.ingress.common.u.aj.c(str6);
      }
      label389: localh.a((q)localRpcResult5.b());
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(LogToServer)");
      com.nianticproject.ingress.g.e.a(paramIntent.getStringExtra("url"), paramIntent.getByteArrayExtra("postData"));
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(GetSpace2FaceTexture)");
      com.nianticproject.ingress.common.u.b localb = NemesisApplication.f();
      try
      {
        s.a(localb, ec.a());
      }
      catch (y localy4)
      {
        com.nianticproject.ingress.common.a.a.a(com.nianticproject.ingress.common.a.b.e, "FactionMap");
        this.a.a(localy4, "exception while getting space2face texture");
      }
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(LoadContactPhoto)");
      Bitmap localBitmap3 = b(this, paramIntent.getLongExtra("photoId", 0L));
      if (localBitmap3 == null)
        continue;
      paramIntent.putExtra("photo", localBitmap3);
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(DownloadPhoto)");
      String str5 = paramIntent.getStringExtra("url");
      if (TextUtils.isEmpty(str5))
      {
        this.a.b("Load photo with empty URL, skipping");
        h(paramIntent);
        com.nianticproject.ingress.shared.aj.b();
        return;
      }
      try
      {
        Bitmap localBitmap2 = BitmapFactory.decodeStream(new URL(str5).openStream());
        localBitmap1 = localBitmap2;
        if (localBitmap1 == null)
          continue;
        paramIntent.putExtra("photo", localBitmap1);
      }
      catch (Exception localException)
      {
        while (true)
        {
          this.a.a(localException, "Exception while downloading photo: " + str5);
          Bitmap localBitmap1 = null;
        }
      }
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(EnqueuePortalCuration)");
      Object localObject2 = (PortalCurationTask)paramIntent.getParcelableExtra("request");
      Uri localUri3 = ((PortalCurationTask)localObject2).g();
      if (localUri3 != null);
      try
      {
        if (!g.e(this, localUri3))
          g.a(this, localUri3);
        PortalCurationTask localPortalCurationTask = ((PortalCurationTask)localObject2).a(g.b(this, ((PortalCurationTask)localObject2).g()));
        localObject2 = localPortalCurationTask;
        d.a(this, (PortalCurationTask)localObject2);
        paramIntent.putExtra("success", true);
      }
      catch (IOException localIOException4)
      {
        this.a.b(localIOException4, "IOException while trying to make a copy of a submitted portal photo");
        paramIntent.putExtra("success", false);
        h(paramIntent);
        com.nianticproject.ingress.shared.aj.b();
        return;
      }
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(LoadPhoto)");
      k(paramIntent);
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(MakePhotoCopy)");
      Uri localUri2 = (Uri)paramIntent.getParcelableExtra("photo_uri");
      try
      {
        paramIntent.putExtra("photo_copy_uri", g.b(this, localUri2));
        paramIntent.putExtra("success", true);
      }
      catch (IOException localIOException3)
      {
        this.a.b(localIOException3, "IOException while trying to copy a photo to the private directory");
        paramIntent.putExtra("success", false);
      }
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(DeletePhoto)");
      Uri localUri1 = (Uri)paramIntent.getParcelableExtra("photo_uri");
      try
      {
        g.c(this, localUri1);
        paramIntent.putExtra("success", true);
      }
      catch (IOException localIOException2)
      {
        this.a.b(localIOException2, "IOException while trying to delete a photo in the private directory");
        paramIntent.putExtra("success", false);
      }
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(PhotoGeolocation)");
      paramIntent.putExtra("location", g.d(this, (Uri)paramIntent.getParcelableExtra("photo_uri")));
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(CreateNewFileForCamera)");
      try
      {
        paramIntent.putExtra("file", g.a(this));
      }
      catch (IOException localIOException1)
      {
        this.a.b(localIOException1, "IOException while trying to create a new temporary file for the camera");
      }
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(RotatePhoto)");
      g.a(this, (Uri)paramIntent.getParcelableExtra("photo_uri"), paramIntent.getIntExtra("rotation", 0));
      if (!paramIntent.getBooleanExtra("load", false))
        continue;
      k(paramIntent);
      continue;
      com.nianticproject.ingress.shared.aj.a("NemesisService.processIntentThreaded(GetPortalImages)");
      String str3 = paramIntent.getStringExtra("guid");
      int k = paramIntent.getIntExtra("count", 1);
      String str4 = paramIntent.getStringExtra("cursor");
      ab localab1 = com.nianticproject.ingress.common.u.aj.a(str3, k, str4);
      int m;
      while (true)
      {
        RpcResult localRpcResult3;
        try
        {
          RpcResult localRpcResult4 = this.f.a(localab1);
          localRpcResult3 = localRpcResult4;
          if (localRpcResult3 == null)
            break label1378;
          if (localRpcResult3.e())
          {
            PortalImagePage localPortalImagePage = (PortalImagePage)localRpcResult3.a();
            this.b.post(new e(this, str3, localPortalImagePage, k, str4));
            m = 0;
            label1113: if (m == 0)
              break;
            paramIntent.putExtra("exception", true);
          }
        }
        catch (y localy3)
        {
          this.a.a(localy3, "Problem while sending getPortalImages RPC, treating as RpcException");
          localRpcResult3 = null;
          continue;
        }
        if (!localRpcResult3.g())
          break label1372;
        paramIntent.putExtra("error", (Serializable)localRpcResult3.b());
        m = 0;
      }
      String str1 = paramIntent.getStringExtra("guid");
      String str2 = paramIntent.getStringExtra("photoId");
      boolean bool1 = paramIntent.getBooleanExtra("add_vote", true);
      this.b.post(new f(this, str1, str2, bool1));
      try
      {
        RpcResult localRpcResult2 = this.f.a(com.nianticproject.ingress.common.u.aj.a(str2, bool1));
        localRpcResult1 = localRpcResult2;
        try
        {
          paramIntent.putExtra("success", true);
          while ((localRpcResult1 != null) && (!localRpcResult1.e()))
          {
            if (!localRpcResult1.g())
              break label1324;
            com.nianticproject.ingress.shared.rpc.ai localai = (com.nianticproject.ingress.shared.rpc.ai)localRpcResult1.b();
            localai.ordinal();
            break;
            label1300: Throwable localThrowable;
            this.a.a(localThrowable, "Problem while sending votePortalImage RPC");
            paramIntent.putExtra("success", false);
          }
          label1324: aa localaa2 = this.a;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localRpcResult1.c();
          localaa2.b("Exception received: %s", arrayOfObject2);
          paramIntent.putExtra("success", false);
        }
        catch (y localy1)
        {
          break label1300;
        }
        label1372: m = i;
        break label1113;
        label1378: m = i;
      }
      catch (y localy2)
      {
        while (true)
          RpcResult localRpcResult1 = null;
      }
    }
  }

  protected final void c(Intent paramIntent)
  {
    boolean bool1 = true;
    int i = paramIntent.getIntExtra("CoreService.op_code", -1);
    int j = paramIntent.getIntExtra("CoreService.request_id", -1);
    aa localaa = this.a;
    Object[] arrayOfObject = new Object[bool1];
    arrayOfObject[0] = c.get(Integer.valueOf(i));
    localaa.a("%s processing complete, notifying listeners", arrayOfObject);
    switch (i)
    {
    case 3:
    default:
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    }
    do
      while (true)
      {
        com.nianticproject.ingress.shared.aj.b();
        return;
        try
        {
          com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(AddCommMessage)");
          continue;
        }
        finally
        {
          com.nianticproject.ingress.shared.aj.b();
        }
        com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(ValidateNickname)");
        h localh = new h(paramIntent);
        Iterator localIterator15 = d.iterator();
        while (localIterator15.hasNext())
          localh.a((i)localIterator15.next());
        continue;
        com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(GetSpace2FaceTexture)");
        Iterator localIterator14 = d.iterator();
        while (localIterator14.hasNext())
          localIterator14.next();
        continue;
        com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(LoadContactPhoto)");
        long l = paramIntent.getLongExtra("photoId", 0L);
        Bitmap localBitmap2 = (Bitmap)paramIntent.getParcelableExtra("photo");
        if (localBitmap2 != null)
        {
          Iterator localIterator12 = d.iterator();
          while (localIterator12.hasNext())
            ((i)localIterator12.next()).a(l, localBitmap2);
        }
        else
        {
          Iterator localIterator13 = d.iterator();
          while (localIterator13.hasNext())
            ((i)localIterator13.next()).a(l);
          continue;
          com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(DownloadPhoto)");
          String str4 = paramIntent.getStringExtra("url");
          Bitmap localBitmap1 = (Bitmap)paramIntent.getParcelableExtra("photo");
          if (localBitmap1 != null)
          {
            Iterator localIterator10 = d.iterator();
            while (localIterator10.hasNext())
              ((i)localIterator10.next()).a(str4, localBitmap1);
          }
          else
          {
            Iterator localIterator11 = d.iterator();
            while (localIterator11.hasNext())
              ((i)localIterator11.next()).a(str4);
            continue;
            com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(EnqueuePortalCuration)");
            continue;
            com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(LoadPhoto)");
            j(paramIntent);
            continue;
            com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(MakePhotoCopy)");
            paramIntent.getParcelableExtra("photo_uri");
            paramIntent.getParcelableExtra("photo_copy_uri");
            if (paramIntent.getBooleanExtra("success", false))
            {
              Iterator localIterator9 = d.iterator();
              while (localIterator9.hasNext())
                localIterator9.next();
            }
            else
            {
              Iterator localIterator8 = d.iterator();
              while (localIterator8.hasNext())
                localIterator8.next();
              continue;
              com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(DeletePhoto)");
              paramIntent.getParcelableExtra("photo_uri");
              if (paramIntent.getBooleanExtra("success", false))
              {
                Iterator localIterator7 = d.iterator();
                while (localIterator7.hasNext())
                  localIterator7.next();
              }
              else
              {
                Iterator localIterator6 = d.iterator();
                while (localIterator6.hasNext())
                  localIterator6.next();
                continue;
                com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(ReadPhotoGeolocation)");
                Uri localUri2 = (Uri)paramIntent.getParcelableExtra("photo_uri");
                com.google.a.d.u localu1 = (com.google.a.d.u)paramIntent.getSerializableExtra("location");
                Iterator localIterator5 = d.iterator();
                while (localIterator5.hasNext())
                  ((i)localIterator5.next()).a(localUri2, localu1);
                continue;
                com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(CreateNewFileForCamera)");
                File localFile = (File)paramIntent.getSerializableExtra("file");
                Iterator localIterator4 = d.iterator();
                while (localIterator4.hasNext())
                  ((i)localIterator4.next()).a(localFile);
                continue;
                com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(RotatePhoto)");
                Uri localUri1 = (Uri)paramIntent.getParcelableExtra("photo_uri");
                paramIntent.getIntExtra("rotation", 0);
                boolean bool4 = paramIntent.getBooleanExtra("load", false);
                Iterator localIterator3 = d.iterator();
                while (localIterator3.hasNext())
                {
                  ((i)localIterator3.next()).a(localUri1);
                  if (bool4)
                    j(paramIntent);
                }
                continue;
                com.nianticproject.ingress.shared.aj.a("NemesisService.onIntentProcessed(GetPortalImages)");
                String str3 = paramIntent.getStringExtra("guid");
                paramIntent.getIntExtra("count", 1);
                paramIntent.getStringExtra("cursor");
                com.nianticproject.ingress.shared.rpc.u localu = (com.nianticproject.ingress.shared.rpc.u)paramIntent.getSerializableExtra("error");
                boolean bool3 = paramIntent.getBooleanExtra("exception", false);
                if ((localu == null) && (!bool3))
                {
                  Iterator localIterator2 = d.iterator();
                  while (localIterator2.hasNext())
                    ((i)localIterator2.next()).a(j, str3);
                }
                else
                {
                  Iterator localIterator1 = d.iterator();
                  while (localIterator1.hasNext())
                    ((i)localIterator1.next()).a(j, localu);
                }
              }
            }
          }
        }
      }
    while (paramIntent.getBooleanExtra("success", false));
    String str1 = paramIntent.getStringExtra("guid");
    String str2 = paramIntent.getStringExtra("photoId");
    boolean bool2 = paramIntent.getBooleanExtra("add_vote", true);
    com.nianticproject.ingress.i.b localb = p.a().z();
    if (!bool2);
    while (true)
    {
      localb.a(str1, str2, bool1);
      break;
      bool1 = false;
    }
  }

  public void onCreate()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("NemesisService.onCreate");
      super.onCreate();
      this.e = NemesisApplication.a();
      this.f = new ah(NemesisApplication.f(), ec.a());
      this.f.a(new com.nianticproject.ingress.common.u.ai());
      return;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.NemesisService
 * JD-Core Version:    0.6.2
 */