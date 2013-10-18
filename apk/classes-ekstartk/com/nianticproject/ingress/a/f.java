package com.nianticproject.ingress.a;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.nianticproject.ingress.common.c.bk;
import com.nianticproject.ingress.common.c.bl;
import com.nianticproject.ingress.common.w.aa;

final class f
  implements MediaPlayer.OnErrorListener
{
  f(d paramd)
  {
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    String str1;
    switch (paramInt1)
    {
    default:
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt1);
      str1 = String.format("UNKNOWN(%d)", arrayOfObject2);
    case 1:
    case 100:
    }
    while (true)
    {
      Object[] arrayOfObject1 = new Object[4];
      arrayOfObject1[0] = Integer.valueOf(d.c(this.a));
      arrayOfObject1[1] = d.d(this.a);
      arrayOfObject1[2] = str1;
      arrayOfObject1[3] = Integer.valueOf(paramInt2);
      String str2 = String.format("#%d ??? onError: clip=%s what=%s extra=%d", arrayOfObject1);
      d.f().b(str2);
      this.a.d();
      if (d.b(this.a) != null)
        d.b(this.a).a(new bl(str2));
      return true;
      str1 = "MEDIA_ERROR_UNKNOWN";
      continue;
      str1 = "MEDIA_ERROR_SERVER_DIED";
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.f
 * JD-Core Version:    0.6.2
 */