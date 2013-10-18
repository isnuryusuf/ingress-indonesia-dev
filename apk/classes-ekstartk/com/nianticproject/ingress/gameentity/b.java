package com.nianticproject.ingress.gameentity;

import com.google.a.c.du;
import com.google.a.c.dv;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

final class b
{
  private static final ConcurrentMap<Class<? extends a>, Class<? extends a>[]> a = new ConcurrentHashMap(40);

  private static void a(dv<Class<? extends a>> paramdv, Class<?> paramClass)
  {
    for (Class localClass : paramClass.getInterfaces())
      if (d.a(localClass))
      {
        paramdv.c(localClass);
        a(paramdv, localClass);
      }
  }

  static Class<? extends a>[] a(Class<? extends a> paramClass)
  {
    Class[] arrayOfClass = (Class[])a.get(paramClass);
    if (arrayOfClass == null)
    {
      dv localdv = du.h();
      if (d.a(paramClass))
        localdv.c(paramClass);
      a(localdv, paramClass);
      arrayOfClass = (Class[])localdv.a().toArray(new Class[0]);
      if (!paramClass.isAnonymousClass())
        a.put(paramClass, arrayOfClass);
    }
    return arrayOfClass;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.b
 * JD-Core Version:    0.6.2
 */