package com.nianticproject.ingress.shared.model;

import com.google.a.a.ag;
import com.google.a.a.aj;
import com.google.a.c.dc;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleGameStateUpdate
  implements e
{

  @JsonProperty
  private final List<ApGain> apGains;

  @JsonProperty
  private final boolean authoritative;

  @JsonProperty
  private final Long changeTimestamp;

  @JsonProperty
  private final Collection<String> deletedEntityGuids;

  @JsonProperty
  private final Collection<String> energyGlobGuids;

  @JsonProperty
  private final Long energyGlobTimestamp;

  @JsonProperty
  private final Set<com.nianticproject.ingress.gameentity.f> gameEntities;

  @JsonProperty
  private final Set<com.nianticproject.ingress.gameentity.f> inventoryEntities;

  @JsonProperty
  private final LevelUp levelUp;

  @JsonProperty
  private Set<PlayerDamage> playerDamages;

  @JsonProperty
  private final com.nianticproject.ingress.gameentity.f playerEntity;

  private SimpleGameStateUpdate()
  {
    this.gameEntities = null;
    this.inventoryEntities = null;
    this.deletedEntityGuids = null;
    this.changeTimestamp = null;
    this.authoritative = true;
    this.energyGlobGuids = null;
    this.playerDamages = null;
    this.playerEntity = null;
    this.apGains = null;
    this.levelUp = null;
    this.energyGlobTimestamp = null;
  }

  SimpleGameStateUpdate(Set<com.nianticproject.ingress.gameentity.f> paramSet1, Set<com.nianticproject.ingress.gameentity.f> paramSet2, Collection<String> paramCollection1, Collection<String> paramCollection2, Long paramLong1, Long paramLong2, boolean paramBoolean, Set<PlayerDamage> paramSet, com.nianticproject.ingress.gameentity.f paramf, dc<ApGain> paramdc, LevelUp paramLevelUp)
  {
    this.gameEntities = paramSet1;
    this.inventoryEntities = paramSet2;
    this.deletedEntityGuids = paramCollection1;
    this.energyGlobGuids = paramCollection2;
    this.energyGlobTimestamp = paramLong1;
    this.changeTimestamp = paramLong2;
    this.authoritative = paramBoolean;
    this.playerDamages = paramSet;
    this.playerEntity = paramf;
    this.apGains = paramdc;
    this.levelUp = paramLevelUp;
  }

  public static f a(e parame)
  {
    return new f(parame);
  }

  public static f l()
  {
    return f.a(new f(), true);
  }

  public static f m()
  {
    return f.a(new f(), false);
  }

  public final boolean a()
  {
    return this.authoritative;
  }

  public final Set<com.nianticproject.ingress.gameentity.f> b()
  {
    return this.gameEntities;
  }

  public final Set<com.nianticproject.ingress.gameentity.f> c()
  {
    return this.inventoryEntities;
  }

  public final Collection<String> d()
  {
    return this.energyGlobGuids;
  }

  public final Long e()
  {
    return this.energyGlobTimestamp;
  }

  public final boolean equals(Object paramObject)
  {
    if ((!(paramObject instanceof SimpleGameStateUpdate)) || (paramObject == null));
    SimpleGameStateUpdate localSimpleGameStateUpdate;
    do
    {
      return false;
      localSimpleGameStateUpdate = (SimpleGameStateUpdate)paramObject;
    }
    while ((!ag.a(this.gameEntities, localSimpleGameStateUpdate.gameEntities)) || (!ag.a(this.inventoryEntities, localSimpleGameStateUpdate.inventoryEntities)) || (!ag.a(this.deletedEntityGuids, localSimpleGameStateUpdate.deletedEntityGuids)) || (!ag.a(this.energyGlobGuids, localSimpleGameStateUpdate.energyGlobGuids)) || (!ag.a(this.changeTimestamp, localSimpleGameStateUpdate.changeTimestamp)) || (!ag.a(Boolean.valueOf(this.authoritative), Boolean.valueOf(localSimpleGameStateUpdate.authoritative))) || (!ag.a(this.playerDamages, localSimpleGameStateUpdate.playerDamages)) || (!ag.a(this.playerEntity, localSimpleGameStateUpdate.playerEntity)) || (!ag.a(this.apGains, localSimpleGameStateUpdate.apGains)) || (!ag.a(this.energyGlobTimestamp, localSimpleGameStateUpdate.energyGlobTimestamp)));
    return true;
  }

  public final Collection<String> f()
  {
    return this.deletedEntityGuids;
  }

  public final aj<Long> g()
  {
    return aj.c(this.changeTimestamp);
  }

  public final Set<PlayerDamage> h()
  {
    return this.playerDamages;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[10];
    arrayOfObject[0] = this.gameEntities;
    arrayOfObject[1] = this.inventoryEntities;
    arrayOfObject[2] = this.deletedEntityGuids;
    arrayOfObject[3] = this.energyGlobGuids;
    arrayOfObject[4] = this.changeTimestamp;
    arrayOfObject[5] = Boolean.valueOf(this.authoritative);
    arrayOfObject[6] = this.playerDamages;
    arrayOfObject[7] = this.playerEntity;
    arrayOfObject[8] = this.apGains;
    arrayOfObject[9] = this.energyGlobTimestamp;
    return ag.a(arrayOfObject);
  }

  public final aj<com.nianticproject.ingress.gameentity.f> i()
  {
    return aj.c(this.playerEntity);
  }

  public final dc<ApGain> j()
  {
    if (this.apGains == null)
      return null;
    return dc.a(this.apGains);
  }

  public final aj<LevelUp> k()
  {
    return aj.c(this.levelUp);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.changeTimestamp;
    arrayOfObject[1] = this.gameEntities;
    arrayOfObject[2] = this.energyGlobGuids;
    arrayOfObject[3] = this.deletedEntityGuids;
    return String.format("'%s' <%s> <%s> : <%s>", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.model.SimpleGameStateUpdate
 * JD-Core Version:    0.6.2
 */