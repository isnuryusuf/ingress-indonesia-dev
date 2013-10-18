package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.nianticproject.ingress.shared.portal.PortalImage;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimplePhotoStreamInfo
  implements PhotoStreamInfo, s
{

  @JsonProperty
  private PortalImage coverPhoto;
  private transient boolean dirty;

  @JsonProperty
  private int photoCount;

  private SimplePhotoStreamInfo()
  {
  }

  public SimplePhotoStreamInfo(PortalImage paramPortalImage, int paramInt)
  {
    checkPhotoCount(paramInt);
    this.coverPhoto = paramPortalImage;
    this.photoCount = paramInt;
    this.dirty = false;
  }

  private void checkPhotoCount(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return;
    }
  }

  public final PortalImage getCoverPhoto()
  {
    return this.coverPhoto;
  }

  public final int getPhotoCount()
  {
    return this.photoCount;
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final void setCoverPhoto(PortalImage paramPortalImage)
  {
    if (!ag.a(this.coverPhoto, paramPortalImage))
    {
      this.coverPhoto = paramPortalImage;
      this.dirty = true;
    }
  }

  public final void setPhotoCount(int paramInt)
  {
    checkPhotoCount(paramInt);
    if (this.photoCount != paramInt)
    {
      this.photoCount = paramInt;
      this.dirty = true;
    }
  }

  public final String toString()
  {
    return ag.a(getClass()).a("coverPhoto", this.coverPhoto).a("photoCount", this.photoCount).a("dirty", this.dirty).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.SimplePhotoStreamInfo
 * JD-Core Version:    0.6.2
 */