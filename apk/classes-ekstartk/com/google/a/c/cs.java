package com.google.a.c;

import com.google.a.h.c;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class cs<B>
{
  private final di<Class<? extends B>, B> a = dh.j();

  public final cr<B> a()
  {
    return new cr(this.a.a(), (byte)0);
  }

  public final <T extends B> cs<B> a(Map<? extends Class<? extends T>, ? extends T> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Class localClass = (Class)localEntry.getKey();
      Object localObject = localEntry.getValue();
      this.a.a(localClass, c.a(localClass).cast(localObject));
    }
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cs
 * JD-Core Version:    0.6.2
 */