package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class o extends m<List<String>>
{
  private static final Map<String, String> a = hc.b();
  private final q b;
  private final List<String> c;

  public o(q paramq, List<String> paramList)
  {
    this.b = paramq;
    this.c = paramList;
  }

  private List<String> j()
  {
    while (true)
    {
      ArrayList localArrayList;
      try
      {
        com.nianticproject.ingress.shared.aj.a("GetCachedNicknamesTask");
        localArrayList = eq.a();
        Iterator localIterator = this.c.iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          boolean bool = a.containsKey(str);
          if (!bool)
          {
            localObject2 = null;
            if (localObject2 == null)
              break;
            return localObject2;
          }
          localArrayList.add(a.get(str));
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      Object localObject2 = localArrayList;
    }
    List localList = k();
    com.nianticproject.ingress.shared.aj.b();
    return localList;
  }

  private List<String> k()
  {
    int i = 0;
    ab localab = com.nianticproject.ingress.common.u.aj.a(this.c);
    while (true)
    {
      try
      {
        RpcResult localRpcResult = this.b.a(localab);
        if (localRpcResult.e())
        {
          List localList1 = (List)localRpcResult.a();
          if (this.c.size() == localList1.size())
          {
            bool = true;
            an.b(bool);
            if (i < this.c.size())
            {
              a.put(this.c.get(i), localList1.get(i));
              i++;
              continue;
            }
            List localList2 = (List)localRpcResult.a();
            return localList2;
          }
        }
        else
        {
          return null;
        }
      }
      catch (y localy)
      {
        return null;
      }
      boolean bool = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.o
 * JD-Core Version:    0.6.2
 */