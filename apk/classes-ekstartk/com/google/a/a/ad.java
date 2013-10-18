package com.google.a.a;

import java.util.Iterator;

final class ad extends ab
{
  ad(ab paramab1, ab paramab2)
  {
    super(paramab2, (byte)0);
  }

  public final <A extends Appendable> A a(A paramA, Iterator<?> paramIterator)
  {
    an.a(paramA, "appendable");
    an.a(paramIterator, "parts");
    while (paramIterator.hasNext())
    {
      Object localObject2 = paramIterator.next();
      if (localObject2 != null)
        paramA.append(this.a.a(localObject2));
    }
    while (paramIterator.hasNext())
    {
      Object localObject1 = paramIterator.next();
      if (localObject1 != null)
      {
        paramA.append(ab.a(this.a));
        paramA.append(this.a.a(localObject1));
      }
    }
    return paramA;
  }

  public final ab b(String paramString)
  {
    an.a(paramString);
    throw new UnsupportedOperationException("already specified skipNulls");
  }

  public final af c(String paramString)
  {
    an.a(paramString);
    throw new UnsupportedOperationException("can't use .skipNulls() with maps");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ad
 * JD-Core Version:    0.6.2
 */