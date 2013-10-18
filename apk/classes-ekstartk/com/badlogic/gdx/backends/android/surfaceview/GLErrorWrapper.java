package com.badlogic.gdx.backends.android.surfaceview;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL10Ext;
import javax.microedition.khronos.opengles.GL11;
import javax.microedition.khronos.opengles.GL11Ext;

class GLErrorWrapper extends GLWrapperBase
{
  boolean mCheckError;
  boolean mCheckThread;
  Thread mOurThread;

  public GLErrorWrapper(GL paramGL, int paramInt)
  {
    super(paramGL);
    boolean bool2;
    if ((paramInt & 0x1) != 0)
    {
      bool2 = bool1;
      this.mCheckError = bool2;
      if ((paramInt & 0x2) == 0)
        break label40;
    }
    while (true)
    {
      this.mCheckThread = bool1;
      return;
      bool2 = false;
      break;
      label40: bool1 = false;
    }
  }

  private void checkError()
  {
    if (this.mCheckError)
    {
      int i = this.mgl.glGetError();
      if (i != 0)
        throw new GLException(i);
    }
  }

  private void checkThread()
  {
    Thread localThread;
    if (this.mCheckThread)
    {
      localThread = Thread.currentThread();
      if (this.mOurThread != null)
        break label24;
      this.mOurThread = localThread;
    }
    label24: 
    while (this.mOurThread.equals(localThread))
      return;
    throw new GLException(28672, "OpenGL method called from wrong thread.");
  }

  public void glActiveTexture(int paramInt)
  {
    checkThread();
    this.mgl.glActiveTexture(paramInt);
    checkError();
  }

  public void glAlphaFunc(int paramInt, float paramFloat)
  {
    checkThread();
    this.mgl.glAlphaFunc(paramInt, paramFloat);
    checkError();
  }

  public void glAlphaFuncx(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glAlphaFuncx(paramInt1, paramInt2);
    checkError();
  }

  public void glBindTexture(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glBindTexture(paramInt1, paramInt2);
    checkError();
  }

  public void glBlendFunc(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glBlendFunc(paramInt1, paramInt2);
    checkError();
  }

  public void glClear(int paramInt)
  {
    checkThread();
    this.mgl.glClear(paramInt);
    checkError();
  }

  public void glClearColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    checkThread();
    this.mgl.glClearColor(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glClearColorx(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    checkThread();
    this.mgl.glClearColorx(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glClearDepthf(float paramFloat)
  {
    checkThread();
    this.mgl.glClearDepthf(paramFloat);
    checkError();
  }

  public void glClearDepthx(int paramInt)
  {
    checkThread();
    this.mgl.glClearDepthx(paramInt);
    checkError();
  }

  public void glClearStencil(int paramInt)
  {
    checkThread();
    this.mgl.glClearStencil(paramInt);
    checkError();
  }

  public void glClientActiveTexture(int paramInt)
  {
    checkThread();
    this.mgl.glClientActiveTexture(paramInt);
    checkError();
  }

  public void glClipPlanef(int paramInt, FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl11.glClipPlanef(paramInt, paramFloatBuffer);
    checkError();
  }

  public void glClipPlanef(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    checkThread();
    this.mgl11.glClipPlanef(paramInt1, paramArrayOfFloat, paramInt2);
    checkError();
  }

  public void glClipPlanex(int paramInt, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl11.glClipPlanex(paramInt, paramIntBuffer);
    checkError();
  }

  public void glClipPlanex(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    checkThread();
    this.mgl11.glClipPlanex(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glColor4f(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    checkThread();
    this.mgl.glColor4f(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glColor4x(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    checkThread();
    this.mgl.glColor4x(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glColorMask(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    checkThread();
    this.mgl.glColorMask(paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
    checkError();
  }

  public void glColorPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glColorPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glCompressedTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glCompressedTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramBuffer);
    checkError();
  }

  public void glCompressedTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glCompressedTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    checkError();
  }

  public void glCopyTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    checkThread();
    this.mgl.glCopyTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    checkError();
  }

  public void glCopyTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    checkThread();
    this.mgl.glCopyTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    checkError();
  }

  public void glCullFace(int paramInt)
  {
    checkThread();
    this.mgl.glCullFace(paramInt);
    checkError();
  }

  public void glDeleteTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glDeleteTextures(paramInt, paramIntBuffer);
    checkError();
  }

  public void glDeleteTextures(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    checkThread();
    this.mgl.glDeleteTextures(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glDepthFunc(int paramInt)
  {
    checkThread();
    this.mgl.glDepthFunc(paramInt);
    checkError();
  }

  public void glDepthMask(boolean paramBoolean)
  {
    checkThread();
    this.mgl.glDepthMask(paramBoolean);
    checkError();
  }

  public void glDepthRangef(float paramFloat1, float paramFloat2)
  {
    checkThread();
    this.mgl.glDepthRangef(paramFloat1, paramFloat2);
    checkError();
  }

  public void glDepthRangex(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glDepthRangex(paramInt1, paramInt2);
    checkError();
  }

  public void glDisable(int paramInt)
  {
    checkThread();
    this.mgl.glDisable(paramInt);
    checkError();
  }

  public void glDisableClientState(int paramInt)
  {
    checkThread();
    this.mgl.glDisableClientState(paramInt);
    checkError();
  }

  public void glDrawArrays(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glDrawArrays(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glDrawElements(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glDrawElements(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glDrawTexfOES(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    checkThread();
    this.mgl11Ext.glDrawTexfOES(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5);
    checkError();
  }

  public void glDrawTexfvOES(FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl11Ext.glDrawTexfvOES(paramFloatBuffer);
    checkError();
  }

  public void glDrawTexfvOES(float[] paramArrayOfFloat, int paramInt)
  {
    checkThread();
    this.mgl11Ext.glDrawTexfvOES(paramArrayOfFloat, paramInt);
    checkError();
  }

  public void glDrawTexiOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    checkThread();
    this.mgl11Ext.glDrawTexiOES(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    checkError();
  }

  public void glDrawTexivOES(IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl11Ext.glDrawTexivOES(paramIntBuffer);
    checkError();
  }

  public void glDrawTexivOES(int[] paramArrayOfInt, int paramInt)
  {
    checkThread();
    this.mgl11Ext.glDrawTexivOES(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glDrawTexsOES(short paramShort1, short paramShort2, short paramShort3, short paramShort4, short paramShort5)
  {
    checkThread();
    this.mgl11Ext.glDrawTexsOES(paramShort1, paramShort2, paramShort3, paramShort4, paramShort5);
    checkError();
  }

  public void glDrawTexsvOES(ShortBuffer paramShortBuffer)
  {
    checkThread();
    this.mgl11Ext.glDrawTexsvOES(paramShortBuffer);
    checkError();
  }

  public void glDrawTexsvOES(short[] paramArrayOfShort, int paramInt)
  {
    checkThread();
    this.mgl11Ext.glDrawTexsvOES(paramArrayOfShort, paramInt);
    checkError();
  }

  public void glDrawTexxOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    checkThread();
    this.mgl11Ext.glDrawTexxOES(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    checkError();
  }

  public void glDrawTexxvOES(IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl11Ext.glDrawTexxvOES(paramIntBuffer);
    checkError();
  }

  public void glDrawTexxvOES(int[] paramArrayOfInt, int paramInt)
  {
    checkThread();
    this.mgl11Ext.glDrawTexxvOES(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glEnable(int paramInt)
  {
    checkThread();
    this.mgl.glEnable(paramInt);
    checkError();
  }

  public void glEnableClientState(int paramInt)
  {
    checkThread();
    this.mgl.glEnableClientState(paramInt);
    checkError();
  }

  public void glFinish()
  {
    checkThread();
    this.mgl.glFinish();
    checkError();
  }

  public void glFlush()
  {
    checkThread();
    this.mgl.glFlush();
    checkError();
  }

  public void glFogf(int paramInt, float paramFloat)
  {
    checkThread();
    this.mgl.glFogf(paramInt, paramFloat);
    checkError();
  }

  public void glFogfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl.glFogfv(paramInt, paramFloatBuffer);
    checkError();
  }

  public void glFogfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    checkThread();
    this.mgl.glFogfv(paramInt1, paramArrayOfFloat, paramInt2);
    checkError();
  }

  public void glFogx(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glFogx(paramInt1, paramInt2);
    checkError();
  }

  public void glFogxv(int paramInt, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glFogxv(paramInt, paramIntBuffer);
    checkError();
  }

  public void glFogxv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    checkThread();
    this.mgl.glFogxv(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glFrontFace(int paramInt)
  {
    checkThread();
    this.mgl.glFrontFace(paramInt);
    checkError();
  }

  public void glFrustumf(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    checkThread();
    this.mgl.glFrustumf(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    checkError();
  }

  public void glFrustumx(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    checkThread();
    this.mgl.glFrustumx(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
    checkError();
  }

  public void glGenTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glGenTextures(paramInt, paramIntBuffer);
    checkError();
  }

  public void glGenTextures(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    checkThread();
    this.mgl.glGenTextures(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public int glGetError()
  {
    checkThread();
    return this.mgl.glGetError();
  }

  public void glGetIntegerv(int paramInt, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glGetIntegerv(paramInt, paramIntBuffer);
    checkError();
  }

  public void glGetIntegerv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    checkThread();
    this.mgl.glGetIntegerv(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public String glGetString(int paramInt)
  {
    checkThread();
    String str = this.mgl.glGetString(paramInt);
    checkError();
    return str;
  }

  public void glHint(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glHint(paramInt1, paramInt2);
    checkError();
  }

  public void glLightModelf(int paramInt, float paramFloat)
  {
    checkThread();
    this.mgl.glLightModelf(paramInt, paramFloat);
    checkError();
  }

  public void glLightModelfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl.glLightModelfv(paramInt, paramFloatBuffer);
    checkError();
  }

  public void glLightModelfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    checkThread();
    this.mgl.glLightModelfv(paramInt1, paramArrayOfFloat, paramInt2);
    checkError();
  }

  public void glLightModelx(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glLightModelx(paramInt1, paramInt2);
    checkError();
  }

  public void glLightModelxv(int paramInt, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glLightModelxv(paramInt, paramIntBuffer);
    checkError();
  }

  public void glLightModelxv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    checkThread();
    this.mgl.glLightModelxv(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glLightf(int paramInt1, int paramInt2, float paramFloat)
  {
    checkThread();
    this.mgl.glLightf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glLightfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl.glLightfv(paramInt1, paramInt2, paramFloatBuffer);
    checkError();
  }

  public void glLightfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    checkThread();
    this.mgl.glLightfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
    checkError();
  }

  public void glLightx(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glLightx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glLightxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glLightxv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glLightxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    checkThread();
    this.mgl.glLightxv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glLineWidth(float paramFloat)
  {
    checkThread();
    this.mgl.glLineWidth(paramFloat);
    checkError();
  }

  public void glLineWidthx(int paramInt)
  {
    checkThread();
    this.mgl.glLineWidthx(paramInt);
    checkError();
  }

  public void glLoadIdentity()
  {
    checkThread();
    this.mgl.glLoadIdentity();
    checkError();
  }

  public void glLoadMatrixf(FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl.glLoadMatrixf(paramFloatBuffer);
    checkError();
  }

  public void glLoadMatrixf(float[] paramArrayOfFloat, int paramInt)
  {
    checkThread();
    this.mgl.glLoadMatrixf(paramArrayOfFloat, paramInt);
    checkError();
  }

  public void glLoadMatrixx(IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glLoadMatrixx(paramIntBuffer);
    checkError();
  }

  public void glLoadMatrixx(int[] paramArrayOfInt, int paramInt)
  {
    checkThread();
    this.mgl.glLoadMatrixx(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glLogicOp(int paramInt)
  {
    checkThread();
    this.mgl.glLogicOp(paramInt);
    checkError();
  }

  public void glMaterialf(int paramInt1, int paramInt2, float paramFloat)
  {
    checkThread();
    this.mgl.glMaterialf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glMaterialfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl.glMaterialfv(paramInt1, paramInt2, paramFloatBuffer);
    checkError();
  }

  public void glMaterialfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    checkThread();
    this.mgl.glMaterialfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
    checkError();
  }

  public void glMaterialx(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glMaterialx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glMaterialxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glMaterialxv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glMaterialxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    checkThread();
    this.mgl.glMaterialxv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glMatrixMode(int paramInt)
  {
    checkThread();
    this.mgl.glMatrixMode(paramInt);
    checkError();
  }

  public void glMultMatrixf(FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl.glMultMatrixf(paramFloatBuffer);
    checkError();
  }

  public void glMultMatrixf(float[] paramArrayOfFloat, int paramInt)
  {
    checkThread();
    this.mgl.glMultMatrixf(paramArrayOfFloat, paramInt);
    checkError();
  }

  public void glMultMatrixx(IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glMultMatrixx(paramIntBuffer);
    checkError();
  }

  public void glMultMatrixx(int[] paramArrayOfInt, int paramInt)
  {
    checkThread();
    this.mgl.glMultMatrixx(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glMultiTexCoord4f(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    checkThread();
    this.mgl.glMultiTexCoord4f(paramInt, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glMultiTexCoord4x(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    checkThread();
    this.mgl.glMultiTexCoord4x(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    checkError();
  }

  public void glNormal3f(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    checkThread();
    this.mgl.glNormal3f(paramFloat1, paramFloat2, paramFloat3);
    checkError();
  }

  public void glNormal3x(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glNormal3x(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glNormalPointer(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glNormalPointer(paramInt1, paramInt2, paramBuffer);
    checkError();
  }

  public void glOrthof(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    checkThread();
    this.mgl.glOrthof(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    checkError();
  }

  public void glOrthox(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    checkThread();
    this.mgl.glOrthox(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
    checkError();
  }

  public void glPixelStorei(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glPixelStorei(paramInt1, paramInt2);
    checkError();
  }

  public void glPointSize(float paramFloat)
  {
    checkThread();
    this.mgl.glPointSize(paramFloat);
    checkError();
  }

  public void glPointSizex(int paramInt)
  {
    checkThread();
    this.mgl.glPointSizex(paramInt);
    checkError();
  }

  public void glPolygonOffset(float paramFloat1, float paramFloat2)
  {
    checkThread();
    this.mgl.glPolygonOffset(paramFloat1, paramFloat2);
    checkError();
  }

  public void glPolygonOffsetx(int paramInt1, int paramInt2)
  {
    checkThread();
    this.mgl.glPolygonOffsetx(paramInt1, paramInt2);
    checkError();
  }

  public void glPopMatrix()
  {
    checkThread();
    this.mgl.glPopMatrix();
    checkError();
  }

  public void glPushMatrix()
  {
    checkThread();
    this.mgl.glPushMatrix();
    checkError();
  }

  public int glQueryMatrixxOES(IntBuffer paramIntBuffer1, IntBuffer paramIntBuffer2)
  {
    checkThread();
    int i = this.mgl10Ext.glQueryMatrixxOES(paramIntBuffer1, paramIntBuffer2);
    checkError();
    return i;
  }

  public int glQueryMatrixxOES(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2)
  {
    checkThread();
    int i = this.mgl10Ext.glQueryMatrixxOES(paramArrayOfInt1, paramInt1, paramArrayOfInt2, paramInt2);
    checkError();
    return i;
  }

  public void glReadPixels(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glReadPixels(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramBuffer);
    checkError();
  }

  public void glRotatef(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    checkThread();
    this.mgl.glRotatef(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glRotatex(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    checkThread();
    this.mgl.glRotatex(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glSampleCoverage(float paramFloat, boolean paramBoolean)
  {
    checkThread();
    this.mgl.glSampleCoverage(paramFloat, paramBoolean);
    checkError();
  }

  public void glSampleCoveragex(int paramInt, boolean paramBoolean)
  {
    checkThread();
    this.mgl.glSampleCoveragex(paramInt, paramBoolean);
    checkError();
  }

  public void glScalef(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    checkThread();
    this.mgl.glScalef(paramFloat1, paramFloat2, paramFloat3);
    checkError();
  }

  public void glScalex(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glScalex(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glScissor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    checkThread();
    this.mgl.glScissor(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glShadeModel(int paramInt)
  {
    checkThread();
    this.mgl.glShadeModel(paramInt);
    checkError();
  }

  public void glStencilFunc(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glStencilFunc(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glStencilMask(int paramInt)
  {
    checkThread();
    this.mgl.glStencilMask(paramInt);
    checkError();
  }

  public void glStencilOp(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glStencilOp(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glTexCoordPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glTexCoordPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glTexEnvf(int paramInt1, int paramInt2, float paramFloat)
  {
    checkThread();
    this.mgl.glTexEnvf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glTexEnvfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    checkThread();
    this.mgl.glTexEnvfv(paramInt1, paramInt2, paramFloatBuffer);
    checkError();
  }

  public void glTexEnvfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    checkThread();
    this.mgl.glTexEnvfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
    checkError();
  }

  public void glTexEnvx(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glTexEnvx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glTexEnvxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl.glTexEnvxv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glTexEnvxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    checkThread();
    this.mgl.glTexEnvxv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    checkError();
  }

  public void glTexParameterf(int paramInt1, int paramInt2, float paramFloat)
  {
    checkThread();
    this.mgl.glTexParameterf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    checkThread();
    this.mgl11.glTexParameteriv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glTexParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    checkThread();
    this.mgl11.glTexParameteriv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glTexParameterx(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glTexParameterx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    checkError();
  }

  public void glTranslatef(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    checkThread();
    this.mgl.glTranslatef(paramFloat1, paramFloat2, paramFloat3);
    checkError();
  }

  public void glTranslatex(int paramInt1, int paramInt2, int paramInt3)
  {
    checkThread();
    this.mgl.glTranslatex(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glVertexPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    checkThread();
    this.mgl.glVertexPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glViewport(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    checkThread();
    this.mgl.glViewport(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLErrorWrapper
 * JD-Core Version:    0.6.2
 */