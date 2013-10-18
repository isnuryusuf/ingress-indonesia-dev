package com.badlogic.gdx.backends.android;

import android.media.AudioManager;
import android.media.SoundPool;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.utils.IntArray;

final class AndroidSound
  implements Sound
{
  final AudioManager manager;
  final int soundId;
  final SoundPool soundPool;
  final IntArray streamIds = new IntArray(8);

  AndroidSound(SoundPool paramSoundPool, AudioManager paramAudioManager, int paramInt)
  {
    this.soundPool = paramSoundPool;
    this.manager = paramAudioManager;
    this.soundId = paramInt;
  }

  public final void dispose()
  {
    this.soundPool.unload(this.soundId);
  }

  public final long loop()
  {
    return loop(1.0F);
  }

  public final long loop(float paramFloat)
  {
    if (this.streamIds.size == 8)
      this.streamIds.pop();
    int i = this.soundPool.play(this.soundId, paramFloat, paramFloat, 1, -1, 1.0F);
    this.streamIds.add(i);
    return i;
  }

  public final long loop(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (this.streamIds.size == 8)
      this.streamIds.pop();
    float f1;
    float f2;
    if (paramFloat3 < 0.0F)
    {
      f1 = paramFloat1 * (1.0F - Math.abs(paramFloat3));
      f2 = paramFloat1;
    }
    while (true)
    {
      int i = this.soundPool.play(this.soundId, f2, f1, 1, -1, paramFloat2);
      this.streamIds.add(i);
      return i;
      if (paramFloat3 > 0.0F)
      {
        f2 = paramFloat1 * (1.0F - Math.abs(paramFloat3));
        f1 = paramFloat1;
      }
      else
      {
        f1 = paramFloat1;
        f2 = paramFloat1;
      }
    }
  }

  public final long play()
  {
    return play(1.0F);
  }

  public final long play(float paramFloat)
  {
    if (this.streamIds.size == 8)
      this.streamIds.pop();
    int i = this.soundPool.play(this.soundId, paramFloat, paramFloat, 1, 0, 1.0F);
    this.streamIds.add(i);
    return i;
  }

  public final long play(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (this.streamIds.size == 8)
      this.streamIds.pop();
    float f1;
    float f2;
    if (paramFloat3 < 0.0F)
    {
      f1 = paramFloat1 * (1.0F - Math.abs(paramFloat3));
      f2 = paramFloat1;
    }
    while (true)
    {
      int i = this.soundPool.play(this.soundId, f2, f1, 1, 0, paramFloat2);
      this.streamIds.add(i);
      return i;
      if (paramFloat3 > 0.0F)
      {
        f2 = paramFloat1 * (1.0F - Math.abs(paramFloat3));
        f1 = paramFloat1;
      }
      else
      {
        f1 = paramFloat1;
        f2 = paramFloat1;
      }
    }
  }

  public final void setLooping(long paramLong, boolean paramBoolean)
  {
    SoundPool localSoundPool = this.soundPool;
    int i = (int)paramLong;
    if (paramBoolean);
    for (int j = -1; ; j = 0)
    {
      localSoundPool.setLoop(i, j);
      return;
    }
  }

  public final void setPan(long paramLong, float paramFloat1, float paramFloat2)
  {
    float f1;
    if (paramFloat1 < 0.0F)
    {
      float f2 = paramFloat2 * (1.0F - Math.abs(paramFloat1));
      f1 = paramFloat2;
      paramFloat2 = f2;
    }
    while (true)
    {
      this.soundPool.setVolume((int)paramLong, f1, paramFloat2);
      return;
      if (paramFloat1 > 0.0F)
        f1 = paramFloat2 * (1.0F - Math.abs(paramFloat1));
      else
        f1 = paramFloat2;
    }
  }

  public final void setPitch(long paramLong, float paramFloat)
  {
    this.soundPool.setRate((int)paramLong, paramFloat);
  }

  public final void setVolume(long paramLong, float paramFloat)
  {
    this.soundPool.setVolume((int)paramLong, paramFloat, paramFloat);
  }

  public final void stop()
  {
    int i = 0;
    int j = this.streamIds.size;
    while (i < j)
    {
      this.soundPool.stop(this.streamIds.get(i));
      i++;
    }
  }

  public final void stop(long paramLong)
  {
    this.soundPool.stop((int)paramLong);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidSound
 * JD-Core Version:    0.6.2
 */