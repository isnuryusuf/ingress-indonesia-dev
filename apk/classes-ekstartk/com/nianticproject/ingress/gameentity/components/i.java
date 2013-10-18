package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.f;

public final class i
{
  public static boolean a(f paramf, u paramu)
  {
    PlayerActionRange localPlayerActionRange = (PlayerActionRange)paramf.getComponent(PlayerActionRange.class);
    return (localPlayerActionRange != null) && (localPlayerActionRange.inRange(paramu));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.i
 * JD-Core Version:    0.6.2
 */