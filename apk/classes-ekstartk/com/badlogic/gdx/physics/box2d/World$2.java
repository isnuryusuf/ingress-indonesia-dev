package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.utils.Pool;

class World$2 extends Pool<Fixture>
{
  World$2(World paramWorld, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }

  protected Fixture newObject()
  {
    return new Fixture(null, 0L);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.World.2
 * JD-Core Version:    0.6.2
 */