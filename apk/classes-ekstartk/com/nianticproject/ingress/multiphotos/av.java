package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.a.a.ak;
import com.google.a.a.an;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.i.b;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import com.nianticproject.ingress.shared.rpc.u;
import java.util.List;
import java.util.Map;

public final class av
  implements bc
{
  private static final aa a = new aa("PortalImagePaginationClient");
  private final Handler b = new Handler(Looper.getMainLooper());
  private final az c;
  private final b d = p.a().z();
  private final bb e;
  private ba f = null;

  public av(Context paramContext, String paramString, az paramaz)
  {
    this.c = ((az)an.a(paramaz));
    this.e = new bb(paramContext, paramString, this, this.d);
  }

  public static Portal a(e parame, String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      f localf = parame.a(paramString);
      if (localf == null)
        break;
      return (Portal)localf.getComponent(Portal.class);
    }
    return null;
  }

  private final void a(ba paramba)
  {
    if (this.f == paramba)
      return;
    this.f = paramba;
    new Object[1][0] = paramba.name();
    this.c.a(this.f);
  }

  private void b(boolean paramBoolean)
  {
    if (this.e.a(paramBoolean))
    {
      a(ba.b);
      return;
    }
    a(ba.a);
  }

  public final void a()
  {
    a(ba.a);
  }

  public final void a(u paramu)
  {
    a(ba.a);
    if (paramu == null)
    {
      a(ba.c);
      return;
    }
    switch (ay.b[paramu.ordinal()])
    {
    default:
      return;
    case 1:
      a(ba.d);
      return;
    case 2:
    }
    this.c.x_();
  }

  public final void a(List<PlayerPortalImage> paramList, Map<String, ak<Boolean, Integer>> paramMap, boolean paramBoolean)
  {
    this.b.post(new aw(this, paramList, paramMap, paramBoolean));
  }

  public final void a(boolean paramBoolean)
  {
    if (this.c.y_())
    {
      if ((!paramBoolean) && (this.c.z_()));
      for (boolean bool = true; ; bool = false)
      {
        b(bool);
        return;
      }
    }
    a(ba.a);
  }

  public final void b()
  {
    this.e.a();
    b(false);
  }

  public final void c()
  {
    this.e.b();
  }

  public final void d()
  {
    if (this.f == ba.d)
    {
      this.c.a(null, null);
      this.e.c();
      return;
    }
    b(false);
  }

  public final b e()
  {
    return this.d;
  }

  public final ba f()
  {
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.av
 * JD-Core Version:    0.6.2
 */