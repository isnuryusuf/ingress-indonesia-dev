package com.google.android.youtube.player;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.youtube.player.internal.c;

public class YouTubePlayerSupportFragment extends Fragment
  implements j
{
  private final k a = new k(this, (byte)0);
  private Bundle b;
  private YouTubePlayerView c;
  private String d;
  private h e;

  private void b()
  {
    if ((this.c != null) && (this.e != null))
    {
      this.c.a(i(), this, this.d, this.e, this.b);
      this.b = null;
      this.e = null;
    }
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.c = new YouTubePlayerView(i(), null, 0, this.a);
    b();
    return this.c;
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (paramBundle != null);
    for (Bundle localBundle = paramBundle.getBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE"); ; localBundle = null)
    {
      this.b = localBundle;
      return;
    }
  }

  public final void a(String paramString, h paramh)
  {
    this.d = c.a(paramString, "Developer key cannot be null or empty");
    this.e = paramh;
    b();
  }

  public final void c()
  {
    super.c();
    this.c.a();
  }

  public final void d()
  {
    this.c.d();
    super.d();
  }

  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    if (this.c != null);
    for (Bundle localBundle = this.c.e(); ; localBundle = this.b)
    {
      paramBundle.putBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE", localBundle);
      return;
    }
  }

  public final void e()
  {
    this.c.b(i().isFinishing());
    this.c = null;
    super.e();
  }

  public final void q()
  {
    super.q();
    this.c.b();
  }

  public final void r()
  {
    this.c.c();
    super.r();
  }

  public final void s()
  {
    YouTubePlayerView localYouTubePlayerView;
    if (this.c != null)
    {
      FragmentActivity localFragmentActivity = i();
      localYouTubePlayerView = this.c;
      if ((localFragmentActivity != null) && (!localFragmentActivity.isFinishing()))
        break label40;
    }
    label40: for (boolean bool = true; ; bool = false)
    {
      localYouTubePlayerView.a(bool);
      super.s();
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayerSupportFragment
 * JD-Core Version:    0.6.2
 */