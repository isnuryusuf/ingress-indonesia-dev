package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;

public final class bf extends ff
  implements Game
{
  private Game q()
  {
    return new GameEntity(this);
  }

  public final String b()
  {
    return d("external_game_id");
  }

  public final String c()
  {
    return d("display_name");
  }

  public final String d()
  {
    return d("primary_category");
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    return d("secondary_category");
  }

  public final boolean equals(Object paramObject)
  {
    return GameEntity.a(this, paramObject);
  }

  public final String f()
  {
    return d("game_description");
  }

  public final String g()
  {
    return d("developer_name");
  }

  public final Uri h()
  {
    return e("game_icon_image_uri");
  }

  public final int hashCode()
  {
    return GameEntity.a(this);
  }

  public final Uri i()
  {
    return e("game_hi_res_image_uri");
  }

  public final Uri j()
  {
    return e("featured_image_uri");
  }

  public final boolean k()
  {
    return c("play_enabled_game");
  }

  public final boolean l()
  {
    return b("installed") > 0;
  }

  public final String m()
  {
    return d("package_name");
  }

  public final int n()
  {
    return b("gameplay_acl_status");
  }

  public final int o()
  {
    return b("achievement_total_count");
  }

  public final int p()
  {
    return b("leaderboard_count");
  }

  public final String toString()
  {
    return GameEntity.b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((GameEntity)q()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bf
 * JD-Core Version:    0.6.2
 */