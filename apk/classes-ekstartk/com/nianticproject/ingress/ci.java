package com.nianticproject.ingress;

import com.nianticproject.ingress.common.f.h;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.List;

final class ci extends h
{
  ci(NemesisApplication paramNemesisApplication, List paramList)
  {
  }

  private Void j()
  {
    try
    {
      aj.a("NemesisApplication.onCreate.doInBackground");
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
        ((Runnable)localIterator.next()).run();
    }
    finally
    {
      aj.b();
    }
    aj.b();
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ci
 * JD-Core Version:    0.6.2
 */