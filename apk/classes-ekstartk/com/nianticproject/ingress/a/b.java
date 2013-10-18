package com.nianticproject.ingress.a;

import android.media.SoundPool;
import android.media.SoundPool.OnLoadCompleteListener;
import java.util.Map;

final class b
  implements SoundPool.OnLoadCompleteListener
{
  b(a parama)
  {
  }

  public final void onLoadComplete(SoundPool paramSoundPool, int paramInt1, int paramInt2)
  {
    c localc = (c)a.c(this.a).get(Integer.valueOf(paramInt1));
    if (localc != null)
    {
      if (paramInt2 == 0)
        localc.a();
    }
    else
      return;
    localc.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.b
 * JD-Core Version:    0.6.2
 */