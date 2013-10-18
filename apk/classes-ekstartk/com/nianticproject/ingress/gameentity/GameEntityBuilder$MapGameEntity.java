package com.nianticproject.ingress.gameentity;

import com.google.a.a.an;
import com.google.a.c.ar;
import com.google.a.c.cr;
import com.nianticproject.ingress.shared.s;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

final class GameEntityBuilder$MapGameEntity
  implements PersistentGameEntity
{
  private final ar<a> components;
  private boolean dirty;
  private final String guid;
  private long lastModifiedMs;

  GameEntityBuilder$MapGameEntity(String paramString, long paramLong, ar<a> paramar)
  {
    this.guid = paramString;
    this.lastModifiedMs = paramLong;
    this.components = paramar;
    this.dirty = false;
  }

  private void addInternal(a parama)
  {
    for (Class localClass : computeValidatedComponentFamily(parama))
    {
      a locala = (a)this.components.put(localClass, parama);
      if (locala != null)
        throw new IllegalArgumentException("Given component implementation: " + parama + " implements component that has already been added: " + locala);
    }
    if ((parama instanceof i))
      ((i)parama).setEntity(this);
  }

  private boolean areAnyComponentsDirty()
  {
    Iterator localIterator = this.components.values().iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (((locala instanceof s)) && (((s)locala).isDirty()))
        return true;
    }
    return false;
  }

  private Class<? extends a>[] computeValidatedComponentFamily(a parama)
  {
    GameEntityBuilder.b();
    Class[] arrayOfClass = b.a(parama.getClass());
    if (arrayOfClass.length != 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Component does not implement any sub-interfaces of Component");
      return arrayOfClass;
    }
  }

  private void removeAllFamiliesImplementedByComponent(a parama)
  {
    GameEntityBuilder.b();
    for (Class localClass : b.a(parama.getClass()))
      this.components.remove(localClass);
  }

  private <T extends a> T removeInternal(Class<T> paramClass)
  {
    an.a(paramClass);
    a locala = getComponent(paramClass);
    if (locala == null)
      return null;
    removeAllFamiliesImplementedByComponent(locala);
    return locala;
  }

  public final <T extends DynamicComponent> void add(T paramT)
  {
    an.a(paramT);
    if (DynamicComponent.class != paramT.getClass());
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Can only add proper sub-interface of DynamicComponent");
      addInternal(paramT);
      this.dirty = true;
      return;
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof f))
      return false;
    f localf = (f)paramObject;
    return getGuid().equals(localf.getGuid());
  }

  public final <T extends a> T getComponent(Class<T> paramClass)
  {
    if ((paramClass != null) && (paramClass != a.class) && (paramClass != DynamicComponent.class));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Can only get non-null sub-interface of Component or DynamicComponent");
      return (a)this.components.a(paramClass);
    }
  }

  public final cr<a> getComponentsAsMap()
  {
    return cr.a(this.components);
  }

  public final String getGuid()
  {
    return this.guid;
  }

  public final long getLastModifiedMs()
  {
    return this.lastModifiedMs;
  }

  public final int hashCode()
  {
    return getGuid().hashCode();
  }

  public final boolean isDirty()
  {
    return (this.dirty) || (areAnyComponentsDirty());
  }

  public final <T extends DynamicComponent> T remove(Class<T> paramClass)
  {
    if (paramClass != DynamicComponent.class);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Can only remove proper sub-interface of DynamicComponent");
      DynamicComponent localDynamicComponent = (DynamicComponent)removeInternal(paramClass);
      if (localDynamicComponent != null)
        this.dirty = true;
      return localDynamicComponent;
    }
  }

  public final void setClean()
  {
    this.dirty = false;
    Iterator localIterator = this.components.values().iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if ((locala instanceof s))
        ((s)locala).setClean();
    }
  }

  public final void setLastModifiedMs(long paramLong)
  {
    this.lastModifiedMs = paramLong;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.guid).append(" (").append(this.lastModifiedMs).append(") : {");
    Iterator localIterator = this.components.keySet().iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      localStringBuilder.append(localClass.getSimpleName()).append(":{").append(this.components.get(localClass)).append("}, ");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.GameEntityBuilder.MapGameEntity
 * JD-Core Version:    0.6.2
 */