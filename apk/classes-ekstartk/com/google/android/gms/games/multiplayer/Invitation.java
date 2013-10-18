package com.google.android.gms.games.multiplayer;

import android.os.Parcelable;
import com.google.android.gms.common.a.a;
import com.google.android.gms.games.Game;

public abstract interface Invitation extends Parcelable, a<Invitation>, c
{
  public abstract Game b();

  public abstract String c();

  public abstract Participant d();

  public abstract long e();

  public abstract int f();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.Invitation
 * JD-Core Version:    0.6.2
 */