package com.google.android.youtube.player;

import android.app.Activity;
import com.google.android.youtube.player.internal.am;
import com.google.android.youtube.player.internal.aw;
import com.google.android.youtube.player.internal.az;

final class l
  implements az
{
  l(YouTubePlayerView paramYouTubePlayerView, Activity paramActivity)
  {
  }

  public final void a()
  {
    if (YouTubePlayerView.a(this.b) != null)
      YouTubePlayerView.a(this.b, this.a);
    YouTubePlayerView.b(this.b);
  }

  public final void b()
  {
    if ((!YouTubePlayerView.c(this.b)) && (YouTubePlayerView.d(this.b) != null))
      YouTubePlayerView.d(this.b).f();
    YouTubePlayerView.e(this.b).a();
    if (this.b.indexOfChild(YouTubePlayerView.e(this.b)) < 0)
    {
      this.b.addView(YouTubePlayerView.e(this.b));
      this.b.removeView(YouTubePlayerView.f(this.b));
    }
    YouTubePlayerView.g(this.b);
    YouTubePlayerView.h(this.b);
    YouTubePlayerView.b(this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.l
 * JD-Core Version:    0.6.2
 */