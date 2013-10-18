package com.nianticproject.ingress.shared;

import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.e;
import com.nianticproject.ingress.gameentity.components.m;
import java.util.Map;

public abstract interface Mod extends e
{
  public abstract ModResource buildModResource();

  public abstract String getDisplayName();

  public abstract String getInstallingUser();

  public abstract af getResourceType();

  public abstract Map<m, Long> getStatModifiers();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.Mod
 * JD-Core Version:    0.6.2
 */