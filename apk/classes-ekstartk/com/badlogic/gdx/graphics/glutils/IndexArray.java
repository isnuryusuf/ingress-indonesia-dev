package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.utils.BufferUtils;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public class IndexArray
  implements IndexData
{
  static final IntBuffer tmpHandle = BufferUtils.newIntBuffer(1);
  ShortBuffer buffer;
  ByteBuffer byteBuffer;

  public IndexArray(int paramInt)
  {
    this.byteBuffer = BufferUtils.newUnsafeByteBuffer(paramInt * 2);
    this.buffer = this.byteBuffer.asShortBuffer();
    this.buffer.flip();
    this.byteBuffer.flip();
  }

  public void bind()
  {
  }

  public void dispose()
  {
    BufferUtils.disposeUnsafeByteBuffer(this.byteBuffer);
  }

  public ShortBuffer getBuffer()
  {
    return this.buffer;
  }

  public int getNumIndices()
  {
    return this.buffer.limit();
  }

  public int getNumMaxIndices()
  {
    return this.buffer.capacity();
  }

  public void invalidate()
  {
  }

  public void setIndices(short[] paramArrayOfShort, int paramInt1, int paramInt2)
  {
    this.buffer.clear();
    this.buffer.put(paramArrayOfShort, paramInt1, paramInt2);
    this.buffer.flip();
    this.byteBuffer.position(0);
    this.byteBuffer.limit(paramInt2 << 1);
  }

  public void unbind()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.IndexArray
 * JD-Core Version:    0.6.2
 */