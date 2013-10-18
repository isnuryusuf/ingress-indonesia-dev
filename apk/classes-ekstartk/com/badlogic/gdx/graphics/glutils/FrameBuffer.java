package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class FrameBuffer
  implements Disposable
{
  private static final Map<Application, List<FrameBuffer>> buffers = new HashMap();
  private Texture colorTexture;
  private int depthbufferHandle;
  private final Pixmap.Format format;
  private int framebufferHandle;
  private final boolean hasDepth;
  private final int height;
  private final int width;

  public FrameBuffer(Pixmap.Format paramFormat, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.width = paramInt1;
    this.height = paramInt2;
    this.format = paramFormat;
    this.hasDepth = paramBoolean;
    build();
    addManagedFrameBuffer(Gdx.app, this);
  }

  private void addManagedFrameBuffer(Application paramApplication, FrameBuffer paramFrameBuffer)
  {
    Object localObject = (List)buffers.get(paramApplication);
    if (localObject == null)
      localObject = new ArrayList();
    ((List)localObject).add(paramFrameBuffer);
    buffers.put(paramApplication, localObject);
  }

  private void build()
  {
    if (!Gdx.graphics.isGL20Available())
      throw new GdxRuntimeException("GL2 is required.");
    this.colorTexture = new Texture(this.width, this.height, this.format);
    this.colorTexture.setFilter(Texture.TextureFilter.Linear, Texture.TextureFilter.Linear);
    this.colorTexture.setWrap(Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge);
    GL20 localGL20 = Gdx.graphics.getGL20();
    IntBuffer localIntBuffer = BufferUtils.newIntBuffer(1);
    localGL20.glGenFramebuffers(1, localIntBuffer);
    this.framebufferHandle = localIntBuffer.get(0);
    if (this.hasDepth)
    {
      localIntBuffer.clear();
      localGL20.glGenRenderbuffers(1, localIntBuffer);
      this.depthbufferHandle = localIntBuffer.get(0);
    }
    localGL20.glBindTexture(3553, this.colorTexture.getTextureObjectHandle());
    if (this.hasDepth)
    {
      localGL20.glBindRenderbuffer(36161, this.depthbufferHandle);
      localGL20.glRenderbufferStorage(36161, 33189, this.colorTexture.getWidth(), this.colorTexture.getHeight());
    }
    localGL20.glBindFramebuffer(36160, this.framebufferHandle);
    localGL20.glFramebufferTexture2D(36160, 36064, 3553, this.colorTexture.getTextureObjectHandle(), 0);
    if (this.hasDepth)
      localGL20.glFramebufferRenderbuffer(36160, 36096, 36161, this.depthbufferHandle);
    int i = localGL20.glCheckFramebufferStatus(36160);
    localGL20.glBindRenderbuffer(36161, 0);
    localGL20.glBindTexture(3553, 0);
    localGL20.glBindFramebuffer(36160, 0);
    if (i != 36053)
    {
      this.colorTexture.dispose();
      if (this.hasDepth)
      {
        localIntBuffer.clear();
        localIntBuffer.put(this.depthbufferHandle);
        localIntBuffer.flip();
        localGL20.glDeleteRenderbuffers(1, localIntBuffer);
      }
      this.colorTexture.dispose();
      localIntBuffer.clear();
      localIntBuffer.put(this.framebufferHandle);
      localIntBuffer.flip();
      localGL20.glDeleteFramebuffers(1, localIntBuffer);
      if (i == 36054)
        throw new IllegalStateException("frame buffer couldn't be constructed: incomplete attachment");
      if (i == 36057)
        throw new IllegalStateException("frame buffer couldn't be constructed: incomplete dimensions");
      if (i == 36055)
        throw new IllegalStateException("frame buffer couldn't be constructed: missing attachment");
    }
  }

  public static void clearAllFrameBuffers(Application paramApplication)
  {
    buffers.remove(paramApplication);
  }

  public static String getManagedStatus()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Managed buffers/app: { ");
    Iterator localIterator = buffers.keySet().iterator();
    while (localIterator.hasNext())
    {
      Application localApplication = (Application)localIterator.next();
      localStringBuilder.append(((List)buffers.get(localApplication)).size());
      localStringBuilder.append(" ");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public static void invalidateAllFrameBuffers(Application paramApplication)
  {
    if (Gdx.graphics.getGL20() == null);
    while (true)
    {
      return;
      List localList = (List)buffers.get(paramApplication);
      if (localList != null)
        for (int i = 0; i < localList.size(); i++)
          ((FrameBuffer)localList.get(i)).build();
    }
  }

  public void begin()
  {
    Gdx.graphics.getGL20().glViewport(0, 0, this.colorTexture.getWidth(), this.colorTexture.getHeight());
    Gdx.graphics.getGL20().glBindFramebuffer(36160, this.framebufferHandle);
  }

  public void dispose()
  {
    GL20 localGL20 = Gdx.graphics.getGL20();
    IntBuffer localIntBuffer = BufferUtils.newIntBuffer(1);
    this.colorTexture.dispose();
    if (this.hasDepth)
    {
      localIntBuffer.put(this.depthbufferHandle);
      localIntBuffer.flip();
      localGL20.glDeleteRenderbuffers(1, localIntBuffer);
    }
    localIntBuffer.clear();
    localIntBuffer.put(this.framebufferHandle);
    localIntBuffer.flip();
    localGL20.glDeleteFramebuffers(1, localIntBuffer);
    if (buffers.get(Gdx.app) != null)
      ((List)buffers.get(Gdx.app)).remove(this);
  }

  public void end()
  {
    Gdx.graphics.getGL20().glViewport(0, 0, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
    Gdx.graphics.getGL20().glBindFramebuffer(36160, 0);
  }

  public Texture getColorBufferTexture()
  {
    return this.colorTexture;
  }

  public int getHeight()
  {
    return this.colorTexture.getHeight();
  }

  public int getWidth()
  {
    return this.colorTexture.getWidth();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.FrameBuffer
 * JD-Core Version:    0.6.2
 */