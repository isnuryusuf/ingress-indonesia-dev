package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.SoundPool;
import com.badlogic.gdx.Audio;
import com.badlogic.gdx.Files.FileType;
import com.badlogic.gdx.audio.AudioDevice;
import com.badlogic.gdx.audio.AudioRecorder;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class AndroidAudio
  implements Audio
{
  private final AudioManager manager;
  protected final List<AndroidMusic> musics = new ArrayList();
  private SoundPool soundPool;

  public AndroidAudio(Activity paramActivity, AndroidApplicationConfiguration paramAndroidApplicationConfiguration)
  {
    this.manager = ((AudioManager)paramActivity.getSystemService("audio"));
    paramActivity.setVolumeControlStream(3);
  }

  public final void dispose()
  {
    synchronized (this.musics)
    {
      Iterator localIterator = new ArrayList(this.musics).iterator();
      if (localIterator.hasNext())
        ((AndroidMusic)localIterator.next()).dispose();
    }
    if (this.soundPool != null)
      this.soundPool.release();
  }

  public final AudioDevice newAudioDevice(int paramInt, boolean paramBoolean)
  {
    return new AndroidAudioDevice(paramInt, paramBoolean);
  }

  public final AudioRecorder newAudioRecorder(int paramInt, boolean paramBoolean)
  {
    return new AndroidAudioRecorder(paramInt, paramBoolean);
  }

  public final Music newMusic(FileHandle paramFileHandle)
  {
    AndroidFileHandle localAndroidFileHandle = (AndroidFileHandle)paramFileHandle;
    MediaPlayer localMediaPlayer = new MediaPlayer();
    if (localAndroidFileHandle.type() == Files.FileType.Internal)
      try
      {
        AssetFileDescriptor localAssetFileDescriptor = localAndroidFileHandle.assets.openFd(localAndroidFileHandle.path());
        localMediaPlayer.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
        localAssetFileDescriptor.close();
        localMediaPlayer.prepare();
        AndroidMusic localAndroidMusic2 = new AndroidMusic(this, localMediaPlayer);
        synchronized (this.musics)
        {
          this.musics.add(localAndroidMusic2);
          return localAndroidMusic2;
        }
      }
      catch (Exception localException2)
      {
        throw new GdxRuntimeException("Error loading audio file: " + paramFileHandle + "\nNote: Internal audio files must be placed in the assets directory.", localException2);
      }
    try
    {
      localMediaPlayer.setDataSource(localAndroidFileHandle.file().getPath());
      localMediaPlayer.prepare();
      AndroidMusic localAndroidMusic1 = new AndroidMusic(this, localMediaPlayer);
      synchronized (this.musics)
      {
        this.musics.add(localAndroidMusic1);
        return localAndroidMusic1;
      }
    }
    catch (Exception localException1)
    {
      throw new GdxRuntimeException("Error loading audio file: " + paramFileHandle, localException1);
    }
  }

  public final Sound newSound(FileHandle paramFileHandle)
  {
    if (this.soundPool == null)
      return null;
    AndroidFileHandle localAndroidFileHandle = (AndroidFileHandle)paramFileHandle;
    if (localAndroidFileHandle.type() == Files.FileType.Internal)
      try
      {
        AssetFileDescriptor localAssetFileDescriptor = localAndroidFileHandle.assets.openFd(localAndroidFileHandle.path());
        AndroidSound localAndroidSound2 = new AndroidSound(this.soundPool, this.manager, this.soundPool.load(localAssetFileDescriptor, 1));
        localAssetFileDescriptor.close();
        return localAndroidSound2;
      }
      catch (IOException localIOException)
      {
        throw new GdxRuntimeException("Error loading audio file: " + paramFileHandle + "\nNote: Internal audio files must be placed in the assets directory.", localIOException);
      }
    try
    {
      AndroidSound localAndroidSound1 = new AndroidSound(this.soundPool, this.manager, this.soundPool.load(localAndroidFileHandle.file().getPath(), 1));
      return localAndroidSound1;
    }
    catch (Exception localException)
    {
      throw new GdxRuntimeException("Error loading audio file: " + paramFileHandle, localException);
    }
  }

  protected final void pause()
  {
    while (true)
    {
      AndroidMusic localAndroidMusic;
      synchronized (this.musics)
      {
        Iterator localIterator = this.musics.iterator();
        if (!localIterator.hasNext())
          break;
        localAndroidMusic = (AndroidMusic)localIterator.next();
        if (localAndroidMusic.isPlaying())
        {
          localAndroidMusic.wasPlaying = true;
          localAndroidMusic.pause();
        }
      }
      localAndroidMusic.wasPlaying = false;
    }
  }

  protected final void resume()
  {
    List localList = this.musics;
    for (int i = 0; ; i++)
      try
      {
        if (i < this.musics.size())
        {
          if (((AndroidMusic)this.musics.get(i)).wasPlaying == true)
            ((AndroidMusic)this.musics.get(i)).play();
        }
        else
          return;
      }
      finally
      {
      }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidAudio
 * JD-Core Version:    0.6.2
 */