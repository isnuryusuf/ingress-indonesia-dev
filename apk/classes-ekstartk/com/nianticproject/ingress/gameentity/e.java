package com.nianticproject.ingress.gameentity;

import com.google.a.a.an;

public final class e
{
  public static f a(f paramf1, a parama, Class<? extends a> paramClass, f paramf2)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramf1 == null)
    {
      bool2 = bool1;
      an.b(bool2);
      if (parama != paramf2.getComponent(paramClass))
        break label40;
    }
    while (true)
    {
      an.b(bool1);
      return paramf2;
      bool2 = false;
      break;
      label40: bool1 = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.e
 * JD-Core Version:    0.6.2
 */