package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;

public final class bw extends ff
  implements Invitation
{
  private final Game c;
  private final bx d;
  private final ArrayList<Participant> e;

  private Invitation h()
  {
    return new InvitationEntity(this);
  }

  public final Game b()
  {
    return this.c;
  }

  public final String c()
  {
    return d("external_invitation_id");
  }

  public final Participant d()
  {
    return this.d;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final long e()
  {
    return a("creation_timestamp");
  }

  public final boolean equals(Object paramObject)
  {
    return InvitationEntity.a(this, paramObject);
  }

  public final int f()
  {
    return b("type");
  }

  public final ArrayList<Participant> g()
  {
    return this.e;
  }

  public final int hashCode()
  {
    return InvitationEntity.a(this);
  }

  public final String toString()
  {
    return InvitationEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((InvitationEntity)h()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bw
 * JD-Core Version:    0.6.2
 */