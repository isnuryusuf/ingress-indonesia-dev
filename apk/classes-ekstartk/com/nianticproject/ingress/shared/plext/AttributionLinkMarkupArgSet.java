package com.nianticproject.ingress.shared.plext;

import org.codehaus.jackson.annotate.JsonProperty;

public final class AttributionLinkMarkupArgSet
  implements a
{

  @JsonProperty
  private final String attributionLink = null;

  @JsonProperty
  private final String plain = null;

  public final String a()
  {
    return this.attributionLink;
  }

  public final String b()
  {
    return this.plain;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    AttributionLinkMarkupArgSet localAttributionLinkMarkupArgSet;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (!(paramObject instanceof AttributionLinkMarkupArgSet))
          return false;
        localAttributionLinkMarkupArgSet = (AttributionLinkMarkupArgSet)paramObject;
        if (this.attributionLink == null)
        {
          if (localAttributionLinkMarkupArgSet.attributionLink != null)
            return false;
        }
        else if (!this.attributionLink.equals(localAttributionLinkMarkupArgSet.attributionLink))
          return false;
        if (this.plain != null)
          break;
      }
      while (localAttributionLinkMarkupArgSet.plain == null);
      return false;
    }
    while (this.plain.equals(localAttributionLinkMarkupArgSet.plain));
    return false;
  }

  public final int hashCode()
  {
    int i;
    int j;
    int k;
    if (this.attributionLink == null)
    {
      i = 0;
      j = 31 * (i + 31);
      String str = this.plain;
      k = 0;
      if (str != null)
        break label45;
    }
    while (true)
    {
      return j + k;
      i = this.attributionLink.hashCode();
      break;
      label45: k = this.plain.hashCode();
    }
  }

  public final String toString()
  {
    return "plain: " + this.plain + ", attributionLink: " + this.attributionLink;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.plext.AttributionLinkMarkupArgSet
 * JD-Core Version:    0.6.2
 */