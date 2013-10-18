package com.badlogic.gdx.graphics;

import java.nio.Buffer;
import java.nio.IntBuffer;

public abstract interface GLCommon
{
  public static final int GL_GENERATE_MIPMAP = 33169;
  public static final int GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 34047;
  public static final int GL_TEXTURE_MAX_ANISOTROPY_EXT = 34046;

  public abstract void glActiveTexture(int paramInt);

  public abstract void glBindTexture(int paramInt1, int paramInt2);

  public abstract void glBlendFunc(int paramInt1, int paramInt2);

  public abstract void glClear(int paramInt);

  public abstract void glClearColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  public abstract void glClearDepthf(float paramFloat);

  public abstract void glClearStencil(int paramInt);

  public abstract void glColorMask(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4);

  public abstract void glCompressedTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, Buffer paramBuffer);

  public abstract void glCompressedTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer);

  public abstract void glCopyTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8);

  public abstract void glCopyTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8);

  public abstract void glCullFace(int paramInt);

  public abstract void glDeleteTextures(int paramInt, IntBuffer paramIntBuffer);

  public abstract void glDepthFunc(int paramInt);

  public abstract void glDepthMask(boolean paramBoolean);

  public abstract void glDepthRangef(float paramFloat1, float paramFloat2);

  public abstract void glDisable(int paramInt);

  public abstract void glDrawArrays(int paramInt1, int paramInt2, int paramInt3);

  public abstract void glDrawElements(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer);

  public abstract void glEnable(int paramInt);

  public abstract void glFinish();

  public abstract void glFlush();

  public abstract void glFrontFace(int paramInt);

  public abstract void glGenTextures(int paramInt, IntBuffer paramIntBuffer);

  public abstract int glGetError();

  public abstract void glGetIntegerv(int paramInt, IntBuffer paramIntBuffer);

  public abstract String glGetString(int paramInt);

  public abstract void glHint(int paramInt1, int paramInt2);

  public abstract void glLineWidth(float paramFloat);

  public abstract void glPixelStorei(int paramInt1, int paramInt2);

  public abstract void glPolygonOffset(float paramFloat1, float paramFloat2);

  public abstract void glReadPixels(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Buffer paramBuffer);

  public abstract void glScissor(int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void glStencilFunc(int paramInt1, int paramInt2, int paramInt3);

  public abstract void glStencilMask(int paramInt);

  public abstract void glStencilOp(int paramInt1, int paramInt2, int paramInt3);

  public abstract void glTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer);

  public abstract void glTexParameterf(int paramInt1, int paramInt2, float paramFloat);

  public abstract void glTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer);

  public abstract void glViewport(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.GLCommon
 * JD-Core Version:    0.6.2
 */