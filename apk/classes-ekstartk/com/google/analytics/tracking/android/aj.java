package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class aj
  implements bh
{
  private static aj j;
  private boolean a;
  private j b;
  private Context c;
  private bf d;
  private a e;
  private volatile String f;
  private volatile Boolean g;
  private final Map<String, bf> h = new HashMap();
  private String i;

  aj()
  {
  }

  private aj(Context paramContext)
  {
    this(paramContext, ac.a(paramContext));
  }

  private aj(Context paramContext, j paramj)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context cannot be null");
    this.c = paramContext.getApplicationContext();
    this.b = paramj;
    this.e = new a();
    this.b.a(new ak(this));
    this.b.a(new al(this));
  }

  public static aj a(Context paramContext)
  {
    try
    {
      if (j == null)
        j = new aj(paramContext);
      aj localaj = j;
      return localaj;
    }
    finally
    {
    }
  }

  public final bf a()
  {
    try
    {
      ah.a().a(ai.O);
      bf localbf = this.d;
      return localbf;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final bf a(String paramString)
  {
    if (paramString == null)
      try
      {
        throw new IllegalArgumentException("trackingId cannot be null");
      }
      finally
      {
      }
    bf localbf = (bf)this.h.get(paramString);
    if (localbf == null)
    {
      localbf = new bf(paramString, this);
      this.h.put(paramString, localbf);
      if (this.d == null)
        this.d = localbf;
    }
    ah.a().a(ai.N);
    return localbf;
  }

  public final void a(bf parambf)
  {
    try
    {
      ah.a().a(ai.P);
      this.d = parambf;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(Map<String, String> paramMap)
  {
    if (paramMap == null)
      try
      {
        throw new IllegalArgumentException("hit cannot be null");
      }
      finally
      {
      }
    paramMap.put("language", bi.a(Locale.getDefault()));
    paramMap.put("adSenseAdMobHitId", Integer.toString(this.e.a()));
    paramMap.put("screenResolution", this.c.getResources().getDisplayMetrics().widthPixels + "x" + this.c.getResources().getDisplayMetrics().heightPixels);
    paramMap.put("usage", ah.a().c());
    ah.a().b();
    this.b.a(paramMap);
    this.i = ((String)paramMap.get("trackingId"));
  }

  public final void a(boolean paramBoolean)
  {
    ah.a().a(ai.L);
    this.a = paramBoolean;
    aq.a(paramBoolean);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.aj
 * JD-Core Version:    0.6.2
 */