package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;

public class DecalMaterial
{
  public static final int NO_BLEND = -1;
  protected int dstBlendFactor;
  protected int srcBlendFactor;
  protected TextureRegion textureRegion;

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    DecalMaterial localDecalMaterial;
    do
    {
      return false;
      localDecalMaterial = (DecalMaterial)paramObject;
    }
    while ((this.dstBlendFactor != localDecalMaterial.dstBlendFactor) || (this.srcBlendFactor != localDecalMaterial.srcBlendFactor) || (this.textureRegion.getTexture() != localDecalMaterial.textureRegion.getTexture()));
    return true;
  }

  public int getDstBlendFactor()
  {
    return this.dstBlendFactor;
  }

  public int getSrcBlendFactor()
  {
    return this.srcBlendFactor;
  }

  public int hashCode()
  {
    if (this.textureRegion.getTexture() != null);
    for (int i = this.textureRegion.getTexture().hashCode(); ; i = 0)
      return 31 * (i * 31 + this.srcBlendFactor) + this.dstBlendFactor;
  }

  public boolean isOpaque()
  {
    return this.srcBlendFactor == -1;
  }

  public void set()
  {
    this.textureRegion.getTexture().bind();
    if (!isOpaque())
      Gdx.gl.glBlendFunc(this.srcBlendFactor, this.dstBlendFactor);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.DecalMaterial
 * JD-Core Version:    0.6.2
 */