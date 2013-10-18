package com.google.android.youtube.player;

final class b
  implements o
{
  private b(YouTubeBaseActivity paramYouTubeBaseActivity)
  {
  }

  public final void a(YouTubePlayerView paramYouTubePlayerView)
  {
    if ((YouTubeBaseActivity.a(this.a) != null) && (YouTubeBaseActivity.a(this.a) != paramYouTubePlayerView))
      YouTubeBaseActivity.a(this.a).b(true);
    YouTubeBaseActivity.a(this.a, paramYouTubePlayerView);
    if (YouTubeBaseActivity.b(this.a) > 0)
      paramYouTubePlayerView.a();
    if (YouTubeBaseActivity.b(this.a) >= 2)
      paramYouTubePlayerView.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.b
 * JD-Core Version:    0.6.2
 */