package com.google.android.youtube.player.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ad extends Binder
  implements ac
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
      Bitmap localBitmap;
      String str2;
      if (paramParcel1.readInt() != 0)
      {
        localBitmap = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1);
        str2 = paramParcel1.readString();
        if (paramParcel1.readInt() == 0)
          break label138;
      }
      label138: for (boolean bool3 = true; ; bool3 = false)
      {
        int j = paramParcel1.readInt();
        boolean bool4 = false;
        if (j != 0)
          bool4 = true;
        a(localBitmap, str2, bool3, bool4);
        paramParcel2.writeNoException();
        return true;
        localBitmap = null;
        break;
      }
    case 2:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
    String str1 = paramParcel1.readString();
    if (paramParcel1.readInt() != 0);
    for (boolean bool1 = true; ; bool1 = false)
    {
      int i = paramParcel1.readInt();
      boolean bool2 = false;
      if (i != 0)
        bool2 = true;
      a(str1, bool1, bool2);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.ad
 * JD-Core Version:    0.6.2
 */