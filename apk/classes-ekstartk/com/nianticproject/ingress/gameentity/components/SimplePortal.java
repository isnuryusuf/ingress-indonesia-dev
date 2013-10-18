package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.google.a.a.br;
import com.google.a.c.cn;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.hc;
import com.google.a.c.ht;
import com.google.a.c.jc;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.PortalEdgeData;
import com.nianticproject.ingress.shared.SimpleMod;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.m;
import com.nianticproject.ingress.shared.model.c;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.s;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimplePortal
  implements Portal, s
{
  private transient f containingEntity;

  @JsonProperty
  private final Map<m, String> descriptiveText = hc.b();
  private transient boolean dirty = false;

  @JsonProperty
  private final Set<PortalEdgeData> linkedEdges = jc.a();

  @JsonProperty
  private final SimpleMod[] linkedModArray = new SimpleMod[maxModCount()];

  @JsonProperty
  private final Map<r, String> linkedResonatorGuids = new EnumMap(r.class);

  @JsonProperty
  private final Map<r, String> linkedResonatorOwnerGuids = new EnumMap(r.class);

  @JsonProperty
  private final Map<r, Integer> resonatorLevels = new EnumMap(r.class);

  private r doRemove(r paramr)
  {
    this.linkedResonatorGuids.remove(paramr);
    this.linkedResonatorOwnerGuids.remove(paramr);
    this.resonatorLevels.remove(paramr);
    this.dirty = true;
    return paramr;
  }

  private r findOctantByResonatorGuid(String paramString)
  {
    r localr = k.a(this, paramString);
    if (localr == null)
      throw new IllegalArgumentException("Portal does not have linked resonatorGuid " + paramString);
    return localr;
  }

  public final void addLinkedEdgeData(String paramString1, String paramString2, c paramc)
  {
    this.linkedEdges.add(new PortalEdgeData(paramString1, paramString2, paramc));
    this.dirty = true;
  }

  public final void addLinkedResonator(String paramString1, int paramInt, r paramr, String paramString2)
  {
    boolean bool1;
    String str1;
    label33: boolean bool2;
    label74: Object[] arrayOfObject2;
    if (this.linkedResonatorGuids.get(paramr) == null)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[2];
      if (this.containingEntity != null)
        break label190;
      str1 = "no entity";
      arrayOfObject1[0] = str1;
      arrayOfObject1[1] = paramr;
      an.b(bool1, "Portal (%s) octant '%s' must be empty.", arrayOfObject1);
      if (this.linkedResonatorGuids.values().contains(paramString1))
        break label204;
      bool2 = true;
      arrayOfObject2 = new Object[2];
      if (this.containingEntity != null)
        break label210;
    }
    label190: label204: label210: for (String str2 = "no entity"; ; str2 = this.containingEntity.getGuid())
    {
      arrayOfObject2[0] = str2;
      arrayOfObject2[1] = paramString1;
      an.b(bool2, "Portal (%s) already has a resonator with guid '%s'.", arrayOfObject2);
      an.a(paramString2, "Resonator " + paramString1 + " has no owner");
      this.linkedResonatorGuids.put(paramr, paramString1);
      this.linkedResonatorOwnerGuids.put(paramr, paramString2);
      this.resonatorLevels.put(paramr, Integer.valueOf(paramInt));
      this.dirty = true;
      return;
      bool1 = false;
      break;
      str1 = this.containingEntity.getGuid();
      break label33;
      bool2 = false;
      break label74;
    }
  }

  public final void addOrUpdateDescriptiveText(m paramm, String paramString)
  {
    if (this.descriptiveText.containsKey(paramm))
      if ((paramString == null) || (paramString.isEmpty()))
      {
        this.descriptiveText.remove(paramm);
        this.dirty = true;
      }
    while ((paramString == null) || (paramString.isEmpty()))
    {
      do
        return;
      while (((String)this.descriptiveText.get(paramm)).equals(paramString));
      this.descriptiveText.put(paramm, paramString);
      this.dirty = true;
      return;
    }
    this.descriptiveText.put(paramm, paramString);
    this.dirty = true;
  }

  public final boolean canTeamLinkMods(ai paramai)
  {
    if (this.containingEntity == null);
    while (paramai != b.a(this.containingEntity))
      return false;
    return true;
  }

  public final String getDescriptiveText(m paramm)
  {
    return (String)this.descriptiveText.get(paramm);
  }

  public final Iterable<m> getDescriptiveTextLabels()
  {
    if (this.descriptiveText.size() == 0)
      return null;
    return this.descriptiveText.keySet();
  }

  public final f getEntity()
  {
    return this.containingEntity;
  }

  public final String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public final du<r> getFreeSlots()
  {
    EnumSet localEnumSet = EnumSet.allOf(r.class);
    localEnumSet.removeAll(this.linkedResonatorGuids.keySet());
    return du.a(localEnumSet);
  }

  public final int getLevel()
  {
    return k.a(this.resonatorLevels.values());
  }

  public final String getLevelName()
  {
    return a.b(getLevel());
  }

  public final du<com.nianticproject.ingress.shared.model.b> getLinkedEdges()
  {
    return du.a(this.linkedEdges);
  }

  public final Mod getLinkedMod(int paramInt)
  {
    return this.linkedModArray[paramInt];
  }

  public final dh<r, String> getLinkedResonatorGuids()
  {
    return dh.a(this.linkedResonatorGuids);
  }

  public final dh<r, Integer> getLinkedResonatorLevels()
  {
    return dh.a(this.resonatorLevels);
  }

  public final du<r> getOccupiedSlots()
  {
    if (this.linkedResonatorGuids.isEmpty())
      return du.g();
    return du.a(this.linkedResonatorGuids.keySet());
  }

  public final du<String> getOwnerIds()
  {
    dv localdv = du.h();
    Iterator localIterator = this.linkedResonatorOwnerGuids.values().iterator();
    while (localIterator.hasNext())
      localdv.c((String)localIterator.next());
    for (SimpleMod localSimpleMod : this.linkedModArray)
      if (localSimpleMod != null)
        localdv.c(localSimpleMod.getInstallingUser());
    return localdv.a();
  }

  public final String getResonatorAtOctant(r paramr)
  {
    return (String)this.linkedResonatorGuids.get(paramr);
  }

  public final int getResonatorCount()
  {
    return this.linkedResonatorGuids.size();
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final int linkedModCount()
  {
    int i = 0;
    SimpleMod[] arrayOfSimpleMod = this.linkedModArray;
    int j = arrayOfSimpleMod.length;
    for (int k = 0; k < j; k++)
      if (arrayOfSimpleMod[k] != null)
        i++;
    return i;
  }

  public final long maxLinkRange()
  {
    return k.a(this.resonatorLevels.values(), this);
  }

  public final int maxModCount()
  {
    return 4;
  }

  public final void removeLinkedEdgeData(String paramString)
  {
    Iterator localIterator = this.linkedEdges.iterator();
    while (localIterator.hasNext())
    {
      PortalEdgeData localPortalEdgeData = (PortalEdgeData)localIterator.next();
      if (localPortalEdgeData.a().equals(paramString))
      {
        this.linkedEdges.remove(localPortalEdgeData);
        this.dirty = true;
      }
    }
  }

  public final void removeLinkedMod(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 4));
    for (boolean bool1 = true; ; bool1 = false)
    {
      an.a(bool1);
      SimpleMod localSimpleMod = this.linkedModArray[paramInt];
      boolean bool2 = false;
      if (localSimpleMod != null)
        bool2 = true;
      an.a(bool2);
      this.linkedModArray[paramInt] = null;
      this.dirty = true;
      return;
    }
  }

  public final r removeLinkedResonatorByGuid(String paramString)
  {
    return doRemove(findOctantByResonatorGuid(paramString));
  }

  public final int resonatorCountForOwner(String paramString)
  {
    if (br.b(paramString))
      return 0;
    Iterator localIterator = this.linkedResonatorOwnerGuids.values().iterator();
    int i = 0;
    if (localIterator.hasNext())
      if (!paramString.equals((String)localIterator.next()))
        break label64;
    label64: for (int j = i + 1; ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }

  public final ht<Integer> resonatorLevelsForOwner(String paramString)
  {
    cn localcn;
    if (br.b(paramString))
      localcn = cn.f();
    while (true)
    {
      return localcn;
      localcn = cn.f();
      for (r localr : r.values())
        if (paramString.equals(this.linkedResonatorOwnerGuids.get(localr)))
          localcn.add(this.resonatorLevels.get(localr));
    }
  }

  public final String resonatorOwner(String paramString)
  {
    if (paramString == null)
      return null;
    Iterator localIterator = this.linkedResonatorGuids.keySet().iterator();
    while (localIterator.hasNext())
    {
      r localr = (r)localIterator.next();
      if (paramString.equals(this.linkedResonatorGuids.get(localr)))
        return (String)this.linkedResonatorOwnerGuids.get(localr);
    }
    return null;
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, s.class, paramf);
  }

  public final void setLinkedMod(Mod paramMod, int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 4) && (this.linkedModArray[paramInt] == null));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      SimpleMod localSimpleMod = SimpleMod.of(paramMod);
      this.linkedModArray[paramInt] = localSimpleMod;
      this.dirty = true;
      return;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Resonators: ").append(this.linkedResonatorGuids).append(", ResonatorOwners: ").append(this.linkedResonatorOwnerGuids).append(", Edges: ").append(this.linkedEdges).append(", Mods: ");
    if (this.dirty);
    for (String str = "[dirty], "; ; str = "")
      return str + Arrays.toString(this.linkedModArray);
  }

  public final r upgradeLinkedResonator(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    r localr = findOctantByResonatorGuid(paramString1);
    int i = ((Integer)this.resonatorLevels.get(localr)).intValue();
    String str = (String)this.linkedResonatorOwnerGuids.get(localr);
    if (paramInt > i);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Can only upgrade to a greater level");
      an.a(str, "The resonator " + paramString1 + " has no owner - this is not acceptable.");
      doRemove(localr);
      addLinkedResonator(paramString2, paramInt, localr, paramString3);
      return localr;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimplePortal
 * JD-Core Version:    0.6.2
 */