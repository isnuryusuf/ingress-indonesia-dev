package com.google.analytics.tracking.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

final class bd
  implements m
{
  private final String a;
  private final ap b;
  private final Context c;

  bd(ap paramap, Context paramContext)
  {
    this(paramap, paramContext, (byte)0);
  }

  private bd(ap paramap, Context paramContext, byte paramByte)
  {
    this.c = paramContext.getApplicationContext();
    this.a = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { "GoogleAnalytics", "2.0", Build.VERSION.RELEASE, bi.a(Locale.getDefault()), Build.MODEL, Build.ID });
    this.b = paramap;
  }

  private static URL a(an paraman)
  {
    if (TextUtils.isEmpty(paraman.d()))
      return null;
    try
    {
      URL localURL1 = new URL(paraman.d());
      return localURL1;
    }
    catch (MalformedURLException localMalformedURLException1)
    {
      try
      {
        URL localURL2 = new URL("http://www.google-analytics.com/collect");
        return localURL2;
      }
      catch (MalformedURLException localMalformedURLException2)
      {
      }
    }
    return null;
  }

  private HttpEntityEnclosingRequest a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      aq.f("Empty hit, discarding.");
      return null;
    }
    String str = paramString2 + "?" + paramString1;
    BasicHttpEntityEnclosingRequest localBasicHttpEntityEnclosingRequest;
    if (str.length() < 2036)
      localBasicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", str);
    while (true)
    {
      localBasicHttpEntityEnclosingRequest.addHeader("User-Agent", this.a);
      return localBasicHttpEntityEnclosingRequest;
      localBasicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", paramString2);
      try
      {
        localBasicHttpEntityEnclosingRequest.setEntity(new StringEntity(paramString1));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        aq.f("Encoding error, discarding hit");
      }
    }
    return null;
  }

  private static void a(boolean paramBoolean, HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer;
    if (paramBoolean)
    {
      localStringBuffer = new StringBuffer();
      Header[] arrayOfHeader = paramHttpEntityEnclosingRequest.getAllHeaders();
      int i = arrayOfHeader.length;
      for (int j = 0; j < i; j++)
        localStringBuffer.append(arrayOfHeader[j].toString()).append("\n");
      localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
      if (paramHttpEntityEnclosingRequest.getEntity() == null);
    }
    try
    {
      InputStream localInputStream = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (localInputStream != null)
      {
        int k = localInputStream.available();
        if (k > 0)
        {
          byte[] arrayOfByte = new byte[k];
          localInputStream.read(arrayOfByte);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String(arrayOfByte)).append("\n");
        }
      }
      aq.c(localStringBuffer.toString());
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        aq.f("Error Writing hit to log...");
    }
  }

  public final int a(List<an> paramList)
  {
    int i = Math.min(paramList.size(), 40);
    int j = 0;
    int k = 0;
    if (j < i)
    {
      HttpClient localHttpClient = this.b.a();
      an localan = (an)paramList.get(j);
      URL localURL = a(localan);
      int m;
      if (localURL == null)
      {
        if (aq.a())
          aq.f("No destination: discarding hit: " + localan.a());
        while (true)
        {
          m = k + 1;
          j++;
          k = m;
          break;
          aq.f("No destination: discarding hit.");
        }
      }
      HttpHost localHttpHost = new HttpHost(localURL.getHost(), localURL.getPort(), localURL.getProtocol());
      String str1 = localURL.getPath();
      if (TextUtils.isEmpty(localan.a()));
      HttpEntityEnclosingRequest localHttpEntityEnclosingRequest;
      StringBuilder localStringBuilder;
      for (String str2 = ""; ; str2 = localStringBuilder.toString())
      {
        localHttpEntityEnclosingRequest = a(str2, str1);
        if (localHttpEntityEnclosingRequest != null)
          break label275;
        m = k + 1;
        break;
        long l1 = System.currentTimeMillis();
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(localan.a());
        if (localan.c() > 0L)
        {
          long l2 = l1 - localan.c();
          if (l2 >= 0L)
            localStringBuilder.append("&qt=").append(l2);
        }
        localStringBuilder.append("&z=").append(localan.b());
      }
      label275: localHttpEntityEnclosingRequest.addHeader("Host", localHttpHost.toHostString());
      a(aq.a(), localHttpEntityEnclosingRequest);
      if (str2.length() > 8192)
        aq.f("Hit too long (> 8192 bytes)--not sent");
      while (true)
      {
        m = k + 1;
        break;
        try
        {
          HttpResponse localHttpResponse = localHttpClient.execute(localHttpHost, localHttpEntityEnclosingRequest);
          if (localHttpResponse.getStatusLine().getStatusCode() != 200)
          {
            aq.f("Bad response: " + localHttpResponse.getStatusLine().getStatusCode());
            return k;
          }
        }
        catch (ClientProtocolException localClientProtocolException)
        {
          aq.f("ClientProtocolException sending hit; discarding hit...");
        }
        catch (IOException localIOException)
        {
          aq.f("Exception sending hit: " + localIOException.getClass().getSimpleName());
          aq.f(localIOException.getMessage());
          return k;
        }
      }
    }
    return k;
  }

  public final boolean a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.c.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      aq.e("...no network connectivity");
      return false;
    }
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bd
 * JD-Core Version:    0.6.2
 */