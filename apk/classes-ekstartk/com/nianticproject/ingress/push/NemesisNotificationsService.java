package com.nianticproject.ingress.push;

import android.app.IntentService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import com.google.a.c.dc;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.rpc.ad;
import com.nianticproject.ingress.shared.rpc.push.GcmPayload;
import com.nianticproject.ingress.shared.rpc.y;
import java.util.Collections;
import java.util.Set;

public class NemesisNotificationsService extends IntentService
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(NemesisNotificationsService.class);
  private static final a c = new a(NemesisApplication.a());
  private final Set<String> b = Collections.newSetFromMap(new c(this));
  private ah d;

  public NemesisNotificationsService()
  {
    super("NemesisNotificationsService");
  }

  static Intent a(Context paramContext, NemesisNotificationsService.DataExtras paramDataExtras)
  {
    return new Intent("com.nianticproject.ingress.ACTION_CLEAR_NOTIFICATIONS", com.nianticproject.ingress.e.a.a(paramDataExtras), paramContext, NemesisNotificationsService.class);
  }

  public static DisplayedAchievement a(Context paramContext, Uri paramUri)
  {
    NemesisNotificationsService.DataExtras localDataExtras = (NemesisNotificationsService.DataExtras)com.nianticproject.ingress.e.a.a(paramUri, NemesisNotificationsService.DataExtras.class);
    if (localDataExtras != null)
    {
      if (localDataExtras.achievement != null)
        return localDataExtras.achievement;
      paramContext.startService(a(paramContext, localDataExtras));
    }
    return null;
  }

  public static void a(Context paramContext)
  {
    a(paramContext, new Intent(), "com.nianticproject.ingress.ACTION_INITIALIZE");
  }

  public static void a(Context paramContext, Intent paramIntent)
  {
    a(paramContext, paramIntent, "com.nianticproject.ingress.ACTION_PROCESS_MESSAGE");
  }

  private static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    paramIntent.setAction(paramString);
    paramIntent.setComponent(new ComponentName(paramContext, NemesisNotificationsService.class));
    paramContext.startService(paramIntent);
  }

  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.nianticproject.ingress.EXTRA_REGISTRATION_ID", paramString);
    a(paramContext, localIntent, "com.nianticproject.ingress.ACTION_REGISTER_WITH_SERVER");
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.nianticproject.ingress.EXTRA_SHOW_NEW_NOTIFICATIONS", paramBoolean);
    a(paramContext, localIntent, "com.nianticproject.ingress.ACTION_SET_SHOW_NEW_NOTIFICATIONS");
  }

  private void a(String paramString)
  {
    ad localad = new ad(com.nianticproject.ingress.common.u.aa.a(Void.class, Void.class), "emptyBasket", "registerForGcm", dc.a(paramString));
    try
    {
      this.d.b(localad);
      return;
    }
    catch (y localy)
    {
    }
  }

  public static Intent b(Context paramContext)
  {
    return new Intent("com.nianticproject.ingress.ACTION_DO_EXPIRATION", null, paramContext, NemesisNotificationsService.class);
  }

  // ERROR //
  private static GcmPayload b(String paramString)
  {
    // Byte code:
    //   0: new 162	java/util/zip/GZIPInputStream
    //   3: dup
    //   4: new 164	java/io/ByteArrayInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokestatic 169	com/nianticproject/ingress/shared/a:a	(Ljava/lang/String;)[B
    //   12: invokespecial 172	java/io/ByteArrayInputStream:<init>	([B)V
    //   15: invokespecial 175	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   18: astore_1
    //   19: getstatic 180	com/nianticproject/ingress/common/o/c:b	Lorg/codehaus/jackson/JsonFactory;
    //   22: aload_1
    //   23: invokevirtual 186	org/codehaus/jackson/JsonFactory:createJsonParser	(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    //   26: ldc 188
    //   28: invokevirtual 194	org/codehaus/jackson/JsonParser:readValueAs	(Ljava/lang/Class;)Ljava/lang/Object;
    //   31: checkcast 188	com/nianticproject/ingress/shared/rpc/push/GcmPayload
    //   34: astore_3
    //   35: aload_1
    //   36: invokevirtual 197	java/util/zip/GZIPInputStream:close	()V
    //   39: aload_3
    //   40: areturn
    //   41: astore_2
    //   42: aconst_null
    //   43: astore_3
    //   44: getstatic 23	com/nianticproject/ingress/push/NemesisNotificationsService:a	Lcom/nianticproject/ingress/common/w/aa;
    //   47: new 199	java/lang/StringBuilder
    //   50: dup
    //   51: ldc 201
    //   53: invokespecial 202	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   56: aload_0
    //   57: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokevirtual 212	com/nianticproject/ingress/common/w/aa:c	(Ljava/lang/String;)V
    //   66: aload_3
    //   67: areturn
    //   68: astore 4
    //   70: goto -26 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   0	35	41	java/lang/Exception
    //   35	39	68	java/lang/Exception
  }

  public void onCreate()
  {
    super.onCreate();
    NemesisApplication.a();
    this.d = new ah(NemesisApplication.f(), ec.a());
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    PackageManager localPackageManager;
    if ("com.nianticproject.ingress.ACTION_INITIALIZE".equals(str1))
    {
      int i = Build.VERSION.SDK_INT;
      if (i < 8)
        throw new UnsupportedOperationException("Device must be at least API Level 8 (instead of " + i + ")");
      localPackageManager = getPackageManager();
    }
    NemesisNotificationsService.DataExtras localDataExtras;
    do
    {
      do
      {
        GcmPayload localGcmPayload;
        do
        {
          String str3;
          try
          {
            localPackageManager.getPackageInfo("com.google.android.gsf", 0);
            com.google.android.gcm.a.a(this);
            str3 = com.google.android.gcm.a.e(this);
            if (str3.equals(""))
            {
              com.google.android.gcm.a.a(this, new String[] { "589210111770" });
              return;
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            throw new UnsupportedOperationException("Device does not have package com.google.android.gsf");
          }
          new StringBuilder("registered ID: ").append(str3).toString();
          a(str3);
          return;
          if ("com.nianticproject.ingress.ACTION_REGISTER_WITH_SERVER".equals(str1))
          {
            a(paramIntent.getStringExtra("com.nianticproject.ingress.EXTRA_REGISTRATION_ID"));
            return;
          }
          if (!"com.nianticproject.ingress.ACTION_PROCESS_MESSAGE".equals(str1))
            break;
          String str2 = paramIntent.getStringExtra("COMPRESSED_JSON_CONTENT");
          if (str2 == null)
            return;
          localGcmPayload = b(str2);
        }
        while (localGcmPayload == null);
        if (!com.nianticproject.ingress.common.s.c.f("").equals(localGcmPayload.recipientNickname))
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = com.nianticproject.ingress.common.s.c.f("");
          arrayOfObject[1] = localGcmPayload.recipientNickname;
          return;
        }
        if (this.b.contains(localGcmPayload.id))
        {
          new StringBuilder("Duplicate message (").append(localGcmPayload.id).append(") This is usually a transient GCM issue.").toString();
          return;
        }
        this.b.add(localGcmPayload.id);
        c.a(localGcmPayload.notifications);
        return;
        if (!"com.nianticproject.ingress.ACTION_CLEAR_NOTIFICATIONS".equals(str1))
          break;
        localDataExtras = (NemesisNotificationsService.DataExtras)com.nianticproject.ingress.e.a.a(paramIntent.getData(), NemesisNotificationsService.DataExtras.class);
      }
      while (localDataExtras == null);
      if (localDataExtras.clearAtPlayer)
        c.a();
    }
    while (!localDataExtras.clearPortal);
    c.b();
    return;
    if ("com.nianticproject.ingress.ACTION_DO_EXPIRATION".equals(str1))
    {
      c.c();
      return;
    }
    if ("com.nianticproject.ingress.ACTION_SET_SHOW_NEW_NOTIFICATIONS".equals(str1))
    {
      boolean bool = paramIntent.getBooleanExtra("com.nianticproject.ingress.EXTRA_SHOW_NEW_NOTIFICATIONS", true);
      c.a(bool);
      return;
    }
    a.c("Unknown action %s was not handled!", new Object[] { str1 });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.push.NemesisNotificationsService
 * JD-Core Version:    0.6.2
 */