package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Texture;

public class TextureAtlas$AtlasRegion extends TextureRegion
{
  public int index;
  public String name;
  public float offsetX;
  public float offsetY;
  public int originalHeight;
  public int originalWidth;
  public int packedHeight;
  public int packedWidth;
  public int[] pads;
  public boolean rotate;
  public int[] splits;

  public TextureAtlas$AtlasRegion(Texture paramTexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramTexture, paramInt1, paramInt2, paramInt3, paramInt4);
    this.originalWidth = paramInt3;
    this.originalHeight = paramInt4;
    this.packedWidth = paramInt3;
    this.packedHeight = paramInt4;
  }

  public TextureAtlas$AtlasRegion(AtlasRegion paramAtlasRegion)
  {
    setRegion(paramAtlasRegion);
    this.index = paramAtlasRegion.index;
    this.name = paramAtlasRegion.name;
    this.offsetX = paramAtlasRegion.offsetX;
    this.offsetY = paramAtlasRegion.offsetY;
    this.packedWidth = paramAtlasRegion.packedWidth;
    this.packedHeight = paramAtlasRegion.packedHeight;
    this.originalWidth = paramAtlasRegion.originalWidth;
    this.originalHeight = paramAtlasRegion.originalHeight;
    this.rotate = paramAtlasRegion.rotate;
    this.splits = paramAtlasRegion.splits;
  }

  public void flip(boolean paramBoolean1, boolean paramBoolean2)
  {
    super.flip(paramBoolean1, paramBoolean2);
    if (paramBoolean1)
      this.offsetX = (this.originalWidth - this.offsetX - getRotatedPackedWidth());
    if (paramBoolean2)
      this.offsetY = (this.originalHeight - this.offsetY - getRotatedPackedHeight());
  }

  public float getRotatedPackedHeight()
  {
    if (this.rotate)
      return this.packedWidth;
    return this.packedHeight;
  }

  public float getRotatedPackedWidth()
  {
    if (this.rotate)
      return this.packedHeight;
    return this.packedWidth;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.TextureAtlas.AtlasRegion
 * JD-Core Version:    0.6.2
 */