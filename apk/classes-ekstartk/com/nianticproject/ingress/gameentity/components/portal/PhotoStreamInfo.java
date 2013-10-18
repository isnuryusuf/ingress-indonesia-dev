package com.nianticproject.ingress.gameentity.components.portal;

import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.shared.portal.PortalImage;

public abstract interface PhotoStreamInfo extends DynamicComponent
{
  public abstract PortalImage getCoverPhoto();

  public abstract int getPhotoCount();

  public abstract void setCoverPhoto(PortalImage paramPortalImage);

  public abstract void setPhotoCount(int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.PhotoStreamInfo
 * JD-Core Version:    0.6.2
 */