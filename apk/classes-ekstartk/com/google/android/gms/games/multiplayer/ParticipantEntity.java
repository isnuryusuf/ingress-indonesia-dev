package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;
import java.util.Arrays;

public final class ParticipantEntity
  implements Parcelable, Participant
{
  public static final Parcelable.Creator<ParticipantEntity> CREATOR = new b();
  private final PlayerEntity a;
  private final String b;
  private final String c;
  private final Uri d;
  private final Uri e;
  private final int f;
  private final String g;
  private final boolean h;

  public ParticipantEntity(Participant paramParticipant)
  {
    Player localPlayer = paramParticipant.i();
    if (localPlayer == null);
    for (PlayerEntity localPlayerEntity = null; ; localPlayerEntity = new PlayerEntity(localPlayer))
    {
      this.a = localPlayerEntity;
      this.b = paramParticipant.h();
      this.c = paramParticipant.e();
      this.d = paramParticipant.f();
      this.e = paramParticipant.g();
      this.f = paramParticipant.b();
      this.g = paramParticipant.c();
      this.h = paramParticipant.d();
      return;
    }
  }

  private ParticipantEntity(String paramString1, String paramString2, Uri paramUri1, Uri paramUri2, int paramInt, String paramString3, boolean paramBoolean, PlayerEntity paramPlayerEntity)
  {
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramUri1;
    this.e = paramUri2;
    this.f = paramInt;
    this.g = paramString3;
    this.h = paramBoolean;
    this.a = paramPlayerEntity;
  }

  public static int a(Participant paramParticipant)
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = paramParticipant.i();
    arrayOfObject[1] = Integer.valueOf(paramParticipant.b());
    arrayOfObject[2] = paramParticipant.c();
    arrayOfObject[3] = Boolean.valueOf(paramParticipant.d());
    arrayOfObject[4] = paramParticipant.e();
    arrayOfObject[5] = paramParticipant.f();
    arrayOfObject[6] = paramParticipant.g();
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Participant paramParticipant, Object paramObject)
  {
    if (!(paramObject instanceof Participant));
    Participant localParticipant;
    do
    {
      return false;
      if (paramParticipant == paramObject)
        return true;
      localParticipant = (Participant)paramObject;
    }
    while ((!ge.a(localParticipant.i(), paramParticipant.i())) || (!ge.a(Integer.valueOf(localParticipant.b()), Integer.valueOf(paramParticipant.b()))) || (!ge.a(localParticipant.c(), paramParticipant.c())) || (!ge.a(Boolean.valueOf(localParticipant.d()), Boolean.valueOf(paramParticipant.d()))) || (!ge.a(localParticipant.e(), paramParticipant.e())) || (!ge.a(localParticipant.f(), paramParticipant.f())) || (!ge.a(localParticipant.g(), paramParticipant.g())));
    return true;
  }

  public static String b(Participant paramParticipant)
  {
    return ge.a(paramParticipant).a("Player", paramParticipant.i()).a("Status", Integer.valueOf(paramParticipant.b())).a("ClientAddress", paramParticipant.c()).a("ConnectedToRoom", Boolean.valueOf(paramParticipant.d())).a("DisplayName", paramParticipant.e()).a("IconImage", paramParticipant.f()).a("HiResImage", paramParticipant.g()).toString();
  }

  public final int b()
  {
    return this.f;
  }

  public final String c()
  {
    return this.g;
  }

  public final boolean d()
  {
    return this.h;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    if (this.a == null)
      return this.c;
    return this.a.c();
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final Uri f()
  {
    if (this.a == null)
      return this.d;
    return this.a.d();
  }

  public final Uri g()
  {
    if (this.a == null)
      return this.e;
    return this.a.e();
  }

  public final String h()
  {
    return this.b;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final Player i()
  {
    return this.a;
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    String str1;
    String str2;
    label44: int i;
    label76: int j;
    if (this.d == null)
    {
      str1 = null;
      paramParcel.writeString(str1);
      Uri localUri = this.e;
      str2 = null;
      if (localUri != null)
        break label130;
      paramParcel.writeString(str2);
      paramParcel.writeInt(this.f);
      paramParcel.writeString(this.g);
      if (!this.h)
        break label142;
      i = 1;
      paramParcel.writeInt(i);
      PlayerEntity localPlayerEntity = this.a;
      j = 0;
      if (localPlayerEntity != null)
        break label148;
    }
    while (true)
    {
      paramParcel.writeInt(j);
      if (this.a != null)
        this.a.writeToParcel(paramParcel, paramInt);
      return;
      str1 = this.d.toString();
      break;
      label130: str2 = this.e.toString();
      break label44;
      label142: i = 0;
      break label76;
      label148: j = 1;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.ParticipantEntity
 * JD-Core Version:    0.6.2
 */