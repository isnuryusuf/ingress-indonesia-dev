package com.badlogic.gdx.graphics;

import com.badlogic.gdx.assets.AssetLoaderParameters.LoadedCallback;
import com.badlogic.gdx.assets.AssetManager;

final class Texture$1
  implements AssetLoaderParameters.LoadedCallback
{
  Texture$1(int paramInt)
  {
  }

  public final void finishedLoading(AssetManager paramAssetManager, String paramString, Class paramClass)
  {
    paramAssetManager.setReferenceCount(paramString, this.val$refCount);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Texture.1
 * JD-Core Version:    0.6.2
 */