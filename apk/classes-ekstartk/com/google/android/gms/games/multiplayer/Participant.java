package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.a.a;
import com.google.android.gms.games.Player;

public abstract interface Participant extends Parcelable, a<Participant>
{
  public abstract int b();

  public abstract String c();

  public abstract boolean d();

  public abstract String e();

  public abstract Uri f();

  public abstract Uri g();

  public abstract String h();

  public abstract Player i();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.Participant
 * JD-Core Version:    0.6.2
 */