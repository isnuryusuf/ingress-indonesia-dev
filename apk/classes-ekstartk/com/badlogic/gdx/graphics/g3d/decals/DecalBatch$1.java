package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;

class DecalBatch$1 extends Pool<Array<Decal>>
{
  DecalBatch$1(DecalBatch paramDecalBatch, int paramInt)
  {
    super(paramInt);
  }

  protected Array<Decal> newObject()
  {
    return new Array(false, 100);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.DecalBatch.1
 * JD-Core Version:    0.6.2
 */