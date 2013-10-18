package com.google.c.a.a.a;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;

final class c extends DefaultHttpClient
{
  c(a parama, ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    super(paramClientConnectionManager, paramHttpParams);
  }

  protected final HttpContext createHttpContext()
  {
    BasicHttpContext localBasicHttpContext = new BasicHttpContext();
    localBasicHttpContext.setAttribute("http.authscheme-registry", getAuthSchemes());
    localBasicHttpContext.setAttribute("http.cookiespec-registry", getCookieSpecs());
    localBasicHttpContext.setAttribute("http.auth.credentials-provider", getCredentialsProvider());
    return localBasicHttpContext;
  }

  protected final BasicHttpProcessor createHttpProcessor()
  {
    BasicHttpProcessor localBasicHttpProcessor = super.createHttpProcessor();
    localBasicHttpProcessor.addRequestInterceptor(a.c());
    localBasicHttpProcessor.addRequestInterceptor(new d(this.a, (byte)0));
    return localBasicHttpProcessor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.a.c
 * JD-Core Version:    0.6.2
 */