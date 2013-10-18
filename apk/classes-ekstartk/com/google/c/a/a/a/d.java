package com.google.c.a.a.a;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

final class d
  implements HttpRequestInterceptor
{
  private d(a parama)
  {
  }

  public final void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    e locale = a.a(this.a);
    if ((locale != null) && (e.a(locale)) && ((paramHttpRequest instanceof HttpUriRequest)))
      e.a(locale, a.a((HttpUriRequest)paramHttpRequest));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.a.d
 * JD-Core Version:    0.6.2
 */