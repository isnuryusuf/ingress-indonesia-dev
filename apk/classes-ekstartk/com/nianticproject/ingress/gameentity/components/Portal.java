package com.nianticproject.ingress.gameentity.components;

import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.ht;
import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.gameentity.i;
import com.nianticproject.ingress.shared.model.b;
import com.nianticproject.ingress.shared.model.c;
import com.nianticproject.ingress.shared.r;
import java.util.Set;

public abstract interface Portal extends DynamicComponent, DescriptiveText, Modable, d, i
{
  public static final String DISPLAY_NAME = "Portal";
  public static final int MAX_MOD_COUNT = 4;

  public abstract void addLinkedEdgeData(String paramString1, String paramString2, c paramc);

  public abstract void addLinkedResonator(String paramString1, int paramInt, r paramr, String paramString2);

  public abstract du<r> getFreeSlots();

  public abstract Set<b> getLinkedEdges();

  public abstract dh<r, String> getLinkedResonatorGuids();

  public abstract dh<r, Integer> getLinkedResonatorLevels();

  public abstract du<r> getOccupiedSlots();

  public abstract du<String> getOwnerIds();

  public abstract String getResonatorAtOctant(r paramr);

  public abstract int getResonatorCount();

  public abstract int linkedModCount();

  public abstract long maxLinkRange();

  public abstract void removeLinkedEdgeData(String paramString);

  public abstract r removeLinkedResonatorByGuid(String paramString);

  public abstract int resonatorCountForOwner(String paramString);

  public abstract ht<Integer> resonatorLevelsForOwner(String paramString);

  public abstract String resonatorOwner(String paramString);

  public abstract r upgradeLinkedResonator(String paramString1, String paramString2, int paramInt, String paramString3);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Portal
 * JD-Core Version:    0.6.2
 */