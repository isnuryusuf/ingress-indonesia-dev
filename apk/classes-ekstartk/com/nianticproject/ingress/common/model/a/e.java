package com.nianticproject.ingress.common.model.a;

import com.google.a.a.an;
import com.google.a.a.bw;
import com.nianticproject.ingress.common.missions.ck;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.ai;
import com.nianticproject.ingress.common.u.b;
import com.nianticproject.ingress.common.w.aa;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class e
{
  private static final aa a = new aa(e.class);
  private final h b;
  private final ah c;
  private final bw d;
  private final com.nianticproject.ingress.common.x.i e;
  private long f;
  private final long g;
  private final long h;

  private e(h paramh, ah paramah, bw parambw, com.nianticproject.ingress.common.x.i parami)
  {
    this.b = ((h)an.a(paramh));
    this.d = ((bw)an.a(parambw));
    this.e = parami;
    this.c = paramah;
    this.g = System.currentTimeMillis();
    this.h = parambw.a();
    this.e.a(new f(this), 30000L, 30000L);
  }

  public e(h paramh, b paramb, String paramString)
  {
    this(paramh, new ah(paramb, paramString).a(new ai()), bw.b(), com.nianticproject.ingress.common.x.i.a());
  }

  private <T> j<T> a(i parami, Class<T> paramClass)
  {
    an.a(paramClass.equals(parami.a()));
    return this.b.a(parami);
  }

  private void b()
  {
    new g(this).e();
  }

  public final float a(i parami, float paramFloat)
  {
    j localj = a(parami, Float.class);
    if (localj == null)
      return paramFloat;
    return ((Float)localj.a()).floatValue();
  }

  public final void a(i parami, ck paramck)
  {
    a(parami, paramck.toString());
  }

  public final void a(i parami, String paramString)
  {
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      an.a(paramString);
      j localj = parami.a(paramString, this.g + (this.d.a() - this.h) / 1000000L);
      this.b.a(parami, localj);
      this.f = this.d.a();
      return;
    }
  }

  public final void a(i parami, boolean paramBoolean)
  {
    a(parami, Boolean.toString(paramBoolean));
  }

  public final void a(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.size() == 0))
    {
      this.b.a();
      return;
    }
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      i locali = i.a(str1);
      if (locali == null)
      {
        a.b("Ignoring invalid key name " + str1);
      }
      else
      {
        String str2 = (String)paramMap.get(str1);
        try
        {
          j localj = locali.b(str2);
          this.b.a(locali, localj);
          this.f = this.d.a();
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          a.b("Ignoring an invalid, probably old, player storage value. Key: " + locali + ", value: " + str2);
        }
      }
    }
    b();
  }

  public final boolean a(i parami)
  {
    j localj = a(parami, Boolean.class);
    if (localj == null)
      return false;
    return ((Boolean)localj.a()).booleanValue();
  }

  public final long b(i parami)
  {
    an.a(parami);
    j localj = this.b.a(parami);
    if (localj == null)
      return 0L;
    return localj.b();
  }

  public final String b(i parami, String paramString)
  {
    j localj = a(parami, String.class);
    if (localj == null)
      return paramString;
    return (String)localj.a();
  }

  public final void b(i parami, float paramFloat)
  {
    a(parami, Float.toString(paramFloat));
  }

  public final ck c(i parami)
  {
    j localj = a(parami, ck.class);
    if (localj == null)
      return ck.d;
    return (ck)localj.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.a.e
 * JD-Core Version:    0.6.2
 */