package com.nianticproject.ingress.o;

import com.google.a.c.hc;
import com.nianticproject.ingress.common.model.a.h;
import com.nianticproject.ingress.common.model.a.i;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.s.e;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.al;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class j
  implements h
{
  private static final aa a = new aa(j.class);
  private final e b = c.a();

  public final com.nianticproject.ingress.common.model.a.j<?> a(i parami)
  {
    System.currentTimeMillis();
    String str = this.b.b(parami.toString(), null);
    if (str == null)
      return null;
    return parami.b(str);
  }

  public final void a()
  {
    for (i locali : i.values())
      this.b.a(locali.toString());
  }

  public final boolean a(i parami, com.nianticproject.ingress.common.model.a.j<?> paramj)
  {
    com.nianticproject.ingress.common.model.a.j localj = a(parami);
    if ((localj != null) && (localj.b() > paramj.b()))
      return false;
    this.b.a(parami.toString(), paramj.toString());
    return true;
  }

  public final Map<i, com.nianticproject.ingress.common.model.a.j<?>> b()
  {
    new al().a();
    HashMap localHashMap = hc.b();
    i[] arrayOfi = i.values();
    int i = arrayOfi.length;
    int j = 0;
    while (true)
      if (j < i)
      {
        i locali = arrayOfi[j];
        String str1 = locali.toString();
        String str2 = this.b.b(str1);
        if (str2 != null);
        try
        {
          localHashMap.put(locali, locali.b(str2));
          j++;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          while (true)
            a.b("parseValue failed: key=%s value=%s", new Object[] { str1, str2 });
        }
      }
    return Collections.unmodifiableMap(localHashMap);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.j
 * JD-Core Version:    0.6.2
 */