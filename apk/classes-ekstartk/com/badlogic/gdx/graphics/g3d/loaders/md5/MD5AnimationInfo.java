package com.badlogic.gdx.graphics.g3d.loaders.md5;

public class MD5AnimationInfo
{
  int currFrame = 0;
  float lastTime;
  int maxFrame;
  float maxTime;
  int nextFrame = 1;

  public MD5AnimationInfo(int paramInt, float paramFloat)
  {
    this.maxFrame = paramInt;
    this.maxTime = paramFloat;
  }

  public int getCurrentFrame()
  {
    return this.currFrame;
  }

  public float getInterpolation()
  {
    return this.lastTime / this.maxTime;
  }

  public int getNextFrame()
  {
    return this.nextFrame;
  }

  public void reset()
  {
    reset(this.maxFrame, this.maxTime);
  }

  public void reset(int paramInt, float paramFloat)
  {
    this.maxFrame = paramInt;
    this.maxTime = paramFloat;
    this.currFrame = 0;
    this.nextFrame = 1;
    this.lastTime = 0.0F;
  }

  public void update(float paramFloat)
  {
    this.lastTime = (paramFloat + this.lastTime);
    this.lastTime %= this.maxTime * this.maxFrame;
    while (this.lastTime >= this.maxTime)
    {
      this.currFrame = (1 + this.currFrame);
      this.nextFrame = (1 + this.nextFrame);
      this.lastTime -= this.maxTime;
      if (this.currFrame >= this.maxFrame)
        this.currFrame = 0;
      if (this.nextFrame >= this.maxFrame)
        this.nextFrame = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5AnimationInfo
 * JD-Core Version:    0.6.2
 */