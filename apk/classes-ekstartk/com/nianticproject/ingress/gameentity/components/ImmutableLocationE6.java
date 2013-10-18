package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.google.a.d.ad;
import com.google.a.d.i;
import com.google.a.d.j;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.b;
import org.codehaus.jackson.annotate.JsonCreator;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ImmutableLocationE6
  implements LocationE6
{
  private transient j cellId;

  @JsonProperty
  private final int latE6;
  private final transient u latLng;

  @JsonProperty
  private final int lngE6;

  private ImmutableLocationE6()
  {
    throw new IllegalArgumentException("Due to their transient latLng, ImmutableLocationE6s should only be constructed through the ImmutableLocationE6s.GSON_DESERIALIZER type adapter which bypasses this interface");
  }

  @JsonCreator
  public ImmutableLocationE6(@JsonProperty("latE6") int paramInt1, @JsonProperty("lngE6") int paramInt2)
  {
    this.latE6 = paramInt1;
    this.lngE6 = paramInt2;
    this.latLng = b.a(paramInt1, paramInt2);
  }

  public ImmutableLocationE6(u paramu)
  {
    this.latE6 = ((int)(1000000.0D * paramu.c()));
    this.lngE6 = ((int)(1000000.0D * paramu.f()));
    this.latLng = paramu;
  }

  public static ImmutableLocationE6 copyOf(LocationE6 paramLocationE6)
  {
    if ((paramLocationE6 instanceof ImmutableLocationE6))
      return (ImmutableLocationE6)paramLocationE6;
    return new ImmutableLocationE6(paramLocationE6.getLatE6(), paramLocationE6.getLngE6());
  }

  public final void computeCovering()
  {
    if (this.cellId == null)
      this.cellId = b.a(getIndexPoint());
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    ImmutableLocationE6 localImmutableLocationE6;
    do
    {
      return true;
      if (!(paramObject instanceof ImmutableLocationE6))
        return false;
      localImmutableLocationE6 = (ImmutableLocationE6)paramObject;
    }
    while ((this.latE6 == localImmutableLocationE6.latE6) && (this.lngE6 == localImmutableLocationE6.lngE6));
    return false;
  }

  public final j getIndexCell()
  {
    return this.cellId;
  }

  public final u getIndexPoint()
  {
    return this.latLng;
  }

  public final ad getIndexRegion()
  {
    return new i(getIndexPoint());
  }

  public final int getLatE6()
  {
    return this.latE6;
  }

  public final u getLatLng()
  {
    return this.latLng;
  }

  public final int getLngE6()
  {
    return this.lngE6;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.latE6);
    arrayOfObject[1] = Integer.valueOf(this.lngE6);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.latE6);
    arrayOfObject[1] = Integer.valueOf(this.lngE6);
    arrayOfObject[2] = Double.valueOf(this.latE6 / 1000000.0D);
    arrayOfObject[3] = Double.valueOf(this.lngE6 / 1000000.0D);
    return String.format("lat,lng E6: '%s,%s', http://maps.google.com?z=19&ll=%s,%s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ImmutableLocationE6
 * JD-Core Version:    0.6.2
 */