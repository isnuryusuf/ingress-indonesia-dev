package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.utils.BufferUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class VertexArray
  implements VertexData
{
  final VertexAttributes attributes;
  final FloatBuffer buffer;
  final ByteBuffer byteBuffer;
  boolean isBound = false;

  public VertexArray(int paramInt, VertexAttributes paramVertexAttributes)
  {
    this.attributes = paramVertexAttributes;
    this.byteBuffer = BufferUtils.newUnsafeByteBuffer(paramInt * this.attributes.vertexSize);
    this.buffer = this.byteBuffer.asFloatBuffer();
    this.buffer.flip();
    this.byteBuffer.flip();
  }

  public VertexArray(int paramInt, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    this(paramInt, new VertexAttributes(paramArrayOfVertexAttribute));
  }

  public void bind()
  {
    GL10 localGL10 = Gdx.gl10;
    int i = this.attributes.size();
    this.byteBuffer.limit(4 * this.buffer.limit());
    int j = 0;
    int k = 0;
    VertexAttribute localVertexAttribute;
    int m;
    if (j < i)
    {
      localVertexAttribute = this.attributes.get(j);
      switch (localVertexAttribute.usage)
      {
      case 4:
      default:
      case 0:
        for (m = k; ; m = k)
        {
          j++;
          k = m;
          break;
          this.byteBuffer.position(localVertexAttribute.offset);
          localGL10.glEnableClientState(32884);
          localGL10.glVertexPointer(localVertexAttribute.numComponents, 5126, this.attributes.vertexSize, this.byteBuffer);
        }
      case 1:
      case 5:
        if (localVertexAttribute.usage != 5)
          break;
      case 2:
      case 3:
      }
    }
    for (int n = 5121; ; n = 5126)
    {
      this.byteBuffer.position(localVertexAttribute.offset);
      localGL10.glEnableClientState(32886);
      localGL10.glColorPointer(localVertexAttribute.numComponents, n, this.attributes.vertexSize, this.byteBuffer);
      m = k;
      break;
      this.byteBuffer.position(localVertexAttribute.offset);
      localGL10.glEnableClientState(32885);
      localGL10.glNormalPointer(5126, this.attributes.vertexSize, this.byteBuffer);
      m = k;
      break;
      localGL10.glClientActiveTexture(33984 + k);
      localGL10.glEnableClientState(32888);
      this.byteBuffer.position(localVertexAttribute.offset);
      localGL10.glTexCoordPointer(localVertexAttribute.numComponents, 5126, this.attributes.vertexSize, this.byteBuffer);
      m = k + 1;
      break;
      this.isBound = true;
      return;
    }
  }

  public void bind(ShaderProgram paramShaderProgram)
  {
    int i = this.attributes.size();
    this.byteBuffer.limit(4 * this.buffer.limit());
    int j = 0;
    VertexAttribute localVertexAttribute;
    int k;
    if (j < i)
    {
      localVertexAttribute = this.attributes.get(j);
      paramShaderProgram.enableVertexAttribute(localVertexAttribute.alias);
      k = 5126;
      if (localVertexAttribute.usage != 5)
        break label134;
      k = 5121;
    }
    label134: for (boolean bool = true; ; bool = false)
    {
      this.byteBuffer.position(localVertexAttribute.offset);
      paramShaderProgram.setVertexAttribute(localVertexAttribute.alias, localVertexAttribute.numComponents, k, bool, this.attributes.vertexSize, this.byteBuffer);
      j++;
      break;
      this.isBound = true;
      return;
    }
  }

  public void dispose()
  {
    BufferUtils.disposeUnsafeByteBuffer(this.byteBuffer);
  }

  public VertexAttributes getAttributes()
  {
    return this.attributes;
  }

  public FloatBuffer getBuffer()
  {
    return this.buffer;
  }

  public int getNumMaxVertices()
  {
    return this.byteBuffer.capacity() / this.attributes.vertexSize;
  }

  public int getNumVertices()
  {
    return 4 * this.buffer.limit() / this.attributes.vertexSize;
  }

  public void setVertices(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    BufferUtils.copy(paramArrayOfFloat, this.byteBuffer, paramInt2, paramInt1);
    this.buffer.position(0);
    this.buffer.limit(paramInt2);
  }

  public void unbind()
  {
    GL10 localGL10 = Gdx.gl10;
    int i = this.attributes.size();
    int j = 0;
    int k = 0;
    if (j < i)
    {
      switch (this.attributes.get(j).usage)
      {
      case 0:
      case 4:
      default:
      case 1:
      case 5:
      case 2:
      case 3:
      }
      while (true)
      {
        j++;
        break;
        localGL10.glDisableClientState(32886);
        continue;
        localGL10.glDisableClientState(32885);
        continue;
        localGL10.glClientActiveTexture(33984 + k);
        localGL10.glDisableClientState(32888);
        k++;
      }
    }
    this.byteBuffer.position(0);
    this.isBound = false;
  }

  public void unbind(ShaderProgram paramShaderProgram)
  {
    int i = this.attributes.size();
    for (int j = 0; j < i; j++)
      paramShaderProgram.disableVertexAttribute(this.attributes.get(j).alias);
    this.isBound = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.VertexArray
 * JD-Core Version:    0.6.2
 */