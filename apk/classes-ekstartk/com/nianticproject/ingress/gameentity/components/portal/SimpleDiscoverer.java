package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.a.ag;
import com.nianticproject.ingress.shared.plext.PlayerMarkupArgSet;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleDiscoverer
  implements Discoverer
{

  @JsonProperty
  private final PlayerMarkupArgSet playerMarkupArgSet;

  private SimpleDiscoverer()
  {
    this.playerMarkupArgSet = null;
  }

  public SimpleDiscoverer(PlayerMarkupArgSet paramPlayerMarkupArgSet)
  {
    this.playerMarkupArgSet = paramPlayerMarkupArgSet;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SimpleDiscoverer))
      return false;
    SimpleDiscoverer localSimpleDiscoverer = (SimpleDiscoverer)paramObject;
    return ag.a(this.playerMarkupArgSet, localSimpleDiscoverer.playerMarkupArgSet);
  }

  public PlayerMarkupArgSet getDiscoverer()
  {
    return this.playerMarkupArgSet;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.playerMarkupArgSet;
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.playerMarkupArgSet;
    return String.format("playerMarkupArgSet: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.SimpleDiscoverer
 * JD-Core Version:    0.6.2
 */