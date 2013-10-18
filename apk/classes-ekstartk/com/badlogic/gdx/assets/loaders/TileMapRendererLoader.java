package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g2d.tiled.TileAtlas;
import com.badlogic.gdx.graphics.g2d.tiled.TileMapRenderer;
import com.badlogic.gdx.graphics.g2d.tiled.TiledLoader;
import com.badlogic.gdx.graphics.g2d.tiled.TiledMap;
import com.badlogic.gdx.utils.Array;

public class TileMapRendererLoader extends SynchronousAssetLoader<TileMapRenderer, TileMapRendererLoader.TileMapParameter>
{
  public TileMapRendererLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, TileMapRendererLoader.TileMapParameter paramTileMapParameter)
  {
    if (paramTileMapParameter == null)
      throw new IllegalArgumentException("Missing TileMapRendererParameter: " + paramString);
    return null;
  }

  public TileMapRenderer load(AssetManager paramAssetManager, String paramString, TileMapRendererLoader.TileMapParameter paramTileMapParameter)
  {
    TiledMap localTiledMap = TiledLoader.createMap(resolve(paramString));
    TileAtlas localTileAtlas = new TileAtlas(localTiledMap, resolve(paramTileMapParameter.imageDirectory));
    if ((paramTileMapParameter.unitsPerTileX == 0.0F) || (paramTileMapParameter.unitsPerTileY == 0.0F))
      return new TileMapRenderer(localTiledMap, localTileAtlas, paramTileMapParameter.tilesPerBlockX, paramTileMapParameter.tilesPerBlockY);
    return new TileMapRenderer(localTiledMap, localTileAtlas, paramTileMapParameter.tilesPerBlockX, paramTileMapParameter.tilesPerBlockY, paramTileMapParameter.unitsPerTileX, paramTileMapParameter.unitsPerTileY);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.TileMapRendererLoader
 * JD-Core Version:    0.6.2
 */