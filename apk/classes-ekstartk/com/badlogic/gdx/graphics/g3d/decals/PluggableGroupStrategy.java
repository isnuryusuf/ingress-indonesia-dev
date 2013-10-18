package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntMap;

public abstract class PluggableGroupStrategy
  implements GroupStrategy
{
  private IntMap<GroupPlug> plugs = new IntMap();

  public void afterGroup(int paramInt)
  {
    ((GroupPlug)this.plugs.get(paramInt)).afterGroup();
  }

  public void beforeGroup(int paramInt, Array<Decal> paramArray)
  {
    ((GroupPlug)this.plugs.get(paramInt)).beforeGroup(paramArray);
  }

  public void plugIn(GroupPlug paramGroupPlug, int paramInt)
  {
    this.plugs.put(paramInt, paramGroupPlug);
  }

  public GroupPlug unPlug(int paramInt)
  {
    return (GroupPlug)this.plugs.remove(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.PluggableGroupStrategy
 * JD-Core Version:    0.6.2
 */