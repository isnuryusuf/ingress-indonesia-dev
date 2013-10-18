package com.nianticproject.ingress.common.scanner.visuals;

import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.gameentity.components.CapturedRegion;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.shared.RegionPoint;
import com.nianticproject.ingress.shared.ai;

final class l
{
  private final ai a;
  private final String b;
  private final String c;
  private final String d;
  private final eo e;
  private final eo f;
  private final eo g;

  l(fp paramfp, CapturedRegion paramCapturedRegion, ai paramai)
  {
    RegionPoint localRegionPoint1 = paramCapturedRegion.getVertexA();
    RegionPoint localRegionPoint2 = paramCapturedRegion.getVertexB();
    RegionPoint localRegionPoint3 = paramCapturedRegion.getVertexC();
    this.a = paramai;
    this.b = localRegionPoint1.a();
    this.e = paramfp.a(localRegionPoint1.b().getLatLng());
    this.c = localRegionPoint2.a();
    this.f = paramfp.a(localRegionPoint2.b().getLatLng());
    this.d = localRegionPoint3.a();
    this.g = paramfp.a(localRegionPoint3.b().getLatLng());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.l
 * JD-Core Version:    0.6.2
 */