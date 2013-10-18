package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.s;
import java.util.Iterator;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleResonatorArray
  implements ResonatorArray, s
{
  private transient f containingEntity;
  private transient boolean dirty = false;
  private transient Iterable<Integer> levelIterable = new c(this);

  @JsonProperty
  private final ResonatorV2[] resonators = new ResonatorV2[8];

  public final void addResonator(ResonatorV2 paramResonatorV2, r paramr)
  {
    an.a(paramResonatorV2);
    if (this.resonators[paramr.a()] == null);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.resonators[paramr.a()] = paramResonatorV2;
      if (this.containingEntity != null)
        paramResonatorV2.setEntity(this.containingEntity, paramr);
      this.dirty = true;
      return;
    }
  }

  public final f getEntity()
  {
    return this.containingEntity;
  }

  public final String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public final ResonatorV2 getResonator(r paramr)
  {
    return this.resonators[paramr.a()];
  }

  public final Iterable<Integer> getResonatorLevels()
  {
    return this.levelIterable;
  }

  public final boolean isDirty()
  {
    if (this.dirty)
      return true;
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
      if (((ResonatorV2)localIterator.next()).isDirty())
        return true;
    return false;
  }

  public final Iterator<ResonatorV2> iterator()
  {
    return new e(this);
  }

  public final void removeResonator(r paramr)
  {
    if (this.resonators[paramr.a()] != null)
    {
      this.resonators[paramr.a()] = null;
      this.dirty = true;
    }
  }

  public final void setClean()
  {
    this.dirty = false;
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
      ((ResonatorV2)localIterator.next()).setClean();
  }

  public final void setEntity(f paramf)
  {
    this.containingEntity = com.nianticproject.ingress.gameentity.e.a(this.containingEntity, this, s.class, paramf);
    for (int i = 0; i < this.resonators.length; i++)
      if (this.resonators[i] != null)
        this.resonators[i].setEntity(paramf, r.a(i));
  }

  public final int size()
  {
    int i = 0;
    int j = 0;
    if (i < this.resonators.length)
    {
      if (this.resonators[i] != null);
      for (int k = 1; ; k = 0)
      {
        j += k;
        i++;
        break;
      }
    }
    return j;
  }

  public final String toString()
  {
    return ag.a(getClass()).a("slots", this.resonators).a("dirty", this.dirty).a("any_dirty", isDirty()).toString();
  }

  public final void updateResonator(ResonatorV2 paramResonatorV2, r paramr)
  {
    an.a(paramResonatorV2);
    int i = paramr.a();
    boolean bool1;
    if (this.resonators[i] != null)
    {
      bool1 = true;
      an.a(bool1);
      if (paramResonatorV2.getLevel() <= this.resonators[i].getLevel())
        break label111;
    }
    label111: for (boolean bool2 = true; ; bool2 = false)
    {
      an.a(bool2);
      f localf = this.containingEntity;
      boolean bool3 = false;
      if (localf != null)
        bool3 = true;
      an.b(bool3);
      this.resonators[i] = paramResonatorV2;
      paramResonatorV2.setEntity(this.containingEntity, paramr);
      this.dirty = true;
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.SimpleResonatorArray
 * JD-Core Version:    0.6.2
 */