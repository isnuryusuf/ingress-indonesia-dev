package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.ag;
import com.google.a.a.br;
import com.nianticproject.ingress.gameentity.components.Avatar;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayer;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;
import com.nianticproject.ingress.shared.playerprofile.PlayerAvatar;
import com.nianticproject.ingress.shared.playerprofile.a;

public final class j
{
  private final AvatarLayerOption a;
  private final AvatarLayerOption b;
  private final Integer c;
  private final Integer d;

  private j(AvatarLayerOption paramAvatarLayerOption1, AvatarLayerOption paramAvatarLayerOption2, Integer paramInteger1, Integer paramInteger2)
  {
    this.a = paramAvatarLayerOption1;
    this.b = paramAvatarLayerOption2;
    this.c = paramInteger1;
    this.d = paramInteger2;
  }

  public static j a(Avatar paramAvatar)
  {
    int i;
    if (paramAvatar == null)
      i = 0;
    while (i == 0)
    {
      return new j(null, null, Integer.valueOf(0), Integer.valueOf(0));
      if ((paramAvatar.getBackground() == null) || (br.b(paramAvatar.getBackground().c())))
        i = 0;
      else if ((paramAvatar.getForeground() == null) || (br.b(paramAvatar.getForeground().c())))
        i = 0;
      else
        i = 1;
    }
    return new j(AvatarLayerOption.a(paramAvatar.getBackground(), a.b), AvatarLayerOption.a(paramAvatar.getForeground(), a.a), Integer.valueOf(paramAvatar.getBackground().b()), Integer.valueOf(paramAvatar.getForeground().b()));
  }

  public static j a(PlayerAvatar paramPlayerAvatar)
  {
    if (paramPlayerAvatar == null)
      return new j(null, null, Integer.valueOf(0), Integer.valueOf(0));
    return new j(paramPlayerAvatar.b(), paramPlayerAvatar.a(), Integer.valueOf(paramPlayerAvatar.d()), Integer.valueOf(paramPlayerAvatar.c()));
  }

  public final k a()
  {
    return new k(this, (byte)0);
  }

  public final AvatarLayerOption b()
  {
    return this.a;
  }

  public final AvatarLayerOption c()
  {
    return this.b;
  }

  public final Integer d()
  {
    return this.c;
  }

  public final Integer e()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof j));
    j localj;
    do
    {
      return false;
      localj = (j)paramObject;
    }
    while ((!ag.a(this.a, localj.a)) || (!ag.a(this.b, localj.b)) || (!ag.a(this.d, localj.d)) || (!ag.a(this.c, localj.c)));
    return true;
  }

  public final boolean f()
  {
    return (this.a != null) && (this.b != null) && (!br.b(this.a.a())) && (!br.b(this.b.a())) && (this.c != null) && (this.d != null);
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    arrayOfObject[2] = this.d;
    arrayOfObject[3] = this.c;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    String str1 = "backgroundLayer: %s, foregroundLayer: %s, foregroundColor: #%s, backgroundColor: #%s, " + this.a;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.b;
    if (this.d != null);
    for (String str2 = Integer.toHexString(this.d.intValue()); ; str2 = null)
    {
      arrayOfObject[1] = str2;
      Integer localInteger = this.c;
      String str3 = null;
      if (localInteger != null)
        str3 = Integer.toHexString(this.c.intValue());
      arrayOfObject[2] = str3;
      return String.format(str1, arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.j
 * JD-Core Version:    0.6.2
 */