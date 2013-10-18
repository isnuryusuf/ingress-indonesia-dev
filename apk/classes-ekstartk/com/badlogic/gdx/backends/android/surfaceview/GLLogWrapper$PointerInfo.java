package com.badlogic.gdx.backends.android.surfaceview;

import java.nio.Buffer;
import java.nio.ByteBuffer;

class GLLogWrapper$PointerInfo
{
  public Buffer mPointer;
  public int mSize;
  public int mStride;
  public ByteBuffer mTempByteBuffer;
  public int mType;

  public GLLogWrapper$PointerInfo(GLLogWrapper paramGLLogWrapper, int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.mSize = paramInt1;
    this.mType = paramInt2;
    this.mStride = paramInt3;
    this.mPointer = paramBuffer;
  }

  public void bindByteBuffer()
  {
    this.mTempByteBuffer = this.this$0.toByteBuffer(-1, this.mPointer);
  }

  public int getStride()
  {
    if (this.mStride > 0)
      return this.mStride;
    return sizeof(this.mType) * this.mSize;
  }

  public int sizeof(int paramInt)
  {
    int i = 1;
    switch (paramInt)
    {
    default:
      i = 0;
    case 5120:
    case 5121:
      return i;
    case 5122:
      return 2;
    case 5132:
      return 4;
    case 5126:
    }
    return 4;
  }

  public void unbindByteBuffer()
  {
    this.mTempByteBuffer = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLLogWrapper.PointerInfo
 * JD-Core Version:    0.6.2
 */