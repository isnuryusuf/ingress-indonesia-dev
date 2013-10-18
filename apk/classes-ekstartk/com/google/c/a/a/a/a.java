package com.google.c.a.a.a;

import android.util.Log;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public final class a
  implements HttpClient
{
  private static final ThreadLocal<Boolean> a = new ThreadLocal();
  private static final HttpRequestInterceptor b = new b();
  private final HttpClient c;
  private RuntimeException d = new IllegalStateException("AndroidHttpClient_v09 created and never closed");
  private volatile e e;

  private a(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.c = new c(this, paramClientConnectionManager, paramHttpParams);
  }

  public static a a()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, null);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    return new a(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }

  public final <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }

  public final <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }

  public final <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return this.c.execute(paramHttpUriRequest, paramResponseHandler);
  }

  public final <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return this.c.execute(paramHttpUriRequest);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpUriRequest, paramHttpContext);
  }

  protected final void finalize()
  {
    super.finalize();
    if (this.d != null)
    {
      Log.e("AndroidHttpClient_v09", "Leak found", this.d);
      this.d = null;
    }
  }

  public final ClientConnectionManager getConnectionManager()
  {
    return this.c.getConnectionManager();
  }

  public final HttpParams getParams()
  {
    return this.c.getParams();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.a.a
 * JD-Core Version:    0.6.2
 */