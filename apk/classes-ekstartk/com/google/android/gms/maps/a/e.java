package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.bt;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.cg;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.cp;
import com.google.android.gms.internal.cs;
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
import com.google.android.gms.maps.model.j;
import com.google.android.gms.maps.model.k;
import com.google.android.gms.maps.model.l;

public abstract class e extends Binder
  implements d
{
  public static d a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof d)))
      return (d)localIInterface;
    return new f(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      CameraPosition localCameraPosition = a();
      paramParcel2.writeNoException();
      if (localCameraPosition != null)
      {
        paramParcel2.writeInt(1);
        localCameraPosition.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      float f2 = b();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f2);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      float f1 = c();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f1);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(ah.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      b(ah.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(ah.a(paramParcel1.readStrongBinder()), bk.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(ah.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), bk.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      d();
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (PolylineOptions localPolylineOptions = l.a(paramParcel1); ; localPolylineOptions = null)
      {
        a locala = a(localPolylineOptions);
        paramParcel2.writeNoException();
        IBinder localIBinder10 = null;
        if (locala != null)
          localIBinder10 = locala.asBinder();
        paramParcel2.writeStrongBinder(localIBinder10);
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (PolygonOptions localPolygonOptions = PolygonOptions.a.a(paramParcel1); ; localPolygonOptions = null)
      {
        dj localdj = a(localPolygonOptions);
        paramParcel2.writeNoException();
        IBinder localIBinder9 = null;
        if (localdj != null)
          localIBinder9 = localdj.asBinder();
        paramParcel2.writeStrongBinder(localIBinder9);
        return true;
      }
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (MarkerOptions localMarkerOptions = j.a(paramParcel1); ; localMarkerOptions = null)
      {
        dg localdg = a(localMarkerOptions);
        paramParcel2.writeNoException();
        IBinder localIBinder8 = null;
        if (localdg != null)
          localIBinder8 = localdg.asBinder();
        paramParcel2.writeStrongBinder(localIBinder8);
        return true;
      }
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (GroundOverlayOptions localGroundOverlayOptions = com.google.android.gms.maps.model.f.a(paramParcel1); ; localGroundOverlayOptions = null)
      {
        dd localdd = a(localGroundOverlayOptions);
        paramParcel2.writeNoException();
        IBinder localIBinder7 = null;
        if (localdd != null)
          localIBinder7 = localdd.asBinder();
        paramParcel2.writeStrongBinder(localIBinder7);
        return true;
      }
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (TileOverlayOptions localTileOverlayOptions = com.google.android.gms.maps.model.p.a(paramParcel1); ; localTileOverlayOptions = null)
      {
        dm localdm = a(localTileOverlayOptions);
        paramParcel2.writeNoException();
        IBinder localIBinder6 = null;
        if (localdm != null)
          localIBinder6 = localdm.asBinder();
        paramParcel2.writeStrongBinder(localIBinder6);
        return true;
      }
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      e();
      paramParcel2.writeNoException();
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      int i2 = f();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i2);
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      boolean bool7 = g();
      paramParcel2.writeNoException();
      int i1 = 0;
      if (bool7)
        i1 = 1;
      paramParcel2.writeInt(i1);
      return true;
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      int n = paramParcel1.readInt();
      boolean bool6 = false;
      if (n != 0)
        bool6 = true;
      a(bool6);
      paramParcel2.writeNoException();
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      boolean bool5 = h();
      paramParcel2.writeNoException();
      int m = 0;
      if (bool5)
        m = 1;
      paramParcel2.writeInt(m);
      return true;
    case 20:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (boolean bool3 = true; ; bool3 = false)
      {
        boolean bool4 = b(bool3);
        paramParcel2.writeNoException();
        int k = 0;
        if (bool4)
          k = 1;
        paramParcel2.writeInt(k);
        return true;
      }
    case 21:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      boolean bool2 = i();
      paramParcel2.writeNoException();
      int j = 0;
      if (bool2)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 22:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      int i = paramParcel1.readInt();
      boolean bool1 = false;
      if (i != 0)
        bool1 = true;
      c(bool1);
      paramParcel2.writeNoException();
      return true;
    case 23:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      Location localLocation = j();
      paramParcel2.writeNoException();
      if (localLocation != null)
      {
        paramParcel2.writeInt(1);
        localLocation.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 24:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      IBinder localIBinder5 = paramParcel1.readStrongBinder();
      Object localObject = null;
      if (localIBinder5 == null);
      while (true)
      {
        a((g)localObject);
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface = localIBinder5.queryLocalInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
        if ((localIInterface != null) && ((localIInterface instanceof g)))
          localObject = (g)localIInterface;
        else
          localObject = new i(localIBinder5);
      }
    case 25:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      s locals = k();
      paramParcel2.writeNoException();
      IBinder localIBinder4 = null;
      if (locals != null)
        localIBinder4 = locals.asBinder();
      paramParcel2.writeStrongBinder(localIBinder4);
      return true;
    case 26:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      p localp = l();
      paramParcel2.writeNoException();
      IBinder localIBinder3 = null;
      if (localp != null)
        localIBinder3 = localp.asBinder();
      paramParcel2.writeStrongBinder(localIBinder3);
      return true;
    case 27:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(bt.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 28:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(cg.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 29:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(cj.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 30:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(cm.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 31:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(cp.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 32:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(by.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 33:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(bq.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 34:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      af localaf = m();
      paramParcel2.writeNoException();
      IBinder localIBinder2 = null;
      if (localaf != null)
        localIBinder2 = localaf.asBinder();
      paramParcel2.writeStrongBinder(localIBinder2);
      return true;
    case 35:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (CircleOptions localCircleOptions = com.google.android.gms.maps.model.e.a(paramParcel1); ; localCircleOptions = null)
      {
        da localda = a(localCircleOptions);
        paramParcel2.writeNoException();
        IBinder localIBinder1 = null;
        if (localda != null)
          localIBinder1 = localda.asBinder();
        paramParcel2.writeStrongBinder(localIBinder1);
        return true;
      }
    case 36:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    a(cs.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.e
 * JD-Core Version:    0.6.2
 */