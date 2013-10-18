package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;

public final class bx extends ff
  implements Participant
{
  private final bg c;

  public bx(k paramk, int paramInt)
  {
    super(paramk, paramInt);
    this.c = new bg(paramk, paramInt);
  }

  private Participant j()
  {
    return new ParticipantEntity(this);
  }

  public final int b()
  {
    return b("player_status");
  }

  public final String c()
  {
    return d("client_address");
  }

  public final boolean d()
  {
    return b("connected") > 0;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    if (f("external_player_id"))
      return d("default_display_name");
    return this.c.c();
  }

  public final boolean equals(Object paramObject)
  {
    return ParticipantEntity.a(this, paramObject);
  }

  public final Uri f()
  {
    if (f("external_player_id"))
      return e("default_display_image_uri");
    return this.c.d();
  }

  public final Uri g()
  {
    if (f("external_player_id"))
      return null;
    return this.c.e();
  }

  public final String h()
  {
    return d("external_participant_id");
  }

  public final int hashCode()
  {
    return ParticipantEntity.a(this);
  }

  public final Player i()
  {
    if (f("external_player_id"))
      return null;
    return this.c;
  }

  public final String toString()
  {
    return ParticipantEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((ParticipantEntity)j()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bx
 * JD-Core Version:    0.6.2
 */