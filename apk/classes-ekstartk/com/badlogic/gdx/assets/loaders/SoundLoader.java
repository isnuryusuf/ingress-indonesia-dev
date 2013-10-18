package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.Audio;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.utils.Array;

public class SoundLoader extends SynchronousAssetLoader<Sound, SoundLoader.SoundParameter>
{
  public SoundLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, SoundLoader.SoundParameter paramSoundParameter)
  {
    return null;
  }

  public Sound load(AssetManager paramAssetManager, String paramString, SoundLoader.SoundParameter paramSoundParameter)
  {
    return Gdx.audio.newSound(resolve(paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.SoundLoader
 * JD-Core Version:    0.6.2
 */