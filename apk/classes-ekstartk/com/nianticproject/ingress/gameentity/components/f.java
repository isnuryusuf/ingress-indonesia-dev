package com.nianticproject.ingress.gameentity.components;

public final class f
{
  public static String a(com.nianticproject.ingress.gameentity.f paramf, String paramString)
  {
    ImageByUrl localImageByUrl = (ImageByUrl)paramf.getComponent(ImageByUrl.class);
    if (localImageByUrl == null)
      return paramString;
    return localImageByUrl.getImageUrl();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.f
 * JD-Core Version:    0.6.2
 */