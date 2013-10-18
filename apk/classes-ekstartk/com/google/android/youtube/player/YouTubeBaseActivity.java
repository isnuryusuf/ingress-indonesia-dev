package com.google.android.youtube.player;

import android.app.Activity;
import android.os.Bundle;

public class YouTubeBaseActivity extends Activity
{
  private b a;
  private YouTubePlayerView b;
  private int c;
  private Bundle d;

  final o a()
  {
    return this.a;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = new b(this, (byte)0);
    if (paramBundle != null);
    for (Bundle localBundle = paramBundle.getBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE"); ; localBundle = null)
    {
      this.d = localBundle;
      return;
    }
  }

  protected void onDestroy()
  {
    if (this.b != null)
      this.b.a(isFinishing());
    super.onDestroy();
  }

  protected void onPause()
  {
    this.c = 1;
    if (this.b != null)
      this.b.c();
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    this.c = 2;
    if (this.b != null)
      this.b.b();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.b != null);
    for (Bundle localBundle = this.b.e(); ; localBundle = this.d)
    {
      paramBundle.putBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE", localBundle);
      return;
    }
  }

  protected void onStart()
  {
    super.onStart();
    this.c = 1;
    if (this.b != null)
      this.b.a();
  }

  protected void onStop()
  {
    this.c = 0;
    if (this.b != null)
      this.b.d();
    super.onStop();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.YouTubeBaseActivity
 * JD-Core Version:    0.6.2
 */