package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class bf
{
  private static final DecimalFormat a = new DecimalFormat("0.######", new DecimalFormatSymbols(Locale.US));
  private final bh b;
  private final bg c;
  private volatile boolean d = false;
  private volatile boolean e = false;
  private long f = 120000L;
  private long g;
  private boolean h = true;

  bf()
  {
    this.b = null;
    this.c = null;
  }

  bf(String paramString, bh parambh)
  {
    if (paramString == null)
      throw new IllegalArgumentException("trackingId cannot be null");
    this.b = parambh;
    this.c = new bg((byte)0);
    this.c.b("trackingId", paramString);
    this.c.b("sampleRate", "100");
    this.c.a("sessionControl", "start");
    this.c.b("useSecure", Boolean.toString(true));
  }

  private void a(String paramString, Map<String, String> paramMap)
  {
    this.e = true;
    if (paramMap == null)
      paramMap = new HashMap();
    paramMap.put("hitType", paramString);
    this.c.a(paramMap, Boolean.valueOf(true));
    if (!e())
      aq.g("Too many hits sent too quickly, throttling invoked.");
    while (true)
    {
      this.c.a();
      return;
      this.b.a(this.c.b());
    }
  }

  private void d()
  {
    if (this.d)
      throw new IllegalStateException("Tracker closed");
  }

  private boolean e()
  {
    boolean bool1 = true;
    while (true)
    {
      try
      {
        boolean bool2 = this.h;
        if (!bool2)
          return bool1;
        long l1 = System.currentTimeMillis();
        if (this.f < 120000L)
        {
          long l2 = l1 - this.g;
          if (l2 > 0L)
            this.f = Math.min(120000L, l2 + this.f);
        }
        this.g = l1;
        if (this.f >= 2000L)
        {
          this.f -= 2000L;
          continue;
        }
      }
      finally
      {
      }
      aq.g("Excessive tracking detected.  Tracking call ignored.");
      bool1 = false;
    }
  }

  public final void a()
  {
    d();
    ah.a().a(ai.m);
    this.c.a("sessionControl", "start");
  }

  public final void a(int paramInt, String paramString)
  {
    if (paramInt <= 0)
    {
      aq.f("index must be > 0, ignoring setCustomDimension call for " + paramInt + ", " + paramString);
      return;
    }
    this.c.a(bi.a("customDimension", paramInt), paramString);
  }

  public final void a(String paramString)
  {
    if (this.e)
    {
      aq.g("Tracking already started, setAppName call ignored");
      return;
    }
    if (TextUtils.isEmpty(paramString))
    {
      aq.g("setting appName to empty value not allowed, call ignored");
      return;
    }
    ah.a().a(ai.o);
    this.c.b("appName", paramString);
  }

  public final void a(String paramString1, long paramLong, String paramString2, String paramString3)
  {
    d();
    ah.a().a(ai.h);
    ah.a().a(true);
    HashMap localHashMap = new HashMap();
    localHashMap.put("timingCategory", paramString1);
    localHashMap.put("timingValue", Long.toString(paramLong));
    localHashMap.put("timingVar", paramString2);
    localHashMap.put("timingLabel", paramString3);
    ah.a().a(ai.J);
    a("timing", localHashMap);
    ah.a().a(false);
  }

  public final void a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    d();
    ah.a().a(ai.c);
    ah.a().a(true);
    HashMap localHashMap = new HashMap();
    localHashMap.put("eventCategory", paramString1);
    localHashMap.put("eventAction", paramString2);
    localHashMap.put("eventLabel", paramString3);
    if (paramLong != null)
      localHashMap.put("eventValue", Long.toString(paramLong.longValue()));
    ah.a().a(ai.Y);
    a("event", localHashMap);
    ah.a().a(false);
  }

  public final void b()
  {
    ah.a().a(ai.w);
    this.c.b("sampleRate", Double.toString(100.0D));
  }

  public final void b(String paramString)
  {
    if (this.e)
    {
      aq.g("Tracking already started, setAppVersion call ignored");
      return;
    }
    ah.a().a(ai.q);
    this.c.b("appVersion", paramString);
  }

  public final void c()
  {
    ah.a().a(ai.y);
    this.c.b("useSecure", Boolean.toString(true));
  }

  public final void c(String paramString)
  {
    d();
    if (TextUtils.isEmpty(paramString))
      throw new IllegalStateException("trackView requires a appScreen to be set");
    ah.a().a(ai.b);
    this.c.b("description", paramString);
    a("appview", null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bf
 * JD-Core Version:    0.6.2
 */