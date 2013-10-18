package com.nianticproject.ingress.gameentity.components;

import org.codehaus.jackson.annotate.JsonProperty;

public final class SimplePowerCube
  implements PowerCube
{

  @JsonProperty
  private final int energy;

  public SimplePowerCube()
  {
    this.energy = 0;
  }

  public SimplePowerCube(int paramInt)
  {
    this.energy = paramInt;
  }

  public final int getEnergy()
  {
    return this.energy;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.energy);
    return String.format("XM: %d", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimplePowerCube
 * JD-Core Version:    0.6.2
 */