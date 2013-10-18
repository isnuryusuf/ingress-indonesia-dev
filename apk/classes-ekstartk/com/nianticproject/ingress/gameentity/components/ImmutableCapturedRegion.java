package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.eq;
import com.google.a.d.ae;
import com.google.a.d.j;
import com.google.a.d.k;
import com.google.a.d.u;
import com.google.a.d.w;
import com.google.a.d.y;
import com.nianticproject.ingress.shared.RegionPoint;
import com.nianticproject.ingress.shared.b.a;
import java.util.Arrays;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ImmutableCapturedRegion
  implements CachingRegionIndex, CapturedRegion
{
  private transient dc<j> coveringCache;

  @JsonProperty
  private final RegionPoint vertexA;

  @JsonProperty
  private final RegionPoint vertexB;

  @JsonProperty
  private final RegionPoint vertexC;

  private ImmutableCapturedRegion()
  {
    this.vertexA = null;
    this.vertexB = null;
    this.vertexC = null;
  }

  public ImmutableCapturedRegion(RegionPoint paramRegionPoint1, RegionPoint paramRegionPoint2, RegionPoint paramRegionPoint3)
  {
    boolean bool1;
    boolean bool2;
    label33: boolean bool3;
    label51: RegionPoint[] arrayOfRegionPoint;
    int i;
    if (!paramRegionPoint1.equals(paramRegionPoint2))
    {
      bool1 = true;
      an.a(bool1, "Duplicate points: A, B");
      if (paramRegionPoint1.equals(paramRegionPoint3))
        break label202;
      bool2 = true;
      an.a(bool2, "Duplicate points: A, C");
      if (paramRegionPoint2.equals(paramRegionPoint3))
        break label208;
      bool3 = true;
      an.a(bool3, "Duplicate points: B, C");
      arrayOfRegionPoint = new RegionPoint[] { paramRegionPoint1, paramRegionPoint2, paramRegionPoint3 };
      Arrays.sort(arrayOfRegionPoint);
      i = com.google.a.d.f.a(arrayOfRegionPoint[0].b().getLatLng().g(), arrayOfRegionPoint[1].b().getLatLng().g(), arrayOfRegionPoint[2].b().getLatLng().g());
      if (i == 0)
        break label214;
    }
    label202: label208: label214: for (boolean bool4 = true; ; bool4 = false)
    {
      an.b(bool4, "Duplicate vertex in region or degenerate region");
      if (i < 0)
      {
        RegionPoint localRegionPoint = arrayOfRegionPoint[2];
        arrayOfRegionPoint[2] = arrayOfRegionPoint[1];
        arrayOfRegionPoint[1] = localRegionPoint;
      }
      this.vertexA = arrayOfRegionPoint[0];
      this.vertexB = arrayOfRegionPoint[1];
      this.vertexC = arrayOfRegionPoint[2];
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label33;
      bool3 = false;
      break label51;
    }
  }

  public static ImmutableCapturedRegion fromEntities(com.nianticproject.ingress.gameentity.f paramf1, com.nianticproject.ingress.gameentity.f paramf2, com.nianticproject.ingress.gameentity.f paramf3)
  {
    return new ImmutableCapturedRegion(RegionPoint.a(paramf1), RegionPoint.a(paramf2), RegionPoint.a(paramf3));
  }

  public final double computeActualAreaOfRegion()
  {
    y localy1 = this.vertexA.b().getLatLng().g();
    y localy2 = this.vertexB.b().getLatLng().g();
    y localy3 = this.vertexC.b().getLatLng().g();
    double d1 = localy2.e(localy3);
    double d2 = localy3.e(localy1);
    double d3 = localy1.e(localy2);
    double d4 = 0.5D * (d3 + (d1 + d2));
    double d5 = Math.tan(0.5D * d4);
    double d6 = Math.tan(0.5D * (d4 - d1));
    double d7 = Math.tan(0.5D * (d4 - d2));
    return 40589768420100.0D * (4.0D * Math.atan(Math.sqrt(Math.max(0.0D, Math.tan(0.5D * (d4 - d3)) * (d7 * (d6 * d5))))));
  }

  public final void computeCovering()
  {
    if (this.coveringCache == null)
    {
      ae localae = new ae();
      localae.a(18);
      this.coveringCache = dc.a(localae.a(getIndexRegion()).a());
    }
  }

  public final double computeMapAreaBoundM2()
  {
    return a.a(getIndexRegion());
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    ImmutableCapturedRegion localImmutableCapturedRegion;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof ImmutableCapturedRegion))
        return false;
      localImmutableCapturedRegion = (ImmutableCapturedRegion)paramObject;
    }
    while ((this.vertexA.equals(localImmutableCapturedRegion.vertexA)) && (this.vertexB.equals(localImmutableCapturedRegion.vertexB)) && (this.vertexC.equals(localImmutableCapturedRegion.vertexC)));
    return false;
  }

  public final dc<j> getCovering()
  {
    return this.coveringCache;
  }

  public final w getIndexRegion()
  {
    y[] arrayOfy = new y[3];
    arrayOfy[0] = this.vertexA.b().getLatLng().g();
    arrayOfy[1] = this.vertexB.b().getLatLng().g();
    arrayOfy[2] = this.vertexC.b().getLatLng().g();
    return new w(eq.a(arrayOfy));
  }

  public final RegionPoint getVertexA()
  {
    return this.vertexA;
  }

  public final RegionPoint getVertexB()
  {
    return this.vertexB;
  }

  public final RegionPoint getVertexC()
  {
    return this.vertexC;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.vertexA;
    arrayOfObject[1] = this.vertexB;
    arrayOfObject[2] = this.vertexC;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.vertexA.a();
    arrayOfObject[1] = this.vertexB.a();
    arrayOfObject[2] = this.vertexC.a();
    return String.format("Region: %s -> %s -> %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ImmutableCapturedRegion
 * JD-Core Version:    0.6.2
 */