package com.nianticproject.ingress.a;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.nianticproject.ingress.common.c.bk;

final class e
  implements MediaPlayer.OnCompletionListener
{
  e(d paramd)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    synchronized (d.a(this.a))
    {
      d.a(this.a, k.c);
      if (d.b(this.a) != null)
        d.b(this.a).a(null);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.e
 * JD-Core Version:    0.6.2
 */