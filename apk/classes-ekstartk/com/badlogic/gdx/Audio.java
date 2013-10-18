package com.badlogic.gdx;

import com.badlogic.gdx.audio.AudioDevice;
import com.badlogic.gdx.audio.AudioRecorder;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;

public abstract interface Audio
{
  public abstract AudioDevice newAudioDevice(int paramInt, boolean paramBoolean);

  public abstract AudioRecorder newAudioRecorder(int paramInt, boolean paramBoolean);

  public abstract Music newMusic(FileHandle paramFileHandle);

  public abstract Sound newSound(FileHandle paramFileHandle);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Audio
 * JD-Core Version:    0.6.2
 */