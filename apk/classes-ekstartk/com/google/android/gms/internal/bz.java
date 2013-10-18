package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import java.util.ArrayList;

public final class bz extends ff
  implements Room
{
  private final int c;

  private Room j()
  {
    return new RoomEntity(this);
  }

  public final String b()
  {
    return d("external_match_id");
  }

  public final String c()
  {
    return d("creator_external");
  }

  public final long d()
  {
    return a("creation_timestamp");
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int e()
  {
    return b("status");
  }

  public final boolean equals(Object paramObject)
  {
    return RoomEntity.a(this, paramObject);
  }

  public final String f()
  {
    return d("description");
  }

  public final ArrayList<Participant> g()
  {
    ArrayList localArrayList = new ArrayList(this.c);
    for (int i = 0; i < this.c; i++)
      localArrayList.add(new bx(this.a, i + this.b));
    return localArrayList;
  }

  public final int h()
  {
    return b("variant");
  }

  public final int hashCode()
  {
    return RoomEntity.a(this);
  }

  public final Bundle i()
  {
    if (!c("has_automatch_criteria"))
      return null;
    int i = b("automatch_min_players");
    int j = b("automatch_max_players");
    long l = a("automatch_bit_mask");
    Bundle localBundle = new Bundle();
    localBundle.putInt("min_automatch_players", i);
    localBundle.putInt("max_automatch_players", j);
    localBundle.putLong("exclusive_bit_mask", l);
    return localBundle;
  }

  public final String toString()
  {
    return RoomEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((RoomEntity)j()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bz
 * JD-Core Version:    0.6.2
 */