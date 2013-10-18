package com.nianticproject.ingress.a;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.SoundPool;
import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.b.b;
import java.io.IOException;
import java.util.Map;

final class c
  implements Disposable
{
  private final int b;
  private boolean c;

  public c(a parama, String paramString)
  {
    try
    {
      AssetFileDescriptor localAssetFileDescriptor = a.a(parama).openFd(paramString);
      this.b = a.b(parama).load(localAssetFileDescriptor, 1);
      localAssetFileDescriptor.close();
      a.c(parama).put(Integer.valueOf(this.b), this);
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw new b(paramString);
  }

  public final void a()
  {
    this.c = true;
  }

  public final boolean b()
  {
    return this.c;
  }

  public final int c()
  {
    return this.b;
  }

  public final void dispose()
  {
    this.c = false;
    a.b(this.a).unload(this.b);
    a.c(this.a).remove(Integer.valueOf(this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.c
 * JD-Core Version:    0.6.2
 */