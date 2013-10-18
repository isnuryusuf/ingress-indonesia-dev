package com.badlogic.gdx.physics.box2d;

public abstract interface ContactListener
{
  public abstract void beginContact(Contact paramContact);

  public abstract void endContact(Contact paramContact);

  public abstract void postSolve(Contact paramContact, ContactImpulse paramContactImpulse);

  public abstract void preSolve(Contact paramContact, Manifold paramManifold);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.ContactListener
 * JD-Core Version:    0.6.2
 */