package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.PortalEdgeData;
import com.nianticproject.ingress.shared.SimpleMod;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.m;
import com.nianticproject.ingress.shared.model.c;
import com.nianticproject.ingress.shared.s;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimplePortalV2
  implements PortalV2, s
{
  private transient f containingEntity;

  @JsonProperty
  private final Map<m, String> descriptiveText = hc.b();
  private transient boolean dirty = false;

  @JsonProperty
  private final Set<PortalEdgeData> linkedEdges = jc.a();

  @JsonProperty
  private final SimpleMod[] linkedModArray = new SimpleMod[maxModCount()];

  public final void addLinkedEdgeData(String paramString1, String paramString2, c paramc)
  {
    this.linkedEdges.add(new PortalEdgeData(paramString1, paramString2, paramc));
    this.dirty = true;
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
    while (paramai != com.nianticproject.ingress.gameentity.components.b.a(this.containingEntity))
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

  public final int getLevel()
  {
    return a.a(getEntity());
  }

  public final String getLevelName()
  {
    return com.nianticproject.ingress.gameentity.components.a.b(getLevel());
  }

  public final Set<String> getLinkedEdgeGuids()
  {
    HashSet localHashSet = jc.a();
    Iterator localIterator = this.linkedEdges.iterator();
    while (localIterator.hasNext())
      localHashSet.add(((PortalEdgeData)localIterator.next()).a());
    return localHashSet;
  }

  public final du<com.nianticproject.ingress.shared.model.b> getLinkedEdges()
  {
    return du.a(this.linkedEdges);
  }

  public final Mod getLinkedMod(int paramInt)
  {
    return this.linkedModArray[paramInt];
  }

  public final du<String> getOwnerIds()
  {
    dv localdv1 = du.h();
    ResonatorArray localResonatorArray = (ResonatorArray)getEntity().getComponent(ResonatorArray.class);
    dv localdv2 = du.h();
    Iterator localIterator = localResonatorArray.iterator();
    while (localIterator.hasNext())
      localdv2.c(((ResonatorV2)localIterator.next()).getOwnerGuid());
    localdv1.b(localdv2.a());
    for (SimpleMod localSimpleMod : this.linkedModArray)
      if (localSimpleMod != null)
        localdv1.c(localSimpleMod.getInstallingUser());
    return localdv1.a();
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

  public final int maxModCount()
  {
    return 4;
  }

  public final boolean removeLinkedEdgeData(String paramString)
  {
    Iterator localIterator = this.linkedEdges.iterator();
    while (localIterator.hasNext())
    {
      PortalEdgeData localPortalEdgeData = (PortalEdgeData)localIterator.next();
      if (localPortalEdgeData.a().equals(paramString))
      {
        this.linkedEdges.remove(localPortalEdgeData);
        this.dirty = true;
        return true;
      }
    }
    return false;
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
    if ((paramInt >= 0) && (paramInt < 4));
    for (boolean bool1 = true; ; bool1 = false)
    {
      an.a(bool1);
      SimpleMod localSimpleMod1 = this.linkedModArray[paramInt];
      boolean bool2 = false;
      if (localSimpleMod1 == null)
        bool2 = true;
      an.a(bool2);
      SimpleMod localSimpleMod2 = SimpleMod.of(paramMod);
      this.linkedModArray[paramInt] = localSimpleMod2;
      this.dirty = true;
      return;
    }
  }

  public final String toString()
  {
    return ag.a(getClass()).a("descriptiveText", this.descriptiveText).a("linkedEdges", this.linkedEdges).a("linkedModArray", this.linkedModArray).a("dirty", this.dirty).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.SimplePortalV2
 * JD-Core Version:    0.6.2
 */