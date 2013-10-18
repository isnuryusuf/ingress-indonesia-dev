package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;

public abstract interface AccessLevel extends a
{
  public abstract AccessLevel.RestrictedUsageResult usage(int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.AccessLevel
 * JD-Core Version:    0.6.2
 */