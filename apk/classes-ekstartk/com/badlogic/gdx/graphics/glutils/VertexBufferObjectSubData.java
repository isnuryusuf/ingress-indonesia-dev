package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL11;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class VertexBufferObjectSubData
  implements VertexData
{
  static final IntBuffer tmpHandle = BufferUtils.newIntBuffer(1);
  final VertexAttributes attributes;
  final FloatBuffer buffer;
  int bufferHandle;
  final ByteBuffer byteBuffer;
  boolean isBound = false;
  final boolean isDirect;
  boolean isDirty = false;
  final boolean isStatic;
  final int usage;

  public VertexBufferObjectSubData(boolean paramBoolean, int paramInt, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    this.isStatic = paramBoolean;
    this.attributes = new VertexAttributes(paramArrayOfVertexAttribute);
    this.byteBuffer = BufferUtils.newByteBuffer(paramInt * this.attributes.vertexSize);
    this.isDirect = true;
    if (paramBoolean);
    for (int i = 35044; ; i = 35048)
    {
      this.usage = i;
      this.buffer = this.byteBuffer.asFloatBuffer();
      this.bufferHandle = createBufferObject();
      this.buffer.flip();
      this.byteBuffer.flip();
      return;
    }
  }

  private int createBufferObject()
  {
    if (Gdx.gl20 != null)
    {
      Gdx.gl20.glGenBuffers(1, tmpHandle);
      Gdx.gl20.glBindBuffer(34962, tmpHandle.get(0));
      Gdx.gl20.glBufferData(34962, this.byteBuffer.capacity(), null, this.usage);
      Gdx.gl20.glBindBuffer(34962, 0);
    }
    while (true)
    {
      return tmpHandle.get(0);
      Gdx.gl11.glGenBuffers(1, tmpHandle);
      Gdx.gl11.glBindBuffer(34962, tmpHandle.get(0));
      Gdx.gl11.glBufferData(34962, this.byteBuffer.capacity(), null, this.usage);
      Gdx.gl11.glBindBuffer(34962, 0);
    }
  }

  public void bind()
  {
    GL11 localGL11 = Gdx.gl11;
    localGL11.glBindBuffer(34962, this.bufferHandle);
    if (this.isDirty)
    {
      this.byteBuffer.limit(4 * this.buffer.limit());
      localGL11.glBufferSubData(34962, 0, this.byteBuffer.limit(), this.byteBuffer);
      this.isDirty = false;
    }
    int i = this.attributes.size();
    int j = 0;
    int k = 0;
    VertexAttribute localVertexAttribute;
    int m;
    while (j < i)
    {
      localVertexAttribute = this.attributes.get(j);
      switch (localVertexAttribute.usage)
      {
      case 4:
      default:
        throw new GdxRuntimeException("unkown vertex attribute type: " + localVertexAttribute.usage);
      case 0:
        localGL11.glEnableClientState(32884);
        localGL11.glVertexPointer(localVertexAttribute.numComponents, 5126, this.attributes.vertexSize, localVertexAttribute.offset);
        m = k;
        j++;
        k = m;
        break;
      case 1:
      case 5:
        if (localVertexAttribute.usage != 5)
          break label362;
      case 2:
      case 3:
      }
    }
    label362: for (int n = 5121; ; n = 5126)
    {
      localGL11.glEnableClientState(32886);
      localGL11.glColorPointer(localVertexAttribute.numComponents, n, this.attributes.vertexSize, localVertexAttribute.offset);
      m = k;
      break;
      localGL11.glEnableClientState(32885);
      localGL11.glNormalPointer(5126, this.attributes.vertexSize, localVertexAttribute.offset);
      m = k;
      break;
      localGL11.glClientActiveTexture(33984 + k);
      localGL11.glEnableClientState(32888);
      localGL11.glTexCoordPointer(localVertexAttribute.numComponents, 5126, this.attributes.vertexSize, localVertexAttribute.offset);
      m = k + 1;
      break;
      this.isBound = true;
      return;
    }
  }

  public void bind(ShaderProgram paramShaderProgram)
  {
    GL20 localGL20 = Gdx.gl20;
    localGL20.glBindBuffer(34962, this.bufferHandle);
    if (this.isDirty)
    {
      this.byteBuffer.limit(4 * this.buffer.limit());
      localGL20.glBufferSubData(34962, 0, this.byteBuffer.limit(), this.byteBuffer);
      this.isDirty = false;
    }
    int i = this.attributes.size();
    int j = 0;
    VertexAttribute localVertexAttribute;
    int k;
    if (j < i)
    {
      localVertexAttribute = this.attributes.get(j);
      paramShaderProgram.enableVertexAttribute(localVertexAttribute.alias);
      k = 5126;
      if (localVertexAttribute.usage != 5)
        break label166;
      k = 5121;
    }
    label166: for (boolean bool = true; ; bool = false)
    {
      paramShaderProgram.setVertexAttribute(localVertexAttribute.alias, localVertexAttribute.numComponents, k, bool, this.attributes.vertexSize, localVertexAttribute.offset);
      j++;
      break;
      this.isBound = true;
      return;
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
      localGL20.glBindBuffer(34962, 0);
      localGL20.glDeleteBuffers(1, tmpHandle);
      this.bufferHandle = 0;
      return;
    }
    tmpHandle.clear();
    tmpHandle.put(this.bufferHandle);
    tmpHandle.flip();
    GL11 localGL11 = Gdx.gl11;
    localGL11.glBindBuffer(34962, 0);
    localGL11.glDeleteBuffers(1, tmpHandle);
    this.bufferHandle = 0;
  }

  public VertexAttributes getAttributes()
  {
    return this.attributes;
  }

  public FloatBuffer getBuffer()
  {
    this.isDirty = true;
    return this.buffer;
  }

  public int getBufferHandle()
  {
    return this.bufferHandle;
  }

  public int getNumMaxVertices()
  {
    return this.byteBuffer.capacity() / this.attributes.vertexSize;
  }

  public int getNumVertices()
  {
    return 4 * this.buffer.limit() / this.attributes.vertexSize;
  }

  public void invalidate()
  {
    this.bufferHandle = createBufferObject();
    this.isDirty = true;
  }

  public void setVertices(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    this.isDirty = true;
    if (this.isDirect)
    {
      BufferUtils.copy(paramArrayOfFloat, this.byteBuffer, paramInt2, paramInt1);
      this.buffer.position(0);
      this.buffer.limit(paramInt2);
      if (this.isBound)
      {
        if (Gdx.gl20 == null)
          break label137;
        Gdx.gl20.glBufferSubData(34962, 0, this.byteBuffer.limit(), this.byteBuffer);
      }
    }
    while (true)
    {
      this.isDirty = false;
      return;
      this.buffer.clear();
      this.buffer.put(paramArrayOfFloat, paramInt1, paramInt2);
      this.buffer.flip();
      this.byteBuffer.position(0);
      this.byteBuffer.limit(this.buffer.limit() << 2);
      break;
      label137: Gdx.gl11.glBufferSubData(34962, 0, this.byteBuffer.limit(), this.byteBuffer);
    }
  }

  public void unbind()
  {
    GL11 localGL11 = Gdx.gl11;
    int i = this.attributes.size();
    int j = 0;
    int k = 0;
    if (j < i)
    {
      VertexAttribute localVertexAttribute = this.attributes.get(j);
      switch (localVertexAttribute.usage)
      {
      case 4:
      default:
        throw new GdxRuntimeException("unkown vertex attribute type: " + localVertexAttribute.usage);
      case 1:
      case 5:
        localGL11.glDisableClientState(32886);
      case 0:
      case 2:
      case 3:
      }
      while (true)
      {
        j++;
        break;
        localGL11.glDisableClientState(32885);
        continue;
        localGL11.glClientActiveTexture(33984 + k);
        localGL11.glDisableClientState(32888);
        k++;
      }
    }
    localGL11.glBindBuffer(34962, 0);
    this.isBound = false;
  }

  public void unbind(ShaderProgram paramShaderProgram)
  {
    GL20 localGL20 = Gdx.gl20;
    int i = this.attributes.size();
    for (int j = 0; j < i; j++)
      paramShaderProgram.disableVertexAttribute(this.attributes.get(j).alias);
    localGL20.glBindBuffer(34962, 0);
    this.isBound = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.VertexBufferObjectSubData
 * JD-Core Version:    0.6.2
 */