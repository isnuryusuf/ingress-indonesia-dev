package com.badlogic.gdx.graphics.g3d.keyframed;

import com.badlogic.gdx.graphics.g3d.Animation;

public class KeyframeAnimation extends Animation
{
  public Keyframe[] keyframes;
  public float length;
  public String name;
  public int refs;
  public float sampleRate;

  public KeyframeAnimation(String paramString, int paramInt, float paramFloat1, float paramFloat2)
  {
    this.name = paramString;
    this.keyframes = new Keyframe[paramInt];
    this.length = paramFloat1;
    this.sampleRate = paramFloat2;
    this.refs = 1;
  }

  public void addRef()
  {
    this.refs = (1 + this.refs);
  }

  public float getLength()
  {
    return this.length;
  }

  public int getNumFrames()
  {
    return this.keyframes.length;
  }

  public int removeRef()
  {
    int i = -1 + this.refs;
    this.refs = i;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.keyframed.KeyframeAnimation
 * JD-Core Version:    0.6.2
 */