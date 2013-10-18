package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g2d.tiled.TileAtlas;
import com.badlogic.gdx.graphics.g2d.tiled.TiledMap;
import com.badlogic.gdx.utils.Array;

public class TileAtlasLoader extends AsynchronousAssetLoader<TileAtlas, TileAtlasLoader.TileAtlasParameter>
{
  public TileAtlasLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, TileAtlasLoader.TileAtlasParameter paramTileAtlasParameter)
  {
    if (paramTileAtlasParameter == null)
      throw new IllegalArgumentException("Missing TileAtlasParameter: " + paramString);
    Array localArray = new Array();
    localArray.add(new AssetDescriptor(paramTileAtlasParameter.tileMapFile, TiledMap.class));
    return localArray;
  }

  public void loadAsync(AssetManager paramAssetManager, String paramString, TileAtlasLoader.TileAtlasParameter paramTileAtlasParameter)
  {
    if (paramTileAtlasParameter == null)
      throw new IllegalArgumentException("Missing TileAtlasParameter: " + paramString);
  }

  public TileAtlas loadSync(AssetManager paramAssetManager, String paramString, TileAtlasLoader.TileAtlasParameter paramTileAtlasParameter)
  {
    if (paramTileAtlasParameter == null)
      throw new IllegalArgumentException("Missing TileAtlasParameter: " + paramString);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.TileAtlasLoader
 * JD-Core Version:    0.6.2
 */