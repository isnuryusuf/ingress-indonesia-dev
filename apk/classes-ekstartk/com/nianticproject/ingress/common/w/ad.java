package com.nianticproject.ingress.common.w;

import a;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.b.j;
import com.nianticproject.ingress.common.x.i;

public final class ad
{
  private static final aa a = new aa(ad.class);
  private static final j<ShaderProgram> b = new j();

  public static ShaderProgram a(String paramString1, String paramString2, String paramString3)
  {
    ShaderProgram localShaderProgram = a.g(paramString1, paramString2, paramString3);
    if (!localShaderProgram.isCompiled())
    {
      aa localaa = a;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString3;
      arrayOfObject[1] = localShaderProgram.getLog();
      localaa.c("Shader failed to compile: shaderName %s\n%s", arrayOfObject);
      localShaderProgram = null;
    }
    return localShaderProgram;
  }

  public static void a(ShaderProgram paramShaderProgram, TextureRegion paramTextureRegion)
  {
    float f1 = paramTextureRegion.getU();
    float f2 = paramTextureRegion.getV();
    float f3 = paramTextureRegion.getU2();
    float f4 = paramTextureRegion.getV2();
    paramShaderProgram.setUniformf("u_texCoordBase", f1, f2);
    paramShaderProgram.setUniformf("u_texCoordExtent", f3 - f1, f4 - f2);
  }

  public static void a(ShaderProgram paramShaderProgram, String paramString, Color paramColor)
  {
    paramShaderProgram.setUniformf(paramString, paramColor.r, paramColor.g, paramColor.b, paramColor.a);
  }

  public static void a(ShaderProgram paramShaderProgram, String paramString, Color paramColor, float paramFloat)
  {
    paramShaderProgram.setUniformf(paramString, paramColor.r, paramColor.g, paramColor.b, paramFloat * paramColor.a);
  }

  public static void a(String paramString, ah<ShaderProgram> paramah)
  {
    b.a(paramString, new af(paramString));
    i.a().a(new ag("Fetch_" + paramString, paramah, paramString));
  }

  public static void a(String paramString1, String paramString2, ah<ShaderProgram> paramah)
  {
    a(paramString1, c.a(paramString1).readString(), c.a(paramString2).readString(), paramah);
  }

  public static void a(String paramString1, String paramString2, String paramString3, ah<ShaderProgram> paramah)
  {
    i.a().a(new ae(paramString1, paramah, paramString2, paramString3, paramString1));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.ad
 * JD-Core Version:    0.6.2
 */