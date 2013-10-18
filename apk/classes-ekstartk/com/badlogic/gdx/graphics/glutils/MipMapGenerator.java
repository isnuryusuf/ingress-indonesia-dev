package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Application.ApplicationType;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Blending;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.ByteBuffer;

public class MipMapGenerator
{
  private static boolean useHWMipMap = true;

  public static void generateMipMap(Pixmap paramPixmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (!useHWMipMap)
    {
      generateMipMapCPU(paramPixmap, paramInt1, paramInt2, paramBoolean);
      return;
    }
    if (Gdx.app.getType() == Application.ApplicationType.Android)
    {
      if (Gdx.graphics.isGL20Available())
      {
        generateMipMapGLES20(paramPixmap, paramBoolean);
        return;
      }
      generateMipMapCPU(paramPixmap, paramInt1, paramInt2, paramBoolean);
      return;
    }
    generateMipMapDesktop(paramPixmap, paramInt1, paramInt2, paramBoolean);
  }

  private static void generateMipMapCPU(Pixmap paramPixmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Gdx.gl.glTexImage2D(3553, 0, paramPixmap.getGLInternalFormat(), paramPixmap.getWidth(), paramPixmap.getHeight(), 0, paramPixmap.getGLFormat(), paramPixmap.getGLType(), paramPixmap.getPixels());
    if ((Gdx.gl20 == null) && (paramInt1 != paramInt2))
      throw new GdxRuntimeException("texture width and height must be square when using mipmapping.");
    int i = paramPixmap.getWidth() / 2;
    int j = paramPixmap.getHeight() / 2;
    Pixmap.Blending localBlending = Pixmap.getBlending();
    Pixmap.setBlending(Pixmap.Blending.None);
    int k = 1;
    Pixmap localPixmap;
    for (Object localObject = paramPixmap; (i > 0) && (j > 0); localObject = localPixmap)
    {
      localPixmap = new Pixmap(i, j, ((Pixmap)localObject).getFormat());
      localPixmap.drawPixmap((Pixmap)localObject, 0, 0, ((Pixmap)localObject).getWidth(), ((Pixmap)localObject).getHeight(), 0, 0, i, j);
      if ((k > 1) || (paramBoolean))
        ((Pixmap)localObject).dispose();
      GLCommon localGLCommon = Gdx.gl;
      int m = localPixmap.getGLInternalFormat();
      int n = localPixmap.getWidth();
      int i1 = localPixmap.getHeight();
      int i2 = localPixmap.getGLFormat();
      int i3 = localPixmap.getGLType();
      ByteBuffer localByteBuffer = localPixmap.getPixels();
      localGLCommon.glTexImage2D(3553, k, m, n, i1, 0, i2, i3, localByteBuffer);
      i = localPixmap.getWidth() / 2;
      j = localPixmap.getHeight() / 2;
      k++;
    }
    Pixmap.setBlending(localBlending);
  }

  private static void generateMipMapDesktop(Pixmap paramPixmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if ((Gdx.graphics.isGL20Available()) && ((Gdx.graphics.supportsExtension("GL_ARB_framebuffer_object")) || (Gdx.graphics.supportsExtension("GL_EXT_framebuffer_object"))))
    {
      Gdx.gl.glTexImage2D(3553, 0, paramPixmap.getGLInternalFormat(), paramPixmap.getWidth(), paramPixmap.getHeight(), 0, paramPixmap.getGLFormat(), paramPixmap.getGLType(), paramPixmap.getPixels());
      Gdx.gl20.glGenerateMipmap(3553);
      if (paramBoolean)
        paramPixmap.dispose();
    }
    do
    {
      return;
      if (!Gdx.graphics.supportsExtension("GL_SGIS_generate_mipmap"))
        break;
      if ((Gdx.gl20 == null) && (paramInt1 != paramInt2))
        throw new GdxRuntimeException("texture width and height must be square when using mipmapping in OpenGL ES 1.x");
      Gdx.gl.glTexParameterf(3553, 33169, 1.0F);
      Gdx.gl.glTexImage2D(3553, 0, paramPixmap.getGLInternalFormat(), paramPixmap.getWidth(), paramPixmap.getHeight(), 0, paramPixmap.getGLFormat(), paramPixmap.getGLType(), paramPixmap.getPixels());
    }
    while (!paramBoolean);
    paramPixmap.dispose();
    return;
    generateMipMapCPU(paramPixmap, paramInt1, paramInt2, paramBoolean);
  }

  private static void generateMipMapGLES20(Pixmap paramPixmap, boolean paramBoolean)
  {
    Gdx.gl.glTexImage2D(3553, 0, paramPixmap.getGLInternalFormat(), paramPixmap.getWidth(), paramPixmap.getHeight(), 0, paramPixmap.getGLFormat(), paramPixmap.getGLType(), paramPixmap.getPixels());
    Gdx.gl20.glGenerateMipmap(3553);
    if (paramBoolean)
      paramPixmap.dispose();
  }

  public static void setUseHardwareMipMap(boolean paramBoolean)
  {
    useHWMipMap = paramBoolean;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.MipMapGenerator
 * JD-Core Version:    0.6.2
 */