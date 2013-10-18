package com.nianticproject.ingress.gameentity.components.portal;

import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.gameentity.i;
import com.nianticproject.ingress.shared.r;

public abstract interface ResonatorArray extends DynamicComponent, i, Iterable<ResonatorV2>
{
  public static final int CAPACITY = 8;
  public static final String DISPLAY_NAME = "ResonatorArray";
  public static final int MAX_SLOT = 7;
  public static final int MIN_SLOT;

  public abstract void addResonator(ResonatorV2 paramResonatorV2, r paramr);

  public abstract ResonatorV2 getResonator(r paramr);

  public abstract Iterable<Integer> getResonatorLevels();

  public abstract void removeResonator(r paramr);

  public abstract int size();

  public abstract void updateResonator(ResonatorV2 paramResonatorV2, r paramr);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.ResonatorArray
 * JD-Core Version:    0.6.2
 */