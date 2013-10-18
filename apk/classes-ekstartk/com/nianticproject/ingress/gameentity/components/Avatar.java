package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.shared.playerprofile.AvatarChoiceParams;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayer;

public abstract interface Avatar extends DynamicComponent
{
  public abstract AvatarLayer getBackground();

  public abstract AvatarLayer getForeground();

  public abstract void updateAvatar(AvatarChoiceParams paramAvatarChoiceParams);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Avatar
 * JD-Core Version:    0.6.2
 */