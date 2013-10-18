package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleFlipCard
  implements FlipCard
{

  @JsonProperty
  private c flipCardType;

  public SimpleFlipCard()
  {
    this.flipCardType = c.a;
  }

  public SimpleFlipCard(c paramc)
  {
    this.flipCardType = ((c)an.a(paramc));
  }

  public c getFlipCardType()
  {
    return this.flipCardType;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.flipCardType;
    return String.format("flipCardType: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleFlipCard
 * JD-Core Version:    0.6.2
 */