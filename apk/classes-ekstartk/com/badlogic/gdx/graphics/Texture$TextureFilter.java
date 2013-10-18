package com.badlogic.gdx.graphics;

public enum Texture$TextureFilter
{
  final int glEnum;

  static
  {
    Linear = new TextureFilter("Linear", 1, 9729);
    MipMap = new TextureFilter("MipMap", 2, 9987);
    MipMapNearestNearest = new TextureFilter("MipMapNearestNearest", 3, 9984);
    MipMapLinearNearest = new TextureFilter("MipMapLinearNearest", 4, 9985);
    MipMapNearestLinear = new TextureFilter("MipMapNearestLinear", 5, 9986);
    MipMapLinearLinear = new TextureFilter("MipMapLinearLinear", 6, 9987);
    TextureFilter[] arrayOfTextureFilter = new TextureFilter[7];
    arrayOfTextureFilter[0] = Nearest;
    arrayOfTextureFilter[1] = Linear;
    arrayOfTextureFilter[2] = MipMap;
    arrayOfTextureFilter[3] = MipMapNearestNearest;
    arrayOfTextureFilter[4] = MipMapLinearNearest;
    arrayOfTextureFilter[5] = MipMapNearestLinear;
    arrayOfTextureFilter[6] = MipMapLinearLinear;
  }

  private Texture$TextureFilter(int paramInt)
  {
    this.glEnum = paramInt;
  }

  public final int getGLEnum()
  {
    return this.glEnum;
  }

  public final boolean isMipMap()
  {
    return (this.glEnum != 9728) && (this.glEnum != 9729);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Texture.TextureFilter
 * JD-Core Version:    0.6.2
 */