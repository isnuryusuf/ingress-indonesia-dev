package com.badlogic.gdx.backends.android;

import android.media.AudioTrack;
import com.badlogic.gdx.audio.AudioDevice;

class AndroidAudioDevice
  implements AudioDevice
{
  private short[] buffer = new short[1024];
  private final boolean isMono;
  private final int latency;
  private final AudioTrack track;

  AndroidAudioDevice(int paramInt, boolean paramBoolean)
  {
    this.isMono = paramBoolean;
    int j;
    int k;
    int m;
    if (paramBoolean)
    {
      j = 2;
      k = AudioTrack.getMinBufferSize(paramInt, j, 2);
      if (!paramBoolean)
        break label88;
      m = 2;
      label43: this.track = new AudioTrack(3, paramInt, m, 2, k, i);
      this.track.play();
      if (!paramBoolean)
        break label94;
    }
    while (true)
    {
      this.latency = (k / i);
      return;
      j = 3;
      break;
      label88: m = 3;
      break label43;
      label94: i = 2;
    }
  }

  public void dispose()
  {
    this.track.stop();
    this.track.release();
  }

  public int getLatency()
  {
    return this.latency;
  }

  public boolean isMono()
  {
    return this.isMono;
  }

  public void setVolume(float paramFloat)
  {
    this.track.setStereoVolume(paramFloat, paramFloat);
  }

  public void writeSamples(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if (this.buffer.length < paramArrayOfFloat.length)
      this.buffer = new short[paramArrayOfFloat.length];
    int i = paramInt1 + paramInt2;
    for (int j = 0; paramInt1 < i; j++)
    {
      float f = paramArrayOfFloat[paramInt1];
      if (f > 1.0F)
        f = 1.0F;
      if (f < -1.0F)
        f = -1.0F;
      int m = (short)(int)(f * 32767.0F);
      this.buffer[j] = m;
      paramInt1++;
    }
    int k = this.track.write(this.buffer, 0, paramInt2);
    while (k != paramInt2)
      k += this.track.write(this.buffer, k, paramInt2 - k);
  }

  public void writeSamples(short[] paramArrayOfShort, int paramInt1, int paramInt2)
  {
    int i = this.track.write(paramArrayOfShort, paramInt1, paramInt2);
    while (i != paramInt2)
      i += this.track.write(paramArrayOfShort, paramInt1 + i, paramInt2 - i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidAudioDevice
 * JD-Core Version:    0.6.2
 */