package com.badlogic.gdx.graphics.g2d;

public enum ParticleEmitter$SpawnShape
{
  static
  {
    line = new SpawnShape("line", 1);
    square = new SpawnShape("square", 2);
    ellipse = new SpawnShape("ellipse", 3);
    SpawnShape[] arrayOfSpawnShape = new SpawnShape[4];
    arrayOfSpawnShape[0] = point;
    arrayOfSpawnShape[1] = line;
    arrayOfSpawnShape[2] = square;
    arrayOfSpawnShape[3] = ellipse;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter.SpawnShape
 * JD-Core Version:    0.6.2
 */