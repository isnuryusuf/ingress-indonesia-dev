package com.nianticproject.ingress.common.model;

import com.google.a.a.ba;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;

final class r
  implements f
{
  private int e;

  r(o paramo, ArrayList paramArrayList, ba paramba, String paramString)
  {
  }

  public final f a(p paramp)
  {
    try
    {
      aj.a("PlayerModel.notify");
      while (this.e < this.a.size())
      {
        ArrayList localArrayList = this.a;
        int i = this.e;
        this.e = (i + 1);
        aa localaa = (aa)localArrayList.get(i);
        if (localaa.b)
        {
          this.b.a(localaa.a);
          long l = paramp.a();
          if (l <= 0L)
            return this;
        }
      }
      return null;
    }
    finally
    {
      aj.b();
    }
  }

  public final String n_()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.r
 * JD-Core Version:    0.6.2
 */