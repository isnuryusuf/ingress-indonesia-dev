package com.nianticproject.ingress.gameentity;

import com.google.a.c.cr;

public abstract interface f
{
  public abstract <T extends DynamicComponent> void add(T paramT);

  public abstract <T extends a> T getComponent(Class<T> paramClass);

  public abstract cr<a> getComponentsAsMap();

  public abstract String getGuid();

  public abstract long getLastModifiedMs();

  public abstract <T extends DynamicComponent> T remove(Class<T> paramClass);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.f
 * JD-Core Version:    0.6.2
 */