package com.badlogic.gdx.utils.compression.lz;

import java.io.InputStream;

public class InWindow
{
  public int _blockSize;
  public byte[] _bufferBase;
  public int _bufferOffset;
  int _keepSizeAfter;
  int _keepSizeBefore;
  int _pointerToLastSafePosition;
  public int _pos;
  int _posLimit;
  InputStream _stream;
  boolean _streamEndWasReached;
  public int _streamPos;

  public void Create(int paramInt1, int paramInt2, int paramInt3)
  {
    this._keepSizeBefore = paramInt1;
    this._keepSizeAfter = paramInt2;
    int i = paramInt3 + (paramInt1 + paramInt2);
    if ((this._bufferBase == null) || (this._blockSize != i))
    {
      Free();
      this._blockSize = i;
      this._bufferBase = new byte[this._blockSize];
    }
    this._pointerToLastSafePosition = (this._blockSize - paramInt2);
  }

  void Free()
  {
    this._bufferBase = null;
  }

  public byte GetIndexByte(int paramInt)
  {
    return this._bufferBase[(paramInt + (this._bufferOffset + this._pos))];
  }

  public int GetMatchLen(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((this._streamEndWasReached) && (paramInt3 + (paramInt1 + this._pos) > this._streamPos))
      paramInt3 = this._streamPos - (paramInt1 + this._pos);
    int i = paramInt2 + 1;
    int j = paramInt1 + (this._bufferOffset + this._pos);
    for (int k = 0; (k < paramInt3) && (this._bufferBase[(j + k)] == this._bufferBase[(j + k - i)]); k++);
    return k;
  }

  public int GetNumAvailableBytes()
  {
    return this._streamPos - this._pos;
  }

  public void Init()
  {
    this._bufferOffset = 0;
    this._pos = 0;
    this._streamPos = 0;
    this._streamEndWasReached = false;
    ReadBlock();
  }

  public void MoveBlock()
  {
    int i = this._bufferOffset + this._pos - this._keepSizeBefore;
    if (i > 0)
      i--;
    int j = this._bufferOffset + this._streamPos - i;
    for (int k = 0; k < j; k++)
      this._bufferBase[k] = this._bufferBase[(i + k)];
    this._bufferOffset -= i;
  }

  public void MovePos()
  {
    this._pos = (1 + this._pos);
    if (this._pos > this._posLimit)
    {
      if (this._bufferOffset + this._pos > this._pointerToLastSafePosition)
        MoveBlock();
      ReadBlock();
    }
  }

  public void ReadBlock()
  {
    if (this._streamEndWasReached)
      return;
    int j;
    do
    {
      this._streamPos = (j + this._streamPos);
      if (this._streamPos >= this._pos + this._keepSizeAfter)
        this._posLimit = (this._streamPos - this._keepSizeAfter);
      int i = 0 - this._bufferOffset + this._blockSize - this._streamPos;
      if (i == 0)
        break;
      j = this._stream.read(this._bufferBase, this._bufferOffset + this._streamPos, i);
    }
    while (j != -1);
    this._posLimit = this._streamPos;
    if (this._bufferOffset + this._posLimit > this._pointerToLastSafePosition)
      this._posLimit = (this._pointerToLastSafePosition - this._bufferOffset);
    this._streamEndWasReached = true;
  }

  public void ReduceOffsets(int paramInt)
  {
    this._bufferOffset = (paramInt + this._bufferOffset);
    this._posLimit -= paramInt;
    this._pos -= paramInt;
    this._streamPos -= paramInt;
  }

  public void ReleaseStream()
  {
    this._stream = null;
  }

  public void SetStream(InputStream paramInputStream)
  {
    this._stream = paramInputStream;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lz.InWindow
 * JD-Core Version:    0.6.2
 */