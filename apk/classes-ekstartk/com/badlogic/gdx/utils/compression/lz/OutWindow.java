package com.badlogic.gdx.utils.compression.lz;

import java.io.OutputStream;

public class OutWindow
{
  byte[] _buffer;
  int _pos;
  OutputStream _stream;
  int _streamPos;
  int _windowSize = 0;

  public void CopyBlock(int paramInt1, int paramInt2)
  {
    int i = -1 + (this._pos - paramInt1);
    if (i < 0)
      i += this._windowSize;
    while (paramInt2 != 0)
    {
      if (i >= this._windowSize)
        i = 0;
      byte[] arrayOfByte1 = this._buffer;
      int j = this._pos;
      this._pos = (j + 1);
      byte[] arrayOfByte2 = this._buffer;
      int k = i + 1;
      arrayOfByte1[j] = arrayOfByte2[i];
      if (this._pos >= this._windowSize)
        Flush();
      paramInt2--;
      i = k;
    }
  }

  public void Create(int paramInt)
  {
    if ((this._buffer == null) || (this._windowSize != paramInt))
      this._buffer = new byte[paramInt];
    this._windowSize = paramInt;
    this._pos = 0;
    this._streamPos = 0;
  }

  public void Flush()
  {
    int i = this._pos - this._streamPos;
    if (i == 0)
      return;
    this._stream.write(this._buffer, this._streamPos, i);
    if (this._pos >= this._windowSize)
      this._pos = 0;
    this._streamPos = this._pos;
  }

  public byte GetByte(int paramInt)
  {
    int i = -1 + (this._pos - paramInt);
    if (i < 0)
      i += this._windowSize;
    return this._buffer[i];
  }

  public void Init(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this._streamPos = 0;
      this._pos = 0;
    }
  }

  public void PutByte(byte paramByte)
  {
    byte[] arrayOfByte = this._buffer;
    int i = this._pos;
    this._pos = (i + 1);
    arrayOfByte[i] = paramByte;
    if (this._pos >= this._windowSize)
      Flush();
  }

  public void ReleaseStream()
  {
    Flush();
    this._stream = null;
  }

  public void SetStream(OutputStream paramOutputStream)
  {
    ReleaseStream();
    this._stream = paramOutputStream;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lz.OutWindow
 * JD-Core Version:    0.6.2
 */