package com.nianticproject.ingress.gameentity.components;

import com.google.a.c.dh;
import com.google.a.c.di;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.portal.PortalV2;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.gameentity.i;
import java.util.Random;

public final class PortalTurret
  implements Turret, i
{
  private static final dh<Integer, j> LEVEL_TO_DAMAGE_MAP = dh.j().a(Integer.valueOf(1), new j(75, 40.0F, 0.02F)).a(Integer.valueOf(2), new j(125, 45.599998F, 0.04F)).a(Integer.valueOf(3), new j(175, 51.199997F, 0.06F)).a(Integer.valueOf(4), new j(238, 56.799999F, 0.08F)).a(Integer.valueOf(5), new j(300, 62.399998F, 0.1F)).a(Integer.valueOf(6), new j(400, 68.0F, 0.11F)).a(Integer.valueOf(7), new j(500, 73.599998F, 0.12F)).a(Integer.valueOf(8), new j(625, 80.0F, 0.13F)).a(Integer.valueOf(0), new j(0, 0.0F, 0.0F)).a();
  private static final Random r = new Random();
  private transient f containingEntity;

  private int getPortalLevelOrZero()
  {
    if (this.containingEntity == null)
      return 0;
    PortalV2 localPortalV2 = (PortalV2)getEntity().getComponent(PortalV2.class);
    if (localPortalV2 == null)
      return 0;
    return localPortalV2.getLevel();
  }

  public final q calculateDamage(u paramu1, u paramu2)
  {
    if (paramu1.a(paramu2) > getTargetingRangeInMeters())
      return q.a;
    j localj = (j)LEVEL_TO_DAMAGE_MAP.get(Integer.valueOf(getPortalLevelOrZero()));
    int i = j.b(localj);
    boolean bool;
    if (r.nextFloat() < j.c(localj))
    {
      bool = true;
      if (!bool)
        break label88;
    }
    label88: for (int j = i * 2; ; j = i)
    {
      return new q(j, bool);
      bool = false;
      break;
    }
  }

  public final boolean canBeFired()
  {
    return true;
  }

  public final int getCurrentAmmo()
  {
    return 2147483647;
  }

  public final f getEntity()
  {
    return this.containingEntity;
  }

  public final String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public final int getTargetingRangeInMeters()
  {
    return (int)j.a((j)LEVEL_TO_DAMAGE_MAP.get(Integer.valueOf(getPortalLevelOrZero())));
  }

  public final void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, i.class, paramf);
  }

  public final void spendAmmo()
  {
  }

  public final boolean toBeDestroyed()
  {
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.PortalTurret
 * JD-Core Version:    0.6.2
 */