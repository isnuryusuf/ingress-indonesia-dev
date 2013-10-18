package com.google.android.youtube.player;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalFocusChangeListener;
import com.google.android.youtube.player.internal.aw;
import java.util.Set;

final class n
  implements ViewTreeObserver.OnGlobalFocusChangeListener
{
  private n(YouTubePlayerView paramYouTubePlayerView)
  {
  }

  public final void onGlobalFocusChanged(View paramView1, View paramView2)
  {
    if ((YouTubePlayerView.d(this.a) != null) && (YouTubePlayerView.i(this.a).contains(paramView2)) && (!YouTubePlayerView.i(this.a).contains(paramView1)))
      YouTubePlayerView.d(this.a).g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.n
 * JD-Core Version:    0.6.2
 */