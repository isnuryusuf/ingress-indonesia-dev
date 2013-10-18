package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;
import com.google.android.gms.internal.gg;
import java.util.ArrayList;
import java.util.Arrays;

public final class InvitationEntity
  implements Invitation
{
  public static final Parcelable.Creator<InvitationEntity> CREATOR = new a();
  private final GameEntity a;
  private final String b;
  private final long c;
  private final int d;
  private final Participant e;
  private final ArrayList<Participant> f;

  private InvitationEntity(GameEntity paramGameEntity, String paramString, long paramLong, int paramInt, Participant paramParticipant, ArrayList<Participant> paramArrayList)
  {
    this.a = paramGameEntity;
    this.b = paramString;
    this.c = paramLong;
    this.d = paramInt;
    this.e = paramParticipant;
    this.f = paramArrayList;
  }

  public InvitationEntity(Invitation paramInvitation)
  {
    this.a = new GameEntity(paramInvitation.b());
    this.b = paramInvitation.c();
    this.c = paramInvitation.e();
    this.d = paramInvitation.f();
    String str = paramInvitation.d().h();
    Object localObject = null;
    ArrayList localArrayList = paramInvitation.g();
    int i = localArrayList.size();
    this.f = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      Participant localParticipant = (Participant)localArrayList.get(j);
      if (localParticipant.h().equals(str))
        localObject = localParticipant;
      this.f.add(localParticipant.a());
    }
    gg.a(localObject, "Must have a valid inviter!");
    this.e = ((Participant)localObject.a());
  }

  public static int a(Invitation paramInvitation)
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = paramInvitation.b();
    arrayOfObject[1] = paramInvitation.c();
    arrayOfObject[2] = Long.valueOf(paramInvitation.e());
    arrayOfObject[3] = Integer.valueOf(paramInvitation.f());
    arrayOfObject[4] = paramInvitation.d();
    arrayOfObject[5] = paramInvitation.g();
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Invitation paramInvitation, Object paramObject)
  {
    if (!(paramObject instanceof Invitation));
    Invitation localInvitation;
    do
    {
      return false;
      if (paramInvitation == paramObject)
        return true;
      localInvitation = (Invitation)paramObject;
    }
    while ((!ge.a(localInvitation.b(), paramInvitation.b())) || (!ge.a(localInvitation.c(), paramInvitation.c())) || (!ge.a(Long.valueOf(localInvitation.e()), Long.valueOf(paramInvitation.e()))) || (!ge.a(Integer.valueOf(localInvitation.f()), Integer.valueOf(paramInvitation.f()))) || (!ge.a(localInvitation.d(), paramInvitation.d())) || (!ge.a(localInvitation.g(), paramInvitation.g())));
    return true;
  }

  public static String b(Invitation paramInvitation)
  {
    return ge.a(paramInvitation).a("Game", paramInvitation.b()).a("InvitationId", paramInvitation.c()).a("CreationTimestamp", Long.valueOf(paramInvitation.e())).a("InvitationType", Integer.valueOf(paramInvitation.f())).a("Inviter", paramInvitation.d()).a("Participants", paramInvitation.g()).toString();
  }

  public final Game b()
  {
    return this.a;
  }

  public final String c()
  {
    return this.b;
  }

  public final Participant d()
  {
    return this.e;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final long e()
  {
    return this.c;
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final int f()
  {
    return this.d;
  }

  public final ArrayList<Participant> g()
  {
    return this.f;
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
    this.a.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.b);
    paramParcel.writeLong(this.c);
    paramParcel.writeInt(this.d);
    this.e.writeToParcel(paramParcel, paramInt);
    int i = this.f.size();
    paramParcel.writeInt(i);
    for (int j = 0; j < i; j++)
      ((Participant)this.f.get(j)).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.InvitationEntity
 * JD-Core Version:    0.6.2
 */