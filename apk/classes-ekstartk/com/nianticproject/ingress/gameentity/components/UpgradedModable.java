package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.ai;

public class UpgradedModable
  implements Modable
{
  private int modSlot;
  private Modable modable;
  private Mod replacementMod = null;

  public UpgradedModable(Modable paramModable, ModResource paramModResource, int paramInt)
  {
    this.modable = paramModable;
    this.modSlot = paramInt;
    if (paramModResource != null)
      this.replacementMod = new UpgradedModable.1(this, paramModResource);
  }

  public boolean canTeamLinkMods(ai paramai)
  {
    return this.modable.canTeamLinkMods(paramai);
  }

  public f getEntity()
  {
    return this.modable.getEntity();
  }

  public String getEntityGuid()
  {
    return this.modable.getEntityGuid();
  }

  public Mod getLinkedMod(int paramInt)
  {
    if (this.modSlot == paramInt)
      return this.replacementMod;
    return this.modable.getLinkedMod(paramInt);
  }

  public int linkedModCount()
  {
    if (this.replacementMod != null);
    for (int i = 1; ; i = 0)
    {
      Mod localMod = this.modable.getLinkedMod(this.modSlot);
      int j = 0;
      if (localMod != null)
        j = -1;
      return j + (i + this.modable.linkedModCount());
    }
  }

  public int maxModCount()
  {
    return this.modable.maxModCount();
  }

  public void removeLinkedMod(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public void setEntity(f paramf)
  {
    throw new UnsupportedOperationException();
  }

  public void setLinkedMod(Mod paramMod, int paramInt)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.UpgradedModable
 * JD-Core Version:    0.6.2
 */