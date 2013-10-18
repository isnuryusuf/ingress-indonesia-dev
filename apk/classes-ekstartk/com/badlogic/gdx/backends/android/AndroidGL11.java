package com.badlogic.gdx.backends.android;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;

final class AndroidGL11 extends AndroidGL10
  implements com.badlogic.gdx.graphics.GL11
{
  private final javax.microedition.khronos.opengles.GL11 gl;

  public AndroidGL11(GL10 paramGL10)
  {
    super(paramGL10);
    this.gl = ((javax.microedition.khronos.opengles.GL11)paramGL10);
  }

  public final void glBindBuffer(int paramInt1, int paramInt2)
  {
    this.gl.glBindBuffer(paramInt1, paramInt2);
  }

  public final void glBufferData(int paramInt1, int paramInt2, Buffer paramBuffer, int paramInt3)
  {
    this.gl.glBufferData(paramInt1, paramInt2, paramBuffer, paramInt3);
  }

  public final void glBufferSubData(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.gl.glBufferSubData(paramInt1, paramInt2, paramInt3, paramBuffer);
  }

  public final void glClipPlanef(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.gl.glClipPlanef(paramInt, paramFloatBuffer);
  }

  public final void glClipPlanef(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    this.gl.glClipPlanef(paramInt1, paramArrayOfFloat, paramInt2);
  }

  public final void glColor4ub(byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4)
  {
    this.gl.glColor4ub(paramByte1, paramByte2, paramByte3, paramByte4);
  }

  public final void glColorPointer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.gl.glColorPointer(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void glDeleteBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    this.gl.glDeleteBuffers(paramInt, paramIntBuffer);
  }

  public final void glDeleteBuffers(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    this.gl.glDeleteBuffers(paramInt1, paramArrayOfInt, paramInt2);
  }

  public final void glDrawElements(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.gl.glDrawElements(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void glGenBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    this.gl.glGenBuffers(paramInt, paramIntBuffer);
  }

  public final void glGenBuffers(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    this.gl.glGenBuffers(paramInt1, paramArrayOfInt, paramInt2);
  }

  public final void glGetBooleanv(int paramInt, IntBuffer paramIntBuffer)
  {
    this.gl.glGetBooleanv(paramInt, paramIntBuffer);
  }

  public final void glGetBooleanv(int paramInt1, boolean[] paramArrayOfBoolean, int paramInt2)
  {
    this.gl.glGetBooleanv(paramInt1, paramArrayOfBoolean, paramInt2);
  }

  public final void glGetBufferParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.gl.glGetBufferParameteriv(paramInt1, paramInt2, paramIntBuffer);
  }

  public final void glGetBufferParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    this.gl.glGetBufferParameteriv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
  }

  public final void glGetClipPlanef(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.gl.glGetClipPlanef(paramInt, paramFloatBuffer);
  }

  public final void glGetClipPlanef(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    this.gl.glGetClipPlanef(paramInt1, paramArrayOfFloat, paramInt2);
  }

  public final void glGetFloatv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.gl.glGetFloatv(paramInt, paramFloatBuffer);
  }

  public final void glGetFloatv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    this.gl.glGetFloatv(paramInt1, paramArrayOfFloat, paramInt2);
  }

  public final void glGetLightfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.gl.glGetLightfv(paramInt1, paramInt2, paramFloatBuffer);
  }

  public final void glGetLightfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    this.gl.glGetLightfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
  }

  public final void glGetMaterialfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.gl.glGetMaterialfv(paramInt1, paramInt2, paramFloatBuffer);
  }

  public final void glGetMaterialfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    this.gl.glGetMaterialfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
  }

  public final void glGetPointerv(int paramInt, Buffer[] paramArrayOfBuffer)
  {
    this.gl.glGetPointerv(paramInt, paramArrayOfBuffer);
  }

  public final void glGetTexEnviv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.gl.glGetTexEnviv(paramInt1, paramInt2, paramIntBuffer);
  }

  public final void glGetTexEnviv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    this.gl.glGetTexEnviv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
  }

  public final void glGetTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.gl.glGetTexParameterfv(paramInt1, paramInt2, paramFloatBuffer);
  }

  public final void glGetTexParameterfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    this.gl.glGetTexParameterfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
  }

  public final void glGetTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.gl.glGetTexParameteriv(paramInt1, paramInt2, paramIntBuffer);
  }

  public final void glGetTexParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    this.gl.glGetTexParameteriv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
  }

  public final boolean glIsBuffer(int paramInt)
  {
    return this.gl.glIsBuffer(paramInt);
  }

  public final boolean glIsEnabled(int paramInt)
  {
    return this.gl.glIsEnabled(paramInt);
  }

  public final boolean glIsTexture(int paramInt)
  {
    return this.gl.glIsTexture(paramInt);
  }

  public final void glNormalPointer(int paramInt1, int paramInt2, int paramInt3)
  {
    this.gl.glNormalPointer(paramInt1, paramInt2, paramInt3);
  }

  public final void glPointParameterf(int paramInt, float paramFloat)
  {
    this.gl.glPointParameterf(paramInt, paramFloat);
  }

  public final void glPointParameterfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.gl.glPointParameterfv(paramInt, paramFloatBuffer);
  }

  public final void glPointParameterfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    this.gl.glPointParameterfv(paramInt1, paramArrayOfFloat, paramInt2);
  }

  public final void glPointSizePointerOES(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    this.gl.glPointSizePointerOES(paramInt1, paramInt2, paramBuffer);
  }

  public final void glTexCoordPointer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.gl.glTexCoordPointer(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void glTexEnvi(int paramInt1, int paramInt2, int paramInt3)
  {
    this.gl.glTexEnvi(paramInt1, paramInt2, paramInt3);
  }

  public final void glTexEnviv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.gl.glTexEnviv(paramInt1, paramInt2, paramIntBuffer);
  }

  public final void glTexEnviv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    this.gl.glTexEnviv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
  }

  public final void glTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.gl.glTexParameterfv(paramInt1, paramInt2, paramFloatBuffer);
  }

  public final void glTexParameterfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    this.gl.glTexParameterfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
  }

  public final void glTexParameteri(int paramInt1, int paramInt2, int paramInt3)
  {
    this.gl.glTexParameteri(paramInt1, paramInt2, paramInt3);
  }

  public final void glTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.gl.glTexParameteriv(paramInt1, paramInt2, paramIntBuffer);
  }

  public final void glTexParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    this.gl.glTexParameteriv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
  }

  public final void glVertexPointer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.gl.glVertexPointer(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidGL11
 * JD-Core Version:    0.6.2
 */