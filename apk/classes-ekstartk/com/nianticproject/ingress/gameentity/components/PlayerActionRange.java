package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.i;

public abstract interface PlayerActionRange extends a, i
{
  public abstract int getRangeM();

  public abstract boolean inRange(u paramu);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.PlayerActionRange
 * JD-Core Version:    0.6.2
 */