package com.badlogic.gdx.backends.android;

import android.media.AudioRecord;
import com.badlogic.gdx.audio.AudioRecorder;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class AndroidAudioRecorder
  implements AudioRecorder
{
  private AudioRecord recorder;

  public AndroidAudioRecorder(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 16; ; i = 12)
    {
      this.recorder = new AudioRecord(1, paramInt, i, 2, AudioRecord.getMinBufferSize(paramInt, i, 2));
      if (this.recorder.getState() == 1)
        break;
      throw new GdxRuntimeException("Unable to initialize AudioRecorder.\nDo you have the RECORD_AUDIO permission?");
    }
    this.recorder.startRecording();
  }

  public void dispose()
  {
    this.recorder.stop();
    this.recorder.release();
  }

  public void read(short[] paramArrayOfShort, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i != paramInt2)
      i += this.recorder.read(paramArrayOfShort, paramInt1 + i, paramInt2 - i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidAudioRecorder
 * JD-Core Version:    0.6.2
 */