package com.badlogic.gdx.backends.android;

import android.media.MediaPlayer;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Music;
import java.io.IOException;
import java.util.List;

public class AndroidMusic
  implements Music
{
  private final AndroidAudio audio;
  private boolean isPrepared = true;
  private MediaPlayer player;
  protected boolean wasPlaying = false;

  AndroidMusic(AndroidAudio paramAndroidAudio, MediaPlayer paramMediaPlayer)
  {
    this.audio = paramAndroidAudio;
    this.player = paramMediaPlayer;
  }

  public void dispose()
  {
    if (this.player == null)
      return;
    try
    {
      if (this.player.isPlaying())
        this.player.stop();
      this.player.release();
      this.player = null;
      synchronized (this.audio.musics)
      {
        this.audio.musics.remove(this);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      Gdx.app.log("AndroidMusic", "error while disposing AndroidMusic instance, non-fatal");
      this.player = null;
      synchronized (this.audio.musics)
      {
        this.audio.musics.remove(this);
        return;
      }
    }
    finally
    {
      this.player = null;
      synchronized (this.audio.musics)
      {
        this.audio.musics.remove(this);
        throw localObject1;
      }
    }
  }

  public float getPosition()
  {
    return this.player.getCurrentPosition() / 1000.0F;
  }

  public boolean isLooping()
  {
    return this.player.isLooping();
  }

  public boolean isPlaying()
  {
    return this.player.isPlaying();
  }

  public void pause()
  {
    if (this.player.isPlaying())
      this.player.pause();
  }

  public void play()
  {
    if (this.player.isPlaying())
      return;
    try
    {
      if (!this.isPrepared)
      {
        this.player.prepare();
        this.isPrepared = true;
      }
      this.player.start();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public void setLooping(boolean paramBoolean)
  {
    this.player.setLooping(paramBoolean);
  }

  public void setVolume(float paramFloat)
  {
    this.player.setVolume(paramFloat, paramFloat);
  }

  public void stop()
  {
    if (this.isPrepared)
      this.player.seekTo(0);
    this.player.stop();
    this.isPrepared = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidMusic
 * JD-Core Version:    0.6.2
 */