package com.nianticproject.ingress.common.playerprofile;

import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;

public final class k
{
  private AvatarLayerOption a;
  private AvatarLayerOption b;
  private Integer c;
  private Integer d;

  private k(j paramj)
  {
    this.a = j.a(paramj);
    this.b = j.b(paramj);
    this.c = j.c(paramj);
    this.d = j.d(paramj);
  }

  public final j a()
  {
    return new j(this.a, this.b, this.c, this.d, (byte)0);
  }

  public final k a(AvatarLayerOption paramAvatarLayerOption)
  {
    this.a = paramAvatarLayerOption;
    return this;
  }

  public final k a(Integer paramInteger)
  {
    this.c = paramInteger;
    return this;
  }

  public final k b(AvatarLayerOption paramAvatarLayerOption)
  {
    this.b = paramAvatarLayerOption;
    return this;
  }

  public final k b(Integer paramInteger)
  {
    this.d = paramInteger;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.k
 * JD-Core Version:    0.6.2
 */