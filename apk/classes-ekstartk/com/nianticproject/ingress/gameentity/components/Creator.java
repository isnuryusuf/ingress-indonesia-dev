package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.i;

public abstract interface Creator extends a, i
{
  public abstract long getCreationTime();

  public abstract String getCreatorGuid();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Creator
 * JD-Core Version:    0.6.2
 */