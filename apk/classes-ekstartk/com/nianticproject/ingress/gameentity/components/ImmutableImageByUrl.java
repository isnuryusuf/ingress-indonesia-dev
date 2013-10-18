package com.nianticproject.ingress.gameentity.components;

import org.codehaus.jackson.annotate.JsonProperty;

public class ImmutableImageByUrl
  implements ImageByUrl
{

  @JsonProperty
  private final String imageUrl;

  private ImmutableImageByUrl()
  {
    this.imageUrl = null;
  }

  public ImmutableImageByUrl(String paramString)
  {
    this.imageUrl = paramString;
  }

  public String getImageUrl()
  {
    return this.imageUrl;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ImmutableImageByUrl
 * JD-Core Version:    0.6.2
 */