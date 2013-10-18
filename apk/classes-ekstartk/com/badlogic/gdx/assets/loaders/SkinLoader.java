package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Array;

public class SkinLoader extends AsynchronousAssetLoader<Skin, SkinLoader.SkinParameter>
{
  public SkinLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, SkinLoader.SkinParameter paramSkinParameter)
  {
    Array localArray = new Array();
    if (paramSkinParameter == null)
    {
      localArray.add(new AssetDescriptor(resolve(paramString).pathWithoutExtension() + ".atlas", TextureAtlas.class));
      return localArray;
    }
    localArray.add(new AssetDescriptor(paramSkinParameter.textureAtlasPath, TextureAtlas.class));
    return localArray;
  }

  public void loadAsync(AssetManager paramAssetManager, String paramString, SkinLoader.SkinParameter paramSkinParameter)
  {
  }

  public Skin loadSync(AssetManager paramAssetManager, String paramString, SkinLoader.SkinParameter paramSkinParameter)
  {
    if (paramSkinParameter == null);
    for (String str = resolve(paramString).pathWithoutExtension() + ".atlas"; ; str = paramSkinParameter.textureAtlasPath)
    {
      TextureAtlas localTextureAtlas = (TextureAtlas)paramAssetManager.get(str, TextureAtlas.class);
      return new Skin(resolve(paramString), localTextureAtlas);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.SkinLoader
 * JD-Core Version:    0.6.2
 */