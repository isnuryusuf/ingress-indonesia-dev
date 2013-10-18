package com.google.android.youtube.player.internal;

import android.content.res.Configuration;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.view.KeyEvent;

public abstract class j extends Binder
  implements i
{
  public static i a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
    if ((localIInterface != null) && ((localIInterface instanceof i)))
      return (i)localIInterface;
    return new k(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      if (paramParcel1.readInt() != 0);
      for (boolean bool11 = true; ; bool11 = false)
      {
        a(bool11);
        paramParcel2.writeNoException();
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      a(paramParcel1.readString(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      b(paramParcel1.readString(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      a(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      b(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      a(paramParcel1.createStringArrayList(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      b(paramParcel1.createStringArrayList(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      a();
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      b();
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      boolean bool10 = c();
      paramParcel2.writeNoException();
      int i14 = 0;
      if (bool10)
        i14 = 1;
      paramParcel2.writeInt(i14);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      boolean bool9 = d();
      paramParcel2.writeNoException();
      int i13 = 0;
      if (bool9)
        i13 = 1;
      paramParcel2.writeInt(i13);
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      boolean bool8 = e();
      paramParcel2.writeNoException();
      int i12 = 0;
      if (bool8)
        i12 = 1;
      paramParcel2.writeInt(i12);
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      f();
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      g();
      paramParcel2.writeNoException();
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i11 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i11);
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i10 = i();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i10);
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 18:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i9 = paramParcel1.readInt();
      boolean bool7 = false;
      if (i9 != 0)
        bool7 = true;
      b(bool7);
      paramParcel2.writeNoException();
      return true;
    case 20:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      c(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 21:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i8 = j();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i8);
      return true;
    case 22:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      d(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 23:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 24:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i7 = paramParcel1.readInt();
      boolean bool6 = false;
      if (i7 != 0)
        bool6 = true;
      c(bool6);
      paramParcel2.writeNoException();
      return true;
    case 25:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i6 = paramParcel1.readInt();
      boolean bool5 = false;
      if (i6 != 0)
        bool5 = true;
      d(bool5);
      paramParcel2.writeNoException();
      return true;
    case 26:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      IBinder localIBinder5 = paramParcel1.readStrongBinder();
      Object localObject4 = null;
      if (localIBinder5 == null);
      while (true)
      {
        a((l)localObject4);
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface4 = localIBinder5.queryLocalInterface("com.google.android.youtube.player.internal.IOnFullscreenListener");
        if ((localIInterface4 != null) && ((localIInterface4 instanceof l)))
          localObject4 = (l)localIInterface4;
        else
          localObject4 = new n(localIBinder5);
      }
    case 27:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      IBinder localIBinder4 = paramParcel1.readStrongBinder();
      Object localObject3 = null;
      if (localIBinder4 == null);
      while (true)
      {
        a((u)localObject3);
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface3 = localIBinder4.queryLocalInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
        if ((localIInterface3 != null) && ((localIInterface3 instanceof u)))
          localObject3 = (u)localIInterface3;
        else
          localObject3 = new w(localIBinder4);
      }
    case 28:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      IBinder localIBinder3 = paramParcel1.readStrongBinder();
      Object localObject2 = null;
      if (localIBinder3 == null);
      while (true)
      {
        a((r)localObject2);
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface2 = localIBinder3.queryLocalInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
        if ((localIInterface2 != null) && ((localIInterface2 instanceof r)))
          localObject2 = (r)localIInterface2;
        else
          localObject2 = new t(localIBinder3);
      }
    case 29:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      IBinder localIBinder2 = paramParcel1.readStrongBinder();
      Object localObject1 = null;
      if (localIBinder2 == null);
      while (true)
      {
        a((o)localObject1);
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface1 = localIBinder2.queryLocalInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
        if ((localIInterface1 != null) && ((localIInterface1 instanceof o)))
          localObject1 = (o)localIInterface1;
        else
          localObject1 = new q(localIBinder2);
      }
    case 30:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      k();
      paramParcel2.writeNoException();
      return true;
    case 31:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      l();
      paramParcel2.writeNoException();
      return true;
    case 32:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i5 = paramParcel1.readInt();
      Configuration localConfiguration = null;
      if (i5 != 0)
        localConfiguration = (Configuration)Configuration.CREATOR.createFromParcel(paramParcel1);
      a(localConfiguration);
      paramParcel2.writeNoException();
      return true;
    case 33:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      m();
      paramParcel2.writeNoException();
      return true;
    case 34:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      n();
      paramParcel2.writeNoException();
      return true;
    case 35:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      o();
      paramParcel2.writeNoException();
      return true;
    case 36:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      p();
      paramParcel2.writeNoException();
      return true;
    case 37:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i4 = paramParcel1.readInt();
      boolean bool4 = false;
      if (i4 != 0)
        bool4 = true;
      e(bool4);
      paramParcel2.writeNoException();
      return true;
    case 38:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      q();
      paramParcel2.writeNoException();
      return true;
    case 39:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      Bundle localBundle2 = r();
      paramParcel2.writeNoException();
      if (localBundle2 != null)
      {
        paramParcel2.writeInt(1);
        localBundle2.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 40:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i2 = paramParcel1.readInt();
      Bundle localBundle1 = null;
      if (i2 != 0)
        localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      boolean bool3 = a(localBundle1);
      paramParcel2.writeNoException();
      int i3 = 0;
      if (bool3)
        i3 = 1;
      paramParcel2.writeInt(i3);
      return true;
    case 41:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int m = paramParcel1.readInt();
      int n = paramParcel1.readInt();
      KeyEvent localKeyEvent2 = null;
      if (n != 0)
        localKeyEvent2 = (KeyEvent)KeyEvent.CREATOR.createFromParcel(paramParcel1);
      boolean bool2 = a(m, localKeyEvent2);
      paramParcel2.writeNoException();
      int i1 = 0;
      if (bool2)
        i1 = 1;
      paramParcel2.writeInt(i1);
      return true;
    case 42:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
      int i = paramParcel1.readInt();
      int j = paramParcel1.readInt();
      KeyEvent localKeyEvent1 = null;
      if (j != 0)
        localKeyEvent1 = (KeyEvent)KeyEvent.CREATOR.createFromParcel(paramParcel1);
      boolean bool1 = b(i, localKeyEvent1);
      paramParcel2.writeNoException();
      int k = 0;
      if (bool1)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 43:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
    bb localbb = s();
    paramParcel2.writeNoException();
    IBinder localIBinder1 = null;
    if (localbb != null)
      localIBinder1 = localbb.asBinder();
    paramParcel2.writeStrongBinder(localIBinder1);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.j
 * JD-Core Version:    0.6.2
 */