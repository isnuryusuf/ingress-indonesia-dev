package com.nianticproject.ingress.g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.telephony.TelephonyManager;
import com.google.c.a.a.b.a;
import com.google.h.a.a.c;
import com.google.h.a.a.d;
import com.nianticproject.ingress.ec;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public final class e
{
  private static final b a = new b();

  public static int a(String paramString, byte[] paramArrayOfByte)
  {
    int i = -1;
    if (paramString == null)
      b.a("Unexpected null post url");
    label65: 
    while (true)
    {
      return i;
      if (paramArrayOfByte == null)
      {
        b.a("Unexpected null post data");
        return i;
      }
      for (int j = 0; ; j++)
      {
        if (j >= 3)
          break label65;
        i = b(paramString, paramArrayOfByte);
        if ((i / 100 == 2) || (i / 100 != 5))
          break;
      }
    }
  }

  public static String a(Context paramContext)
  {
    String str1 = paramContext.getString(2131296277);
    if ("".equals(str1))
      str1 = "https";
    String str2 = paramContext.getString(2131296279);
    if ("".equals(str2));
    for (String str3 = ""; ; str3 = ":" + str2)
      return str1 + "://" + paramContext.getString(2131296278) + str3 + paramContext.getString(2131296280);
  }

  private static byte[] a(c paramc)
  {
    a locala = new d(paramc).a();
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      locala.a(localByteArrayOutputStream);
      byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      b.a(localIOException, "Unexpected exception in report serialization.");
    }
    return null;
  }

  public static byte[] a(c paramc, Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    paramc.q = localTelephonyManager.getPhoneType();
    paramc.r = localTelephonyManager.getNetworkType();
    paramc.s = localTelephonyManager.getNetworkOperatorName();
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramc.t = paramContext.getPackageName();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramc.t, 0);
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramc.t, 0);
      paramc.v = localApplicationInfo.processName;
      paramc.b = localPackageInfo.versionCode;
      int i;
      if (ec.d())
        for (i = -1 + localPackageInfo.versionName.length(); (i > 0) && (localPackageInfo.versionName.charAt(i) != '.'); i--);
      for (paramc.c = (localPackageInfo.versionName.substring(0, i) + ".DEV"); ; paramc.c = localPackageInfo.versionName)
      {
        paramc.u = localPackageManager.getInstallerPackageName(paramc.t);
        label176: paramc.v = paramContext.getPackageName();
        return a(paramc);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label176;
    }
  }

  private static int b(String paramString, byte[] paramArrayOfByte)
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    localHttpPost.setEntity(new ByteArrayEntity(paramArrayOfByte));
    localHttpPost.setHeader("Content-type", "application/x-protobuf");
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpParams localHttpParams = localDefaultHttpClient.getParams();
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 20000);
    try
    {
      int j = localDefaultHttpClient.execute(localHttpPost).getStatusLine().getStatusCode();
      i = j;
      b.b("Report posted.  statusCode(" + i + ")");
      return i;
    }
    catch (IOException localIOException)
    {
      while (true)
        int i = -1;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.g.e
 * JD-Core Version:    0.6.2
 */