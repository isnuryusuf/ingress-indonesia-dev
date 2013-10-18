package com.google.c.a.a.a;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

final class b
  implements HttpRequestInterceptor
{
  public final void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if ((a.b().get() != null) && (((Boolean)a.b().get()).booleanValue()))
      throw new RuntimeException("This thread forbids HTTP requests");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.a.b
 * JD-Core Version:    0.6.2
 */