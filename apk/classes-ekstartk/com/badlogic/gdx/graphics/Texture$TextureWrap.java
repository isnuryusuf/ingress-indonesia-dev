package com.badlogic.gdx.graphics;

public enum Texture$TextureWrap
{
  final int glEnum;

  static
  {
    TextureWrap[] arrayOfTextureWrap = new TextureWrap[2];
    arrayOfTextureWrap[0] = ClampToEdge;
    arrayOfTextureWrap[1] = Repeat;
  }

  private Texture$TextureWrap(int paramInt)
  {
    this.glEnum = paramInt;
  }

  public final int getGLEnum()
  {
    return this.glEnum;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Texture.TextureWrap
 * JD-Core Version:    0.6.2
 */