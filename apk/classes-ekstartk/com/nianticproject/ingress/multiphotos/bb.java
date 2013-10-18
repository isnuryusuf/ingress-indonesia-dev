package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.text.TextUtils;
import com.google.a.a.an;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.i.a;
import com.nianticproject.ingress.i.b;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.service.j;
import com.nianticproject.ingress.shared.portal.PortalImagePage;
import com.nianticproject.ingress.shared.rpc.u;
import java.util.List;

public final class bb extends j
{
  private static final aa a = new aa("PortalImagePaginator");
  private final Context b;
  private final String c;
  private final bc d;
  private final b e;
  private final int f;
  private String g = null;
  private int h = -1;

  public bb(Context paramContext, String paramString, bc parambc, b paramb)
  {
    this.b = ((Context)an.a(paramContext));
    if (!TextUtils.isEmpty(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.c = paramString;
      this.d = ((bc)an.a(parambc));
      this.e = ((b)an.a(paramb));
      an.a(true);
      this.f = 10;
      return;
    }
  }

  public final void a()
  {
    NemesisService.a(this);
  }

  public final void a(int paramInt, u paramu)
  {
    aa localaa;
    Object[] arrayOfObject;
    if (paramInt == this.h)
    {
      localaa = a;
      arrayOfObject = new Object[1];
      if (paramu == null)
        break label58;
    }
    label58: for (String str = paramu.name(); ; str = "null")
    {
      arrayOfObject[0] = str;
      localaa.b("Portal image page load failed, error: %s", arrayOfObject);
      this.h = -1;
      this.d.a(paramu);
      return;
    }
  }

  public final void a(int paramInt, String paramString)
  {
    a locala;
    if (paramInt == this.h)
    {
      this.h = -1;
      locala = this.e.a(paramString);
      if (!locala.a())
        break label69;
      this.g = null;
    }
    while (true)
    {
      this.d.a(b.a(locala), locala.d(), locala.a());
      return;
      label69: List localList = locala.c();
      this.g = ((PortalImagePage)localList.get(-1 + localList.size())).cursor;
      new Object[1][0] = this.g;
    }
  }

  public final boolean a(boolean paramBoolean)
  {
    a locala = this.e.a(this.c);
    if (locala.a())
    {
      if (paramBoolean)
        this.d.a(b.a(locala), locala.d(), locala.a());
      return false;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.f);
    arrayOfObject[1] = this.g;
    this.h = NemesisService.a(this.b, this.c, this.f, this.g);
    return true;
  }

  public final void b()
  {
    NemesisService.b(this);
  }

  public final void c()
  {
    this.g = null;
    this.e.b(this.c);
    a(false);
    a.b("Pagination restarted!");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.bb
 * JD-Core Version:    0.6.2
 */