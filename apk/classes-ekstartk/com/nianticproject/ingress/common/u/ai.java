package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;
import com.nianticproject.ingress.shared.rpc.GameBasket;

public class ai
  implements h
{
  private static final aa a = new aa(ai.class);

  public final void a(GameBasket paramGameBasket)
  {
    if ((paramGameBasket != null) && (!paramGameBasket.a()))
    {
      String str = "GameBasket not empty, has at least a " + paramGameBasket.toString();
      if (ag.a == ah.a)
        throw new IllegalArgumentException(str);
      a.c(str);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ai
 * JD-Core Version:    0.6.2
 */