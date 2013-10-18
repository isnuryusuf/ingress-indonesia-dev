package com.google.a.a;

import java.io.Serializable;

final class y extends x<Object>
  implements Serializable
{
  static final y a = new y();

  public final int b(Object paramObject)
  {
    return paramObject.hashCode();
  }

  protected final boolean b(Object paramObject1, Object paramObject2)
  {
    return paramObject1.equals(paramObject2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.y
 * JD-Core Version:    0.6.2
 */