package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.b.a;

public class DefaultActionRange
  implements PlayerActionRange
{
  private transient f containingEntity;

  public f getEntity()
  {
    return this.containingEntity;
  }

  public String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public int getRangeM()
  {
    return 40;
  }

  public boolean inRange(u paramu)
  {
    LocationE6 localLocationE6 = (LocationE6)this.containingEntity.getComponent(LocationE6.class);
    if (localLocationE6 == null)
      return false;
    if ((paramu == null) || (localLocationE6 == null));
    for (double d = (1.0D / 0.0D); d <= getRangeM(); d = a.a(paramu.c(), paramu.f(), localLocationE6.getLatE6() / 1000000.0D, localLocationE6.getLngE6() / 1000000.0D))
      return true;
    return false;
  }

  public void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, PlayerActionRange.class, paramf);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.DefaultActionRange
 * JD-Core Version:    0.6.2
 */