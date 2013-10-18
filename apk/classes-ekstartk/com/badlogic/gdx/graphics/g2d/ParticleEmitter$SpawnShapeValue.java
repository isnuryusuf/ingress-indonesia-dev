package com.badlogic.gdx.graphics.g2d;

import java.io.BufferedReader;
import java.io.Writer;

public class ParticleEmitter$SpawnShapeValue extends ParticleEmitter.ParticleValue
{
  boolean edges;
  ParticleEmitter.SpawnShape shape = ParticleEmitter.SpawnShape.point;
  ParticleEmitter.SpawnEllipseSide side = ParticleEmitter.SpawnEllipseSide.both;

  public ParticleEmitter.SpawnShape getShape()
  {
    return this.shape;
  }

  public ParticleEmitter.SpawnEllipseSide getSide()
  {
    return this.side;
  }

  public boolean isEdges()
  {
    return this.edges;
  }

  public void load(SpawnShapeValue paramSpawnShapeValue)
  {
    super.load(paramSpawnShapeValue);
    this.shape = paramSpawnShapeValue.shape;
    this.edges = paramSpawnShapeValue.edges;
    this.side = paramSpawnShapeValue.side;
  }

  public void load(BufferedReader paramBufferedReader)
  {
    super.load(paramBufferedReader);
    if (!this.active);
    do
    {
      return;
      this.shape = ParticleEmitter.SpawnShape.valueOf(ParticleEmitter.readString(paramBufferedReader, "shape"));
    }
    while (this.shape != ParticleEmitter.SpawnShape.ellipse);
    this.edges = ParticleEmitter.readBoolean(paramBufferedReader, "edges");
    this.side = ParticleEmitter.SpawnEllipseSide.valueOf(ParticleEmitter.readString(paramBufferedReader, "side"));
  }

  public void save(Writer paramWriter)
  {
    super.save(paramWriter);
    if (!this.active);
    do
    {
      return;
      paramWriter.write("shape: " + this.shape + "\n");
    }
    while (this.shape != ParticleEmitter.SpawnShape.ellipse);
    paramWriter.write("edges: " + this.edges + "\n");
    paramWriter.write("side: " + this.side + "\n");
  }

  public void setEdges(boolean paramBoolean)
  {
    this.edges = paramBoolean;
  }

  public void setShape(ParticleEmitter.SpawnShape paramSpawnShape)
  {
    this.shape = paramSpawnShape;
  }

  public void setSide(ParticleEmitter.SpawnEllipseSide paramSpawnEllipseSide)
  {
    this.side = paramSpawnEllipseSide;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter.SpawnShapeValue
 * JD-Core Version:    0.6.2
 */