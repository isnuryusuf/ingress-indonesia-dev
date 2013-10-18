package com.badlogic.gdx.backends.android;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

class AndroidGL10
  implements com.badlogic.gdx.graphics.GL10
{
  final javax.microedition.khronos.opengles.GL10 gl;

  public AndroidGL10(javax.microedition.khronos.opengles.GL10 paramGL10)
  {
    this.gl = paramGL10;
  }

  public final void glActiveTexture(int paramInt)
  {
    this.gl.glActiveTexture(paramInt);
  }

  public final void glAlphaFunc(int paramInt, float paramFloat)
  {
    this.gl.glAlphaFunc(paramInt, paramFloat);
  }

  public final void glBindTexture(int paramInt1, int paramInt2)
  {
    this.gl.glBindTexture(paramInt1, paramInt2);
  }

  public final void glBlendFunc(int paramInt1, int paramInt2)
  {
    this.gl.glBlendFunc(paramInt1, paramInt2);
  }

  public final void glClear(int paramInt)
  {
    this.gl.glClear(paramInt);
  }

  public final void glClearColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.gl.glClearColor(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final void glClearDepthf(float paramFloat)
  {
    this.gl.glClearDepthf(paramFloat);
  }

  public final void glClearStencil(int paramInt)
  {
    this.gl.glClearStencil(paramInt);
  }

  public final void glClientActiveTexture(int paramInt)
  {
    this.gl.glClientActiveTexture(paramInt);
  }

  public final void glColor4f(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.gl.glColor4f(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final void glColorMask(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.gl.glColorMask(paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
  }

  public final void glColorPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.gl.glColorPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
  }

  public final void glCompressedTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, Buffer paramBuffer)
  {
    this.gl.glCompressedTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramBuffer);
  }

  public final void glCompressedTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    this.gl.glCompressedTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
  }

  public final void glCopyTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.gl.glCopyTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  public final void glCopyTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.gl.glCopyTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  public final void glCullFace(int paramInt)
  {
    this.gl.glCullFace(paramInt);
  }

  public final void glDeleteTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    this.gl.glDeleteTextures(paramInt, paramIntBuffer);
  }

  public final void glDeleteTextures(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    this.gl.glDeleteTextures(paramInt1, paramArrayOfInt, paramInt2);
  }

  public final void glDepthFunc(int paramInt)
  {
    this.gl.glDepthFunc(paramInt);
  }

  public final void glDepthMask(boolean paramBoolean)
  {
    this.gl.glDepthMask(paramBoolean);
  }

  public final void glDepthRangef(float paramFloat1, float paramFloat2)
  {
    this.gl.glDepthRangef(paramFloat1, paramFloat2);
  }

  public final void glDisable(int paramInt)
  {
    this.gl.glDisable(paramInt);
  }

  public final void glDisableClientState(int paramInt)
  {
    this.gl.glDisableClientState(paramInt);
  }

  public final void glDrawArrays(int paramInt1, int paramInt2, int paramInt3)
  {
    this.gl.glDrawArrays(paramInt1, paramInt2, paramInt3);
  }

  public final void glDrawElements(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.gl.glDrawElements(paramInt1, paramInt2, paramInt3, paramBuffer);
  }

  public final void glEnable(int paramInt)
  {
    this.gl.glEnable(paramInt);
  }

  public final void glEnableClientState(int paramInt)
  {
    this.gl.glEnableClientState(paramInt);
  }

  public final void glFinish()
  {
    this.gl.glFinish();
  }

  public final void glFlush()
  {
    this.gl.glFlush();
  }

  public final void glFogf(int paramInt, float paramFloat)
  {
    this.gl.glFogf(paramInt, paramFloat);
  }

  public final void glFogfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.gl.glFogfv(paramInt, paramFloatBuffer);
  }

  public final void glFogfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    this.gl.glFogfv(paramInt1, paramArrayOfFloat, paramInt2);
  }

  public final void glFrontFace(int paramInt)
  {
    this.gl.glFrontFace(paramInt);
  }

  public final void glFrustumf(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.gl.glFrustumf(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
  }

  public final void glGenTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    this.gl.glGenTextures(paramInt, paramIntBuffer);
  }

  public final void glGenTextures(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    this.gl.glGenTextures(paramInt1, paramArrayOfInt, paramInt2);
  }

  public final int glGetError()
  {
    return this.gl.glGetError();
  }

  public final void glGetIntegerv(int paramInt, IntBuffer paramIntBuffer)
  {
    this.gl.glGetIntegerv(paramInt, paramIntBuffer);
  }

  public final void glGetIntegerv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    this.gl.glGetIntegerv(paramInt1, paramArrayOfInt, paramInt2);
  }

  public final String glGetString(int paramInt)
  {
    return this.gl.glGetString(paramInt);
  }

  public final void glHint(int paramInt1, int paramInt2)
  {
    this.gl.glHint(paramInt1, paramInt2);
  }

  public final void glLightModelf(int paramInt, float paramFloat)
  {
    this.gl.glLightModelf(paramInt, paramFloat);
  }

  public final void glLightModelfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.gl.glLightModelfv(paramInt, paramFloatBuffer);
  }

  public final void glLightModelfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    this.gl.glLightModelfv(paramInt1, paramArrayOfFloat, paramInt2);
  }

  public final void glLightf(int paramInt1, int paramInt2, float paramFloat)
  {
    this.gl.glLightf(paramInt1, paramInt2, paramFloat);
  }

  public final void glLightfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.gl.glLightfv(paramInt1, paramInt2, paramFloatBuffer);
  }

  public final void glLightfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    this.gl.glLightfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
  }

  public final void glLineWidth(float paramFloat)
  {
    this.gl.glLineWidth(paramFloat);
  }

  public final void glLoadIdentity()
  {
    this.gl.glLoadIdentity();
  }

  public final void glLoadMatrixf(FloatBuffer paramFloatBuffer)
  {
    this.gl.glLoadMatrixf(paramFloatBuffer);
  }

  public final void glLoadMatrixf(float[] paramArrayOfFloat, int paramInt)
  {
    this.gl.glLoadMatrixf(paramArrayOfFloat, paramInt);
  }

  public final void glLogicOp(int paramInt)
  {
    this.gl.glLogicOp(paramInt);
  }

  public final void glMaterialf(int paramInt1, int paramInt2, float paramFloat)
  {
    this.gl.glMaterialf(paramInt1, paramInt2, paramFloat);
  }

  public final void glMaterialfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.gl.glMaterialfv(paramInt1, paramInt2, paramFloatBuffer);
  }

  public final void glMaterialfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    this.gl.glMaterialfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
  }

  public final void glMatrixMode(int paramInt)
  {
    this.gl.glMatrixMode(paramInt);
  }

  public final void glMultMatrixf(FloatBuffer paramFloatBuffer)
  {
    this.gl.glMultMatrixf(paramFloatBuffer);
  }

  public final void glMultMatrixf(float[] paramArrayOfFloat, int paramInt)
  {
    this.gl.glMultMatrixf(paramArrayOfFloat, paramInt);
  }

  public final void glMultiTexCoord4f(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.gl.glMultiTexCoord4f(paramInt, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final void glNormal3f(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.gl.glNormal3f(paramFloat1, paramFloat2, paramFloat3);
  }

  public final void glNormalPointer(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    this.gl.glNormalPointer(paramInt1, paramInt2, paramBuffer);
  }

  public final void glOrthof(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.gl.glOrthof(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
  }

  public final void glPixelStorei(int paramInt1, int paramInt2)
  {
    this.gl.glPixelStorei(paramInt1, paramInt2);
  }

  public final void glPointSize(float paramFloat)
  {
    this.gl.glPointSize(paramFloat);
  }

  public void glPolygonMode(int paramInt1, int paramInt2)
  {
  }

  public final void glPolygonOffset(float paramFloat1, float paramFloat2)
  {
    this.gl.glPolygonOffset(paramFloat1, paramFloat2);
  }

  public final void glPopMatrix()
  {
    this.gl.glPopMatrix();
  }

  public final void glPushMatrix()
  {
    this.gl.glPushMatrix();
  }

  public final void glReadPixels(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Buffer paramBuffer)
  {
    this.gl.glReadPixels(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramBuffer);
  }

  public final void glRotatef(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.gl.glRotatef(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final void glSampleCoverage(float paramFloat, boolean paramBoolean)
  {
    this.gl.glSampleCoverage(paramFloat, paramBoolean);
  }

  public final void glScalef(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.gl.glScalef(paramFloat1, paramFloat2, paramFloat3);
  }

  public final void glScissor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.gl.glScissor(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void glShadeModel(int paramInt)
  {
    this.gl.glShadeModel(paramInt);
  }

  public final void glStencilFunc(int paramInt1, int paramInt2, int paramInt3)
  {
    this.gl.glStencilFunc(paramInt1, paramInt2, paramInt3);
  }

  public final void glStencilMask(int paramInt)
  {
    this.gl.glStencilMask(paramInt);
  }

  public final void glStencilOp(int paramInt1, int paramInt2, int paramInt3)
  {
    this.gl.glStencilOp(paramInt1, paramInt2, paramInt3);
  }

  public final void glTexCoordPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.gl.glTexCoordPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
  }

  public final void glTexEnvf(int paramInt1, int paramInt2, float paramFloat)
  {
    this.gl.glTexEnvf(paramInt1, paramInt2, paramFloat);
  }

  public final void glTexEnvfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.gl.glTexEnvfv(paramInt1, paramInt2, paramFloatBuffer);
  }

  public final void glTexEnvfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    this.gl.glTexEnvfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
  }

  public final void glTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    this.gl.glTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
  }

  public final void glTexParameterf(int paramInt1, int paramInt2, float paramFloat)
  {
    this.gl.glTexParameterf(paramInt1, paramInt2, paramFloat);
  }

  public final void glTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    this.gl.glTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
  }

  public final void glTranslatef(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.gl.glTranslatef(paramFloat1, paramFloat2, paramFloat3);
  }

  public final void glVertexPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.gl.glVertexPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
  }

  public final void glViewport(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.gl.glViewport(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidGL10
 * JD-Core Version:    0.6.2
 */