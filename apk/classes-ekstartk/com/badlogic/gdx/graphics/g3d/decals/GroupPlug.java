package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.utils.Array;

public abstract interface GroupPlug
{
  public abstract void afterGroup();

  public abstract void beforeGroup(Array<Decal> paramArray);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.GroupPlug
 * JD-Core Version:    0.6.2
 */