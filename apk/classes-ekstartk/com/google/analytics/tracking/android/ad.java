package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ad
  implements Runnable
{
  ad(ac paramac, Map paramMap, long paramLong)
  {
  }

  public final void run()
  {
    this.a.put("clientId", ac.a(this.c));
    if ((ac.b(this.c)) || (ac.b(this.a)))
      return;
    if (!TextUtils.isEmpty(ac.c(this.c)))
    {
      this.a.put("campaign", ac.c(this.c));
      ac.d(this.c);
    }
    ac.a(this.c, this.a);
    ac.c(this.a);
    ac.b(this.c, this.a);
    ar localar = ac.e(this.c);
    Map localMap = this.a;
    HashMap localHashMap = new HashMap();
    Iterator localIterator = localMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      at localat = localar.a((String)localEntry.getKey());
      if (localat != null)
      {
        String str1 = localat.a((String)localEntry.getKey());
        if (str1 != null)
        {
          String str2 = (String)localEntry.getValue();
          if (localat.b() != null)
            str2 = localat.b().a(str2);
          if ((str2 != null) && (!str2.equals(localat.a())))
            localHashMap.put(str1, str2);
        }
      }
    }
    bc localbc = ac.g(this.c);
    long l = this.b;
    localbc.a(localHashMap, l, ac.d(this.a), ac.f(this.c));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ad
 * JD-Core Version:    0.6.2
 */