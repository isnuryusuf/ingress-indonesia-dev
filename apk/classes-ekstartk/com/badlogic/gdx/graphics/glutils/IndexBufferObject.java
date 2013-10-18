package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL11;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public class IndexBufferObject
  implements IndexData
{
  static final IntBuffer tmpHandle = BufferUtils.newIntBuffer(1);
  ShortBuffer buffer;
  int bufferHandle;
  ByteBuffer byteBuffer;
  boolean isBound = false;
  final boolean isDirect;
  boolean isDirty = true;
  final int usage;

  public IndexBufferObject(int paramInt)
  {
    this.byteBuffer = BufferUtils.newUnsafeByteBuffer(paramInt * 2);
    this.isDirect = true;
    this.buffer = this.byteBuffer.asShortBuffer();
    this.buffer.flip();
    this.byteBuffer.flip();
    this.bufferHandle = createBufferObject();
    this.usage = 35044;
  }

  public IndexBufferObject(boolean paramBoolean, int paramInt)
  {
    this.byteBuffer = BufferUtils.newUnsafeByteBuffer(paramInt * 2);
    this.isDirect = true;
    this.buffer = this.byteBuffer.asShortBuffer();
    this.buffer.flip();
    this.byteBuffer.flip();
    this.bufferHandle = createBufferObject();
    if (paramBoolean);
    for (int i = 35044; ; i = 35048)
    {
      this.usage = i;
      return;
    }
  }

  private int createBufferObject()
  {
    if (Gdx.gl20 != null)
    {
      Gdx.gl20.glGenBuffers(1, tmpHandle);
      return tmpHandle.get(0);
    }
    if (Gdx.gl11 != null)
    {
      Gdx.gl11.glGenBuffers(1, tmpHandle);
      return tmpHandle.get(0);
    }
    throw new GdxRuntimeException("Can not use IndexBufferObject with GLES 1.0, need 1.1 or 2.0");
  }

  public void bind()
  {
    if (this.bufferHandle == 0)
      throw new GdxRuntimeException("No buffer allocated!");
    if (Gdx.gl11 != null)
    {
      GL11 localGL11 = Gdx.gl11;
      localGL11.glBindBuffer(34963, this.bufferHandle);
      if (this.isDirty)
      {
        this.byteBuffer.limit(2 * this.buffer.limit());
        localGL11.glBufferData(34963, this.byteBuffer.limit(), this.byteBuffer, this.usage);
        this.isDirty = false;
      }
    }
    while (true)
    {
      this.isBound = true;
      return;
      GL20 localGL20 = Gdx.gl20;
      localGL20.glBindBuffer(34963, this.bufferHandle);
      if (this.isDirty)
      {
        this.byteBuffer.limit(2 * this.buffer.limit());
        localGL20.glBufferData(34963, this.byteBuffer.limit(), this.byteBuffer, this.usage);
        this.isDirty = false;
      }
    }
  }

  public void dispose()
  {
    if (Gdx.gl20 != null)
    {
      tmpHandle.clear();
      tmpHandle.put(this.bufferHandle);
      tmpHandle.flip();
      GL20 localGL20 = Gdx.gl20;
      localGL20.glBindBuffer(34963, 0);
      localGL20.glDeleteBuffers(1, tmpHandle);
      this.bufferHandle = 0;
    }
    while (true)
    {
      BufferUtils.disposeUnsafeByteBuffer(this.byteBuffer);
      return;
      if (Gdx.gl11 != null)
      {
        tmpHandle.clear();
        tmpHandle.put(this.bufferHandle);
        tmpHandle.flip();
        GL11 localGL11 = Gdx.gl11;
        localGL11.glBindBuffer(34963, 0);
        localGL11.glDeleteBuffers(1, tmpHandle);
        this.bufferHandle = 0;
      }
    }
  }

  public ShortBuffer getBuffer()
  {
    this.isDirty = true;
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
    this.bufferHandle = createBufferObject();
    this.isDirty = true;
  }

  public void setIndices(short[] paramArrayOfShort, int paramInt1, int paramInt2)
  {
    this.isDirty = true;
    this.buffer.clear();
    this.buffer.put(paramArrayOfShort, paramInt1, paramInt2);
    this.buffer.flip();
    this.byteBuffer.position(0);
    this.byteBuffer.limit(paramInt2 << 1);
    if (this.isBound)
    {
      if (Gdx.gl11 == null)
        break label96;
      Gdx.gl11.glBufferData(34963, this.byteBuffer.limit(), this.byteBuffer, this.usage);
    }
    while (true)
    {
      this.isDirty = false;
      return;
      label96: if (Gdx.gl20 != null)
        Gdx.gl20.glBufferData(34963, this.byteBuffer.limit(), this.byteBuffer, this.usage);
    }
  }

  public void unbind()
  {
    if (Gdx.gl11 != null)
      Gdx.gl11.glBindBuffer(34963, 0);
    while (true)
    {
      this.isBound = false;
      return;
      if (Gdx.gl20 != null)
        Gdx.gl20.glBindBuffer(34963, 0);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.IndexBufferObject
 * JD-Core Version:    0.6.2
 */