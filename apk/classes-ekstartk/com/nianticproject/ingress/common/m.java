package com.nianticproject.ingress.common;

import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.h;
import com.nianticproject.ingress.shared.aj;

final class m extends com.nianticproject.ingress.common.f.m<f>
{
  m(l paraml)
  {
  }

  private f j()
  {
    try
    {
      aj.a("UpdateGameStateAndInventoryTask");
      try
      {
        aj.a("ClearCacheIfNecessary");
        l.a(this.a);
        aj.b();
        h localh = new h("asyncUpdateWithRespawn", new f[] { l.b(this.a), new n(this) });
        return localh;
      }
      finally
      {
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.m
 * JD-Core Version:    0.6.2
 */