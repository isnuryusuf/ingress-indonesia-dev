package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;
import java.util.Arrays;

public final class PlayerEntity
  implements Player
{
  public static final Parcelable.Creator<PlayerEntity> CREATOR = new b();
  private final String a;
  private final String b;
  private final Uri c;
  private final Uri d;
  private final long e;

  public PlayerEntity(Player paramPlayer)
  {
    this.a = paramPlayer.b();
    this.b = paramPlayer.c();
    this.c = paramPlayer.d();
    this.d = paramPlayer.e();
    this.e = paramPlayer.f();
    fj.a(this.a);
    fj.a(this.b);
    if (this.e > 0L);
    for (int i = 1; i == 0; i = 0)
      throw new IllegalStateException();
  }

  private PlayerEntity(String paramString1, String paramString2, Uri paramUri1, Uri paramUri2, long paramLong)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramUri1;
    this.d = paramUri2;
    this.e = paramLong;
  }

  public static int a(Player paramPlayer)
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = paramPlayer.b();
    arrayOfObject[1] = paramPlayer.c();
    arrayOfObject[2] = paramPlayer.d();
    arrayOfObject[3] = paramPlayer.e();
    arrayOfObject[4] = Long.valueOf(paramPlayer.f());
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Player paramPlayer, Object paramObject)
  {
    if (!(paramObject instanceof Player));
    Player localPlayer;
    do
    {
      return false;
      if (paramPlayer == paramObject)
        return true;
      localPlayer = (Player)paramObject;
    }
    while ((!ge.a(localPlayer.b(), paramPlayer.b())) || (!ge.a(localPlayer.c(), paramPlayer.c())) || (!ge.a(localPlayer.d(), paramPlayer.d())) || (!ge.a(localPlayer.e(), paramPlayer.e())) || (!ge.a(Long.valueOf(localPlayer.f()), Long.valueOf(paramPlayer.f()))));
    return true;
  }

  public static String b(Player paramPlayer)
  {
    return ge.a(paramPlayer).a("PlayerId", paramPlayer.b()).a("DisplayName", paramPlayer.c()).a("IconImageUri", paramPlayer.d()).a("HiResImageUri", paramPlayer.e()).a("RetrievedTimestamp", Long.valueOf(paramPlayer.f())).toString();
  }

  public final String b()
  {
    return this.a;
  }

  public final String c()
  {
    return this.b;
  }

  public final Uri d()
  {
    return this.c;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final Uri e()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final long f()
  {
    return this.e;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    String str1;
    String str2;
    if (this.c == null)
    {
      str1 = null;
      paramParcel.writeString(str1);
      Uri localUri = this.d;
      str2 = null;
      if (localUri != null)
        break label70;
    }
    while (true)
    {
      paramParcel.writeString(str2);
      paramParcel.writeLong(this.e);
      return;
      str1 = this.c.toString();
      break;
      label70: str2 = this.d.toString();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.PlayerEntity
 * JD-Core Version:    0.6.2
 */