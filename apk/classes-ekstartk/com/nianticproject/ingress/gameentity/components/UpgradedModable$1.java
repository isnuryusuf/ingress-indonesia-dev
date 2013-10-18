package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.af;
import java.util.Map;

class UpgradedModable$1
  implements Mod
{
  UpgradedModable$1(UpgradedModable paramUpgradedModable, ModResource paramModResource)
  {
  }

  public ModResource buildModResource()
  {
    return this.val$resource;
  }

  public String getDisplayName()
  {
    return this.val$resource.getDisplayName();
  }

  public String getInstallingUser()
  {
    return "";
  }

  public l getRarity()
  {
    return this.val$resource.getRarity();
  }

  public af getResourceType()
  {
    return this.val$resource.getResourceType();
  }

  public Map<m, Long> getStatModifiers()
  {
    return this.val$resource.getStatModifiers();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.UpgradedModable.1
 * JD-Core Version:    0.6.2
 */