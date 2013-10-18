package com.nianticproject.ingress.shared.plext;

import org.codehaus.jackson.annotate.JsonProperty;

public final class TextMarkupArgSet
  implements a
{

  @JsonProperty
  private final String plain;

  public TextMarkupArgSet()
  {
    this.plain = null;
  }

  public TextMarkupArgSet(String paramString)
  {
    this.plain = paramString;
  }

  public static c a(String paramString)
  {
    return new c(d.a, new TextMarkupArgSet(paramString));
  }

  public final String b()
  {
    return this.plain;
  }

  public final String toString()
  {
    return this.plain;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.plext.TextMarkupArgSet
 * JD-Core Version:    0.6.2
 */