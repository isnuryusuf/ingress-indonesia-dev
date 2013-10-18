package com.badlogic.gdx.graphics.g2d;

import java.io.BufferedReader;
import java.io.Writer;

public class ParticleEmitter$ParticleValue
{
  boolean active;
  boolean alwaysActive;

  public boolean isActive()
  {
    return (this.alwaysActive) || (this.active);
  }

  public boolean isAlwaysActive()
  {
    return this.alwaysActive;
  }

  public void load(ParticleValue paramParticleValue)
  {
    this.active = paramParticleValue.active;
    this.alwaysActive = paramParticleValue.alwaysActive;
  }

  public void load(BufferedReader paramBufferedReader)
  {
    if (!this.alwaysActive)
    {
      this.active = ParticleEmitter.readBoolean(paramBufferedReader, "active");
      return;
    }
    this.active = true;
  }

  public void save(Writer paramWriter)
  {
    if (!this.alwaysActive)
    {
      paramWriter.write("active: " + this.active + "\n");
      return;
    }
    this.active = true;
  }

  public void setActive(boolean paramBoolean)
  {
    this.active = paramBoolean;
  }

  public void setAlwaysActive(boolean paramBoolean)
  {
    this.alwaysActive = paramBoolean;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter.ParticleValue
 * JD-Core Version:    0.6.2
 */