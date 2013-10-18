package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.a.a;
import com.google.android.gms.games.multiplayer.c;

public abstract interface Room extends Parcelable, a<Room>, c
{
  public abstract String b();

  public abstract String c();

  public abstract long d();

  public abstract int e();

  public abstract String f();

  public abstract int h();

  public abstract Bundle i();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.Room
 * JD-Core Version:    0.6.2
 */