package com.google.android.gcm;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.util.Log;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public abstract class GCMBaseIntentService extends IntentService
{
  private static PowerManager.WakeLock a;
  private static final Object b = GCMBaseIntentService.class;
  private static int d = 0;
  private static final Random e = new Random();
  private static final int f = (int)TimeUnit.SECONDS.toMillis(3600L);
  private static final String g = Long.toBinaryString(e.nextLong());
  private final String[] c;

  protected GCMBaseIntentService()
  {
    this(c("DynamicSenderIds"), null);
  }

  private GCMBaseIntentService(String paramString, String[] paramArrayOfString)
  {
    super(paramString);
    this.c = paramArrayOfString;
  }

  protected GCMBaseIntentService(String[] paramArrayOfString)
  {
    this(c(a.a(paramArrayOfString)), paramArrayOfString);
  }

  static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    synchronized (b)
    {
      if (a == null)
        a = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "GCM_LIB");
      a.acquire();
      paramIntent.setClassName(paramContext, paramString);
      paramContext.startService(paramIntent);
      return;
    }
  }

  private static String c(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder("GCMIntentService-").append(paramString).append("-");
    int i = 1 + d;
    d = i;
    String str = i;
    new StringBuilder("Intent service name: ").append(str).toString();
    return str;
  }

  protected abstract void a(Context paramContext, Intent paramIntent);

  protected abstract void a(Context paramContext, String paramString);

  protected abstract void a(String paramString);

  protected abstract void b(String paramString);

  public final void onHandleIntent(Intent paramIntent)
  {
    try
    {
      localContext = getApplicationContext();
      str1 = paramIntent.getAction();
      if (str1.equals("com.google.android.c2dm.intent.REGISTRATION"))
      {
        a.d(localContext);
        String str5 = paramIntent.getStringExtra("registration_id");
        str6 = paramIntent.getStringExtra("error");
        str7 = paramIntent.getStringExtra("unregistered");
        new StringBuilder("handleRegistration: registrationId = ").append(str5).append(", error = ").append(str6).append(", unregistered = ").append(str7).toString();
        if (str5 != null)
        {
          a.f(localContext);
          a.a(localContext, str5);
          a(localContext, str5);
        }
      }
    }
    finally
    {
      while (true)
      {
        Context localContext;
        String str1;
        String str6;
        synchronized (b)
        {
          String str7;
          if (a != null)
          {
            a.release();
            return;
            if (str7 != null)
            {
              a.f(localContext);
              b(a.a(localContext, ""));
              continue;
              localObject1 = finally;
            }
          }
        }
        synchronized (b)
        {
          if (a != null)
          {
            a.release();
            throw localObject1;
            new StringBuilder("Registration error: ").append(str6).toString();
            if ("SERVICE_NOT_AVAILABLE".equals(str6))
            {
              int m = localContext.getSharedPreferences("com.google.android.gcm", 0).getInt("backoff_ms", 3000);
              int n = m / 2 + e.nextInt(m);
              new StringBuilder("Scheduling registration retry, backoff = ").append(n).append(" (").append(m).append(")").toString();
              Intent localIntent = new Intent("com.google.android.gcm.intent.RETRY");
              localIntent.putExtra("token", g);
              PendingIntent localPendingIntent = PendingIntent.getBroadcast(localContext, 0, localIntent, 0);
              ((AlarmManager)localContext.getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + n, localPendingIntent);
              if (m >= f)
                continue;
              a.a(localContext, m * 2);
              continue;
            }
            a(str6);
            continue;
            if (str1.equals("com.google.android.c2dm.intent.RECEIVE"))
            {
              String str3 = paramIntent.getStringExtra("message_type");
              if (str3 != null)
              {
                if (str3.equals("deleted_messages"))
                {
                  String str4 = paramIntent.getStringExtra("total_deleted");
                  if (str4 == null)
                    continue;
                  try
                  {
                    int k = Integer.parseInt(str4);
                    new StringBuilder("Received deleted messages notification: ").append(k).toString();
                  }
                  catch (NumberFormatException localNumberFormatException)
                  {
                    Log.e("GCMBaseIntentService", "GCM returned invalid number of deleted messages: " + str4);
                  }
                  continue;
                }
                Log.e("GCMBaseIntentService", "Received unknown special message: " + str3);
                continue;
              }
              a(localContext, paramIntent);
              continue;
            }
            if (!str1.equals("com.google.android.gcm.intent.RETRY"))
              continue;
            String str2 = paramIntent.getStringExtra("token");
            if (!g.equals(str2))
            {
              Log.e("GCMBaseIntentService", "Received invalid token: " + str2);
              while (true)
              {
                synchronized (b)
                {
                  if (a != null)
                  {
                    a.release();
                    return;
                  }
                }
                Log.e("GCMBaseIntentService", "Wakelock reference is null");
              }
            }
            int i = a.e(localContext).length();
            int j = 0;
            if (i > 0)
              j = 1;
            if (j != 0)
            {
              a.c(localContext);
              continue;
            }
            if (this.c == null)
              throw new IllegalStateException("sender id not set on constructor");
            a.b(localContext, this.c);
            continue;
            Log.e("GCMBaseIntentService", "Wakelock reference is null");
            continue;
            localObject5 = finally;
            throw localObject5;
          }
          Log.e("GCMBaseIntentService", "Wakelock reference is null");
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gcm.GCMBaseIntentService
 * JD-Core Version:    0.6.2
 */