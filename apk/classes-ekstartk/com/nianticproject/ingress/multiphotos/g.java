package com.nianticproject.ingress.multiphotos;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.j;
import android.support.v4.app.s;
import b.a.a;
import com.google.a.a.an;

public final class g extends Fragment
{
  private f a = null;

  public static g a(j paramj, a<f> parama)
  {
    Object localObject = (g)paramj.a("image_cache_retaining_fragment");
    g localg;
    f localf;
    if (localObject == null)
    {
      localg = new g();
      localf = (f)parama.a();
      if (localg.a != null)
        break label80;
    }
    label80: for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "This fragment already has a set image cache!");
      localg.a = ((f)an.a(localf));
      paramj.a().a(localg, "image_cache_retaining_fragment").a();
      localObject = localg;
      return localObject;
    }
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    l();
  }

  public final f b()
  {
    return this.a;
  }

  public final void s()
  {
    if (this.a != null)
      this.a.a();
    super.s();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.g
 * JD-Core Version:    0.6.2
 */