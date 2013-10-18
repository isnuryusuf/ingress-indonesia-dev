package com.badlogic.gdx.graphics.g2d;

public class TextureAtlas$AtlasSprite extends Sprite
{
  float originalOffsetX;
  float originalOffsetY;
  final TextureAtlas.AtlasRegion region;

  public TextureAtlas$AtlasSprite(TextureAtlas.AtlasRegion paramAtlasRegion)
  {
    this.region = new TextureAtlas.AtlasRegion(paramAtlasRegion);
    this.originalOffsetX = paramAtlasRegion.offsetX;
    this.originalOffsetY = paramAtlasRegion.offsetY;
    setRegion(paramAtlasRegion);
    setOrigin(paramAtlasRegion.originalWidth / 2.0F, paramAtlasRegion.originalHeight / 2.0F);
    int i = paramAtlasRegion.getRegionWidth();
    int j = paramAtlasRegion.getRegionHeight();
    if (paramAtlasRegion.rotate)
    {
      super.rotate90(true);
      super.setBounds(paramAtlasRegion.offsetX, paramAtlasRegion.offsetY, j, i);
    }
    while (true)
    {
      setColor(1.0F, 1.0F, 1.0F, 1.0F);
      return;
      super.setBounds(paramAtlasRegion.offsetX, paramAtlasRegion.offsetY, i, j);
    }
  }

  public TextureAtlas$AtlasSprite(AtlasSprite paramAtlasSprite)
  {
    this.region = paramAtlasSprite.region;
    this.originalOffsetX = paramAtlasSprite.originalOffsetX;
    this.originalOffsetY = paramAtlasSprite.originalOffsetY;
    set(paramAtlasSprite);
  }

  public void flip(boolean paramBoolean1, boolean paramBoolean2)
  {
    super.flip(paramBoolean1, paramBoolean2);
    float f1 = getOriginX();
    float f2 = getOriginY();
    float f3 = this.region.offsetX;
    float f4 = this.region.offsetY;
    float f5 = getWidthRatio();
    float f6 = getHeightRatio();
    this.region.offsetX = this.originalOffsetX;
    this.region.offsetY = this.originalOffsetY;
    this.region.flip(paramBoolean1, paramBoolean2);
    this.originalOffsetX = this.region.offsetX;
    this.originalOffsetY = this.region.offsetY;
    TextureAtlas.AtlasRegion localAtlasRegion1 = this.region;
    localAtlasRegion1.offsetX = (f5 * localAtlasRegion1.offsetX);
    TextureAtlas.AtlasRegion localAtlasRegion2 = this.region;
    localAtlasRegion2.offsetY = (f6 * localAtlasRegion2.offsetY);
    translate(this.region.offsetX - f3, this.region.offsetY - f4);
    setOrigin(f1, f2);
  }

  public TextureAtlas.AtlasRegion getAtlasRegion()
  {
    return this.region;
  }

  public float getHeight()
  {
    return super.getHeight() / this.region.getRotatedPackedHeight() * this.region.originalHeight;
  }

  public float getHeightRatio()
  {
    return super.getHeight() / this.region.getRotatedPackedHeight();
  }

  public float getOriginX()
  {
    return super.getOriginX() + this.region.offsetX;
  }

  public float getOriginY()
  {
    return super.getOriginY() + this.region.offsetY;
  }

  public float getWidth()
  {
    return super.getWidth() / this.region.getRotatedPackedWidth() * this.region.originalWidth;
  }

  public float getWidthRatio()
  {
    return super.getWidth() / this.region.getRotatedPackedWidth();
  }

  public float getX()
  {
    return super.getX() - this.region.offsetX;
  }

  public float getY()
  {
    return super.getY() - this.region.offsetY;
  }

  public void rotate90(boolean paramBoolean)
  {
    super.rotate90(paramBoolean);
    float f1 = getOriginX();
    float f2 = getOriginY();
    float f3 = this.region.offsetX;
    float f4 = this.region.offsetY;
    float f5 = getWidthRatio();
    float f6 = getHeightRatio();
    if (paramBoolean)
      this.region.offsetX = f4;
    for (this.region.offsetY = (f6 * this.region.originalHeight - f3 - f5 * this.region.packedWidth); ; this.region.offsetY = f3)
    {
      translate(this.region.offsetX - f3, this.region.offsetY - f4);
      setOrigin(f1, f2);
      return;
      this.region.offsetX = (f5 * this.region.originalWidth - f4 - f6 * this.region.packedHeight);
    }
  }

  public void setBounds(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat3 / this.region.originalWidth;
    float f2 = paramFloat4 / this.region.originalHeight;
    this.region.offsetX = (f1 * this.originalOffsetX);
    this.region.offsetY = (f2 * this.originalOffsetY);
    int i;
    if (this.region.rotate)
    {
      i = this.region.packedHeight;
      if (!this.region.rotate)
        break label138;
    }
    label138: for (int j = this.region.packedWidth; ; j = this.region.packedHeight)
    {
      super.setBounds(paramFloat1 + this.region.offsetX, paramFloat2 + this.region.offsetY, f1 * i, f2 * j);
      return;
      i = this.region.packedWidth;
      break;
    }
  }

  public void setOrigin(float paramFloat1, float paramFloat2)
  {
    super.setOrigin(paramFloat1 - this.region.offsetX, paramFloat2 - this.region.offsetY);
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    super.setPosition(paramFloat1 + this.region.offsetX, paramFloat2 + this.region.offsetY);
  }

  public void setSize(float paramFloat1, float paramFloat2)
  {
    setBounds(getX(), getY(), paramFloat1, paramFloat2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.TextureAtlas.AtlasSprite
 * JD-Core Version:    0.6.2
 */