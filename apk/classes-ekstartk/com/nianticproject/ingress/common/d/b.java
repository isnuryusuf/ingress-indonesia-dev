package com.nianticproject.ingress.common.d;

import com.google.a.d.u;
import com.nianticproject.ingress.common.f.h;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.y;

final class b extends h
{
  b(a parama, String paramString, u paramu)
  {
  }

  private Void j()
  {
    ab localab = aj.a(this.a, this.b, this.c);
    int i = 0;
    try
    {
      RpcResult localRpcResult = a.a(this.d).a(localab);
      a.a(this.d, localRpcResult);
      return null;
    }
    catch (y localy)
    {
      while (true)
      {
        i++;
        if (i >= 3)
        {
          a.a(localy);
        }
        else
        {
          long l = 15000L << i;
          try
          {
            Thread.sleep(l);
          }
          catch (InterruptedException localInterruptedException)
          {
            a.a().a(localInterruptedException, "unexpected exception occurred during retry delay");
          }
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.d.b
 * JD-Core Version:    0.6.2
 */