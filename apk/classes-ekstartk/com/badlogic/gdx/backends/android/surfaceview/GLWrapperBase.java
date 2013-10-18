package com.badlogic.gdx.backends.android.surfaceview;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL10Ext;
import javax.microedition.khronos.opengles.GL11;
import javax.microedition.khronos.opengles.GL11Ext;
import javax.microedition.khronos.opengles.GL11ExtensionPack;

abstract class GLWrapperBase
  implements GL, GL10, GL10Ext, GL11, GL11Ext
{
  protected GL10 mgl;
  protected GL10Ext mgl10Ext;
  protected GL11 mgl11;
  protected GL11Ext mgl11Ext;
  protected GL11ExtensionPack mgl11ExtensionPack;

  public GLWrapperBase(GL paramGL)
  {
    this.mgl = ((GL10)paramGL);
    if ((paramGL instanceof GL10Ext))
      this.mgl10Ext = ((GL10Ext)paramGL);
    if ((paramGL instanceof GL11))
      this.mgl11 = ((GL11)paramGL);
    if ((paramGL instanceof GL11Ext))
      this.mgl11Ext = ((GL11Ext)paramGL);
    if ((paramGL instanceof GL11ExtensionPack))
      this.mgl11ExtensionPack = ((GL11ExtensionPack)paramGL);
  }

  public void glBindBuffer(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glBindFramebufferOES(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glBindRenderbufferOES(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glBlendEquation(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public void glBlendEquationSeparate(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glBlendFuncSeparate(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glBufferData(int paramInt1, int paramInt2, Buffer paramBuffer, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glBufferSubData(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    throw new UnsupportedOperationException();
  }

  int glCheckFramebufferStatusOES(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public void glColor4ub(byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4)
  {
    throw new UnsupportedOperationException();
  }

  public void glColorPointer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glCompressedTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    throw new UnsupportedOperationException();
  }

  public void glCurrentPaletteMatrixOES(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteBuffers(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteFramebuffersOES(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteFramebuffersOES(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteRenderbuffersOES(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteRenderbuffersOES(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glDrawElements(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glFramebufferRenderbufferOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glFramebufferTexture2DOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenBuffers(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenFramebuffersOES(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenFramebuffersOES(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenRenderbuffersOES(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenRenderbuffersOES(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenerateMipmapOES(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetBooleanv(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetBooleanv(int paramInt1, boolean[] paramArrayOfBoolean, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetBufferParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetBufferParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanef(int paramInt, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanef(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanex(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanex(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFixedv(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFixedv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFloatv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFloatv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFramebufferAttachmentParameterivOES(int paramInt1, int paramInt2, int paramInt3, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFramebufferAttachmentParameterivOES(int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetLightfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetLightfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetLightxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetLightxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetPointerv(int paramInt, Buffer[] paramArrayOfBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetRenderbufferParameterivOES(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetRenderbufferParameterivOES(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexEnviv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexEnviv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexEnvxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexEnvxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexGenfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexGenfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexGeniv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexGeniv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexGenxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexGenxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public boolean glIsBuffer(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean glIsEnabled(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean glIsFramebufferOES(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean glIsRenderbufferOES(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean glIsTexture(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public void glLoadPaletteFromModelViewMatrixOES()
  {
    throw new UnsupportedOperationException();
  }

  public void glMatrixIndexPointerOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glMatrixIndexPointerOES(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glNormalPointer(int paramInt1, int paramInt2, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterf(int paramInt, float paramFloat)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterx(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterxv(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterxv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointSizePointerOES(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glRenderbufferStorageOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexCoordPointer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexEnvi(int paramInt1, int paramInt2, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexEnviv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexEnviv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGenf(int paramInt1, int paramInt2, float paramFloat)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGenfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGenfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGeni(int paramInt1, int paramInt2, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGeniv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGeniv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGenx(int paramInt1, int paramInt2, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGenxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexGenxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameterfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameteri(int paramInt1, int paramInt2, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameterxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameterxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glVertexPointer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glWeightPointerOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException();
  }

  public void glWeightPointerOES(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLWrapperBase
 * JD-Core Version:    0.6.2
 */