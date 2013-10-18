package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;

public abstract class AsynchronousAssetLoader<T, P extends AssetLoaderParameters<T>> extends AssetLoader<T, P>
{
  public AsynchronousAssetLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public abstract void loadAsync(AssetManager paramAssetManager, String paramString, P paramP);

  public abstract T loadSync(AssetManager paramAssetManager, String paramString, P paramP);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
 * JD-Core Version:    0.6.2
 */