package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.aa;
import com.google.a.a.ab;
import com.google.a.c.jc;
import com.nianticproject.ingress.knobs.KnobBundleUpdate;
import com.nianticproject.ingress.shared.model.ApGain;
import com.nianticproject.ingress.shared.model.LevelUp;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class GameBasket
{
  private static final ab a = ab.a("\n    ").a();
  private static final ab b = ab.a(" ").a();

  @JsonProperty
  private final List<ApGain> apGains;
  private final aa<Map.Entry<?, ?>, String> c = new d(this);

  @JsonProperty
  private final Set<String> deletedEntityGuids;

  @JsonProperty
  private final Set<String> energyGlobGuids;

  @JsonProperty
  private final Long energyGlobTimestamp;

  @JsonProperty
  private final Set<com.nianticproject.ingress.gameentity.f> gameEntities;

  @JsonProperty
  private final Set<com.nianticproject.ingress.gameentity.f> inventory;

  @JsonProperty
  private final KnobBundleUpdate knobBundleUpdate;

  @JsonProperty
  private final LevelUp levelUp;

  @JsonProperty
  private final Set<PlayerDamage> playerDamages;

  @JsonProperty
  private final com.nianticproject.ingress.gameentity.f playerEntity;

  @JsonProperty
  private final List<String> refreshEntityGuids;

  private GameBasket()
  {
    this.playerDamages = null;
    this.gameEntities = jc.a();
    this.apGains = null;
    this.levelUp = null;
    this.playerEntity = null;
    this.inventory = null;
    this.deletedEntityGuids = jc.a();
    this.energyGlobGuids = null;
    this.energyGlobTimestamp = null;
    this.knobBundleUpdate = null;
    this.refreshEntityGuids = null;
  }

  public GameBasket(Set<PlayerDamage> paramSet, List<ApGain> paramList, LevelUp paramLevelUp, Set<com.nianticproject.ingress.gameentity.f> paramSet1, Set<com.nianticproject.ingress.gameentity.f> paramSet2, Set<String> paramSet3, Set<String> paramSet4, Long paramLong, com.nianticproject.ingress.gameentity.f paramf, KnobBundleUpdate paramKnobBundleUpdate, List<String> paramList1)
  {
    this.playerDamages = paramSet;
    if (paramSet1 == null)
    {
      this.gameEntities = jc.a();
      this.playerEntity = paramf;
      this.apGains = paramList;
      this.levelUp = paramLevelUp;
      this.inventory = paramSet2;
      if (paramSet3 != null)
        break label101;
    }
    label101: for (this.deletedEntityGuids = jc.a(); ; this.deletedEntityGuids = paramSet3)
    {
      this.energyGlobGuids = paramSet4;
      this.energyGlobTimestamp = paramLong;
      this.knobBundleUpdate = paramKnobBundleUpdate;
      this.refreshEntityGuids = paramList1;
      return;
      this.gameEntities = paramSet1;
      break;
    }
  }

  public final boolean a()
  {
    if ((this.apGains != null) && (this.apGains.size() > 0));
    f localf;
    do
    {
      e locale;
      do
      {
        do
          return false;
        while (this.knobBundleUpdate != null);
        locale = b();
      }
      while ((locale != null) && (((locale.a.apGains != null) && (locale.a.apGains.size() > 0)) || (locale.a.levelUp != null) || ((locale.a.playerDamages != null) && (locale.a.playerDamages.size() > 0)) || (locale.a.playerEntity != null)));
      localf = c();
    }
    while ((localf != null) && (((localf.a.deletedEntityGuids != null) && (localf.a.deletedEntityGuids.size() > 0)) || ((localf.a.energyGlobGuids != null) && (localf.a.energyGlobGuids.size() > 0)) || (localf.a.energyGlobTimestamp != null) || ((localf.a.gameEntities != null) && (localf.a.gameEntities.size() > 0)) || ((localf.a.inventory != null) && (localf.a.inventory.size() > 0))));
    return true;
  }

  public final e b()
  {
    return new e(this);
  }

  public final f c()
  {
    return new f(this);
  }

  public final KnobBundleUpdate d()
  {
    return this.knobBundleUpdate;
  }

  public final List<String> e()
  {
    return this.refreshEntityGuids;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[11];
    arrayOfObject[0] = this.playerDamages;
    arrayOfObject[1] = this.gameEntities;
    arrayOfObject[2] = this.playerEntity;
    arrayOfObject[3] = this.apGains;
    arrayOfObject[4] = this.levelUp;
    arrayOfObject[5] = this.inventory;
    arrayOfObject[6] = this.deletedEntityGuids;
    arrayOfObject[7] = this.energyGlobGuids;
    arrayOfObject[8] = this.energyGlobTimestamp;
    arrayOfObject[9] = this.knobBundleUpdate;
    arrayOfObject[10] = this.refreshEntityGuids;
    return String.format("basket: [%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s]", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.GameBasket
 * JD-Core Version:    0.6.2
 */