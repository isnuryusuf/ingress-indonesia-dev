package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;

public abstract class SynchronousAssetLoader<T, P extends AssetLoaderParameters<T>> extends AssetLoader<T, P>
{
  public SynchronousAssetLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public abstract T load(AssetManager paramAssetManager, String paramString, P paramP);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.SynchronousAssetLoader
 * JD-Core Version:    0.6.2
 */