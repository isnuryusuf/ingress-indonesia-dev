package com.nianticproject.ingress.common.inventory.ui;

import com.nianticproject.ingress.gameentity.components.DisplayName;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;

public final class a
{
  public static String a(f paramf)
  {
    if (paramf == null)
      return "";
    DisplayName localDisplayName = (DisplayName)paramf.getComponent(DisplayName.class);
    if (localDisplayName != null)
      return localDisplayName.getDisplayName();
    Resource localResource = (Resource)paramf.getComponent(Resource.class);
    if (localResource == null)
      throw new IllegalArgumentException(String.format("Not a resource: %s", new Object[] { paramf }));
    return localResource.getResourceType().a();
  }

  public static String b(f paramf)
  {
    if (paramf == null)
      return null;
    DisplayName localDisplayName = (DisplayName)paramf.getComponent(DisplayName.class);
    if (localDisplayName == null)
      return null;
    return localDisplayName.getDisplayDescription();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.a
 * JD-Core Version:    0.6.2
 */