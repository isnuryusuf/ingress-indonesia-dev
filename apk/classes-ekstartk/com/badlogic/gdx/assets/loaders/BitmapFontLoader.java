package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.BitmapFontData;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Array;

public class BitmapFontLoader extends AsynchronousAssetLoader<BitmapFont, BitmapFontLoader.BitmapFontParameter>
{
  BitmapFont.BitmapFontData data;

  public BitmapFontLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, BitmapFontLoader.BitmapFontParameter paramBitmapFontParameter)
  {
    Array localArray = new Array();
    if ((paramBitmapFontParameter != null) && (paramBitmapFontParameter.bitmapFontData != null))
    {
      this.data = paramBitmapFontParameter.bitmapFontData;
      return localArray;
    }
    FileHandle localFileHandle = resolve(paramString);
    if (paramBitmapFontParameter != null);
    for (boolean bool = paramBitmapFontParameter.flip; ; bool = false)
    {
      this.data = new BitmapFont.BitmapFontData(localFileHandle, bool);
      localArray.add(new AssetDescriptor(this.data.getImagePath(), Texture.class));
      return localArray;
    }
  }

  public void loadAsync(AssetManager paramAssetManager, String paramString, BitmapFontLoader.BitmapFontParameter paramBitmapFontParameter)
  {
  }

  public BitmapFont loadSync(AssetManager paramAssetManager, String paramString, BitmapFontLoader.BitmapFontParameter paramBitmapFontParameter)
  {
    resolve(paramString);
    TextureRegion localTextureRegion = new TextureRegion((Texture)paramAssetManager.get(this.data.getImagePath(), Texture.class));
    if (paramBitmapFontParameter != null)
      localTextureRegion.getTexture().setFilter(paramBitmapFontParameter.minFitler, paramBitmapFontParameter.maxFilter);
    return new BitmapFont(this.data, localTextureRegion, true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.BitmapFontLoader
 * JD-Core Version:    0.6.2
 */