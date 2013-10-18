package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Array;

public class DefaultGroupStrategy
  implements GroupStrategy
{
  private static final int GROUP_BLEND = 1;
  private static final int GROUP_OPAQUE;

  public void afterGroup(int paramInt)
  {
    if (paramInt == 1)
      Gdx.gl10.glDisable(3042);
  }

  public void afterGroups()
  {
    Gdx.gl10.glDisable(3553);
  }

  public void beforeGroup(int paramInt, Array<Decal> paramArray)
  {
    if (paramInt == 1)
      Gdx.gl10.glEnable(3042);
  }

  public void beforeGroups()
  {
    Gdx.gl10.glEnable(3553);
  }

  public int decideGroup(Decal paramDecal)
  {
    if (paramDecal.getMaterial().isOpaque())
      return 0;
    return 1;
  }

  public ShaderProgram getGroupShader(int paramInt)
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.DefaultGroupStrategy
 * JD-Core Version:    0.6.2
 */