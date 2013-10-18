package com.google.android.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class a
{
  private static GCMBroadcastReceiver a;
  private static String b;

  static String a(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("com.google.android.gcm", 0);
    String str = localSharedPreferences.getString("regId", "");
    int i = g(paramContext);
    new StringBuilder("Saving regId on app version ").append(i).toString();
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putString("regId", paramString);
    localEditor.putInt("appVersion", i);
    localEditor.commit();
    return str;
  }

  static String a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      throw new IllegalArgumentException("No senderIds");
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfString[0]);
    for (int i = 1; i < paramArrayOfString.length; i++)
      localStringBuilder.append(',').append(paramArrayOfString[i]);
    return localStringBuilder.toString();
  }

  // ERROR //
  public static void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 86	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore_1
    //   5: aload_0
    //   6: invokevirtual 89	android/content/Context:getPackageName	()Ljava/lang/String;
    //   9: astore_2
    //   10: new 33	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   17: aload_2
    //   18: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: ldc 94
    //   23: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: astore_3
    //   30: aload_1
    //   31: aload_3
    //   32: sipush 4096
    //   35: invokevirtual 100	android/content/pm/PackageManager:getPermissionInfo	(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    //   38: pop
    //   39: aload_1
    //   40: aload_2
    //   41: iconst_2
    //   42: invokevirtual 104	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   45: astore 7
    //   47: aload 7
    //   49: getfield 110	android/content/pm/PackageInfo:receivers	[Landroid/content/pm/ActivityInfo;
    //   52: astore 8
    //   54: aload 8
    //   56: ifnull +9 -> 65
    //   59: aload 8
    //   61: arraylength
    //   62: ifne +79 -> 141
    //   65: new 112	java/lang/IllegalStateException
    //   68: dup
    //   69: new 33	java/lang/StringBuilder
    //   72: dup
    //   73: ldc 114
    //   75: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: aload_2
    //   79: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokespecial 115	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   88: athrow
    //   89: astore 4
    //   91: new 112	java/lang/IllegalStateException
    //   94: dup
    //   95: new 33	java/lang/StringBuilder
    //   98: dup
    //   99: ldc 117
    //   101: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: aload_3
    //   105: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokespecial 115	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   114: athrow
    //   115: astore 6
    //   117: new 112	java/lang/IllegalStateException
    //   120: dup
    //   121: new 33	java/lang/StringBuilder
    //   124: dup
    //   125: ldc 119
    //   127: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: aload_2
    //   131: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokespecial 115	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   140: athrow
    //   141: ldc 121
    //   143: iconst_2
    //   144: invokestatic 127	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   147: ifeq +31 -> 178
    //   150: new 33	java/lang/StringBuilder
    //   153: dup
    //   154: ldc 129
    //   156: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   159: aload_2
    //   160: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: ldc 131
    //   165: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload 8
    //   170: arraylength
    //   171: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   174: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: pop
    //   178: new 133	java/util/HashSet
    //   181: dup
    //   182: invokespecial 134	java/util/HashSet:<init>	()V
    //   185: astore 9
    //   187: aload 8
    //   189: arraylength
    //   190: istore 10
    //   192: iconst_0
    //   193: istore 11
    //   195: iload 11
    //   197: iload 10
    //   199: if_icmpge +42 -> 241
    //   202: aload 8
    //   204: iload 11
    //   206: aaload
    //   207: astore 12
    //   209: ldc 136
    //   211: aload 12
    //   213: getfield 141	android/content/pm/ActivityInfo:permission	Ljava/lang/String;
    //   216: invokevirtual 147	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   219: ifeq +16 -> 235
    //   222: aload 9
    //   224: aload 12
    //   226: getfield 150	android/content/pm/ActivityInfo:name	Ljava/lang/String;
    //   229: invokeinterface 155 2 0
    //   234: pop
    //   235: iinc 11 1
    //   238: goto -43 -> 195
    //   241: aload 9
    //   243: invokeinterface 158 1 0
    //   248: ifeq +13 -> 261
    //   251: new 112	java/lang/IllegalStateException
    //   254: dup
    //   255: ldc 160
    //   257: invokespecial 115	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   260: athrow
    //   261: aload_0
    //   262: aload 9
    //   264: ldc 162
    //   266: invokestatic 165	com/google/android/gcm/a:a	(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    //   269: aload_0
    //   270: aload 9
    //   272: ldc 167
    //   274: invokestatic 165	com/google/android/gcm/a:a	(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    //   277: return
    //
    // Exception table:
    //   from	to	target	type
    //   30	39	89	android/content/pm/PackageManager$NameNotFoundException
    //   39	47	115	android/content/pm/PackageManager$NameNotFoundException
  }

  static void a(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("com.google.android.gcm", 0).edit();
    localEditor.putInt("backoff_ms", paramInt);
    localEditor.commit();
  }

  private static void a(Context paramContext, Set<String> paramSet, String paramString)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str1 = paramContext.getPackageName();
    Intent localIntent = new Intent(paramString);
    localIntent.setPackage(str1);
    List localList = localPackageManager.queryBroadcastReceivers(localIntent, 32);
    if (localList.isEmpty())
      throw new IllegalStateException("No receivers for action " + paramString);
    if (Log.isLoggable("GCMRegistrar", 2))
      new StringBuilder("Found ").append(localList.size()).append(" receivers for action ").append(paramString).toString();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      String str2 = ((ResolveInfo)localIterator.next()).activityInfo.name;
      if (!paramSet.contains(str2))
        throw new IllegalStateException("Receiver " + str2 + " is not set with permission com.google.android.c2dm.permission.SEND");
    }
  }

  public static void a(Context paramContext, String[] paramArrayOfString)
  {
    f(paramContext);
    b(paramContext, paramArrayOfString);
  }

  static void a(String paramString)
  {
    new StringBuilder("Setting the name of retry receiver class to ").append(paramString).toString();
    b = paramString;
  }

  public static void b(Context paramContext)
  {
    f(paramContext);
    c(paramContext);
  }

  static void b(Context paramContext, String[] paramArrayOfString)
  {
    String str = a(paramArrayOfString);
    new StringBuilder("Registering app ").append(paramContext.getPackageName()).append(" of senders ").append(str).toString();
    Intent localIntent = new Intent("com.google.android.c2dm.intent.REGISTER");
    localIntent.setPackage("com.google.android.gsf");
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    localIntent.putExtra("sender", str);
    paramContext.startService(localIntent);
  }

  static void c(Context paramContext)
  {
    new StringBuilder("Unregistering app ").append(paramContext.getPackageName()).toString();
    Intent localIntent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
    localIntent.setPackage("com.google.android.gsf");
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    paramContext.startService(localIntent);
  }

  static void d(Context paramContext)
  {
    try
    {
      if (a == null)
      {
        if (b != null)
          break label98;
        Log.e("GCMRegistrar", "internal error: retry receiver class not set yet");
        a = new GCMBroadcastReceiver();
      }
      while (true)
      {
        String str1 = paramContext.getPackageName();
        IntentFilter localIntentFilter = new IntentFilter("com.google.android.gcm.intent.RETRY");
        localIntentFilter.addCategory(str1);
        String str2 = str1 + ".permission.C2D_MESSAGE";
        paramContext.registerReceiver(a, localIntentFilter, str2, null);
        return;
        try
        {
          label98: a = (GCMBroadcastReceiver)Class.forName(b).newInstance();
        }
        catch (Exception localException)
        {
          Log.e("GCMRegistrar", "Could not create instance of " + b + ". Using " + GCMBroadcastReceiver.class.getName() + " directly.");
          a = new GCMBroadcastReceiver();
        }
      }
    }
    finally
    {
    }
  }

  public static String e(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("com.google.android.gcm", 0);
    String str = localSharedPreferences.getString("regId", "");
    int i = localSharedPreferences.getInt("appVersion", -2147483648);
    int j = g(paramContext);
    if ((i != -2147483648) && (i != j))
    {
      new StringBuilder("App version changed from ").append(i).append(" to ").append(j).append("; resetting registration id").toString();
      a(paramContext, "");
      str = "";
    }
    return str;
  }

  static void f(Context paramContext)
  {
    new StringBuilder("resetting backoff for ").append(paramContext.getPackageName()).toString();
    a(paramContext, 3000);
  }

  private static int g(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException("Coult not get package name: " + localNameNotFoundException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gcm.a
 * JD-Core Version:    0.6.2
 */