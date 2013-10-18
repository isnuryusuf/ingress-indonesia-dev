package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.utils.Pool;

class World$1 extends Pool<Body>
{
  World$1(World paramWorld, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }

  protected Body newObject()
  {
    return new Body(this.this$0, 0L);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.World.1
 * JD-Core Version:    0.6.2
 */