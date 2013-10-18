package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;

class CameraGroupStrategy$1 extends Pool<Array<Decal>>
{
  CameraGroupStrategy$1(CameraGroupStrategy paramCameraGroupStrategy, int paramInt)
  {
    super(paramInt);
  }

  protected Array<Decal> newObject()
  {
    return new Array();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.CameraGroupStrategy.1
 * JD-Core Version:    0.6.2
 */