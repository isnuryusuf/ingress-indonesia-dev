package com.badlogic.gdx.physics.box2d;

public abstract interface ContactFilter
{
  public abstract boolean shouldCollide(Fixture paramFixture1, Fixture paramFixture2);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.ContactFilter
 * JD-Core Version:    0.6.2
 */