package com.badlogic.gdx.graphics.g3d.loaders;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.g3d.loaders.obj.ObjLoader;
import java.io.InputStream;

public class ModelLoaderOld
{
  public static Mesh loadObj(InputStream paramInputStream)
  {
    return ObjLoader.loadObj(paramInputStream);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.ModelLoaderOld
 * JD-Core Version:    0.6.2
 */