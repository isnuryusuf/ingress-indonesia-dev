package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleDisplayName
  implements DisplayName
{

  @JsonProperty
  private final String displayDescription;

  @JsonProperty
  private final String displayName;

  public SimpleDisplayName()
  {
    this.displayName = "";
    this.displayDescription = null;
  }

  public SimpleDisplayName(String paramString1, String paramString2)
  {
    this.displayName = ((String)an.a(paramString1));
    this.displayDescription = paramString2;
  }

  public String getDisplayDescription()
  {
    return this.displayDescription;
  }

  public String getDisplayName()
  {
    return this.displayName;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.displayName;
    arrayOfObject[1] = this.displayDescription;
    return String.format("displayName: %s displayDescription: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleDisplayName
 * JD-Core Version:    0.6.2
 */