package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.bj;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.bs;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.ci;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.da;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.dm;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.a.a;

public abstract interface d extends IInterface
{
  public abstract da a(CircleOptions paramCircleOptions);

  public abstract dd a(GroundOverlayOptions paramGroundOverlayOptions);

  public abstract dg a(MarkerOptions paramMarkerOptions);

  public abstract dj a(PolygonOptions paramPolygonOptions);

  public abstract dm a(TileOverlayOptions paramTileOverlayOptions);

  public abstract CameraPosition a();

  public abstract a a(PolylineOptions paramPolylineOptions);

  public abstract void a(int paramInt);

  public abstract void a(af paramaf);

  public abstract void a(af paramaf, int paramInt, bj parambj);

  public abstract void a(af paramaf, bj parambj);

  public abstract void a(bp parambp);

  public abstract void a(bs parambs);

  public abstract void a(bv parambv);

  public abstract void a(ce paramce);

  public abstract void a(ci paramci);

  public abstract void a(cl paramcl);

  public abstract void a(co paramco);

  public abstract void a(cr paramcr);

  public abstract void a(g paramg);

  public abstract void a(boolean paramBoolean);

  public abstract float b();

  public abstract void b(af paramaf);

  public abstract boolean b(boolean paramBoolean);

  public abstract float c();

  public abstract void c(boolean paramBoolean);

  public abstract void d();

  public abstract void e();

  public abstract int f();

  public abstract boolean g();

  public abstract boolean h();

  public abstract boolean i();

  public abstract Location j();

  public abstract s k();

  public abstract p l();

  public abstract af m();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.d
 * JD-Core Version:    0.6.2
 */