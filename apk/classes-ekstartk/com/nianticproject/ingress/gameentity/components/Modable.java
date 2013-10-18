package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.i;
import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.ai;

public abstract interface Modable extends a, i
{
  public abstract boolean canTeamLinkMods(ai paramai);

  public abstract Mod getLinkedMod(int paramInt);

  public abstract int linkedModCount();

  public abstract int maxModCount();

  public abstract void removeLinkedMod(int paramInt);

  public abstract void setLinkedMod(Mod paramMod, int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Modable
 * JD-Core Version:    0.6.2
 */