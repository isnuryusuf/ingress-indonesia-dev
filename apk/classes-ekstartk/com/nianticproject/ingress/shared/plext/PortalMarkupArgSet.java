package com.nianticproject.ingress.shared.plext;

import com.nianticproject.ingress.shared.ai;
import org.codehaus.jackson.annotate.JsonProperty;

public class PortalMarkupArgSet
  implements a
{

  @JsonProperty
  private final String address = null;

  @JsonProperty
  private final String guid = null;

  @JsonProperty
  private final int latE6 = 0;

  @JsonProperty
  private final int lngE6 = 0;

  @JsonProperty
  private final String name = null;

  @JsonProperty
  private final String plain = null;

  @JsonProperty
  private final ai team = null;

  public final String a()
  {
    return this.name;
  }

  public final String b()
  {
    return this.plain;
  }

  public final String c()
  {
    return this.address;
  }

  public final String d()
  {
    return this.guid;
  }

  public final int e()
  {
    return this.latE6;
  }

  public final int f()
  {
    return this.lngE6;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.plain;
    arrayOfObject[1] = Integer.valueOf(this.latE6);
    arrayOfObject[2] = Integer.valueOf(this.lngE6);
    return String.format("%s at (%s, %s)", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.plext.PortalMarkupArgSet
 * JD-Core Version:    0.6.2
 */