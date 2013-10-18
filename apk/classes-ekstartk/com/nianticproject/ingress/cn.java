package com.nianticproject.ingress;

import android.content.res.Resources;
import com.nianticproject.ingress.common.q.a.z;
import com.nianticproject.ingress.common.q.b.k;
import com.nianticproject.ingress.common.q.b.l;
import com.nianticproject.ingress.common.q.b.o;
import com.nianticproject.ingress.common.q.b.p;
import com.nianticproject.ingress.common.q.b.r;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.h.a.b;
import com.nianticproject.ingress.shared.aj;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class cn
  implements Callable<r>
{
  cn(NemesisApplication paramNemesisApplication, FutureTask paramFutureTask)
  {
  }

  private r a()
  {
    try
    {
      aj.a("NemesisApplication.initGMMTileStoreTask.call");
      try
      {
        z.a(this.b.getResources().openRawResource(2131099648));
        o localo = new p(new b()).a();
        r localr = new r(new l((com.nianticproject.ingress.common.n.a)this.a.get()), new k(localo), new com.nianticproject.ingress.h.a.a());
        localr.a();
        return localr;
      }
      catch (IOException localIOException)
      {
        NemesisApplication.m().c("Could not initialize tile store.");
        return null;
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cn
 * JD-Core Version:    0.6.2
 */