package com.badlogic.gdx.graphics;

public class TextureRef
{
  public String Name;
  private int mRefCount;
  private Texture mTexture;

  public TextureRef(String paramString, Texture paramTexture)
  {
    this.Name = paramString;
    this.mTexture = paramTexture;
    this.mRefCount = 1;
  }

  public void addRef()
  {
    this.mRefCount = (1 + this.mRefCount);
  }

  public void bind()
  {
    this.mTexture.bind();
  }

  public void dispose()
  {
    this.mTexture.dispose();
  }

  public Texture get()
  {
    return this.mTexture;
  }

  public int unload()
  {
    int i = -1 + this.mRefCount;
    this.mRefCount = i;
    if (i == 0)
    {
      this.mTexture.dispose();
      this.mTexture = null;
      TextureDict.removeTexture(this.Name);
    }
    return this.mRefCount;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.TextureRef
 * JD-Core Version:    0.6.2
 */