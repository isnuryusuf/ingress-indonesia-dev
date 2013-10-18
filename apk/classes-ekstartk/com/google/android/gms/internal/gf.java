package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class gf
{
  private final List<String> a;
  private final Object b;

  private gf(Object paramObject)
  {
    this.b = gg.a(paramObject);
    this.a = new ArrayList();
  }

  public final gf a(String paramString, Object paramObject)
  {
    this.a.add((String)gg.a(paramString) + "=" + String.valueOf(paramObject));
    return this;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(100).append(this.b.getClass().getSimpleName()).append('{');
    int i = this.a.size();
    for (int j = 0; j < i; j++)
    {
      localStringBuilder.append((String)this.a.get(j));
      if (j < i - 1)
        localStringBuilder.append(", ");
    }
    return '}';
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gf
 * JD-Core Version:    0.6.2
 */