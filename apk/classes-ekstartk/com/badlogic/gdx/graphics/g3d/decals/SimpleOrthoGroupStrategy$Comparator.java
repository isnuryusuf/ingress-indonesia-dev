package com.badlogic.gdx.graphics.g3d.decals;

import java.util.Comparator;

class SimpleOrthoGroupStrategy$Comparator
  implements Comparator<Decal>
{
  SimpleOrthoGroupStrategy$Comparator(SimpleOrthoGroupStrategy paramSimpleOrthoGroupStrategy)
  {
  }

  public int compare(Decal paramDecal1, Decal paramDecal2)
  {
    if (paramDecal1.getZ() - paramDecal2.getZ() < 0.0F)
      return -1;
    return 1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.SimpleOrthoGroupStrategy.Comparator
 * JD-Core Version:    0.6.2
 */