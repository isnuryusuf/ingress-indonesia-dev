package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;

public class Animation
{
  public static final int LOOP = 2;
  public static final int LOOP_PINGPONG = 4;
  public static final int LOOP_RANDOM = 5;
  public static final int LOOP_REVERSED = 3;
  public static final int NORMAL = 0;
  public static final int REVERSED = 1;
  public final float animationDuration;
  public final float frameDuration;
  final TextureRegion[] keyFrames;
  private int playMode = 0;

  public Animation(float paramFloat, Array<? extends TextureRegion> paramArray)
  {
    this.frameDuration = paramFloat;
    this.animationDuration = (paramFloat * paramArray.size);
    this.keyFrames = new TextureRegion[paramArray.size];
    int i = paramArray.size;
    for (int j = 0; j < i; j++)
      this.keyFrames[j] = ((TextureRegion)paramArray.get(j));
    this.playMode = 0;
  }

  public Animation(float paramFloat, Array<? extends TextureRegion> paramArray, int paramInt)
  {
    this.frameDuration = paramFloat;
    this.animationDuration = (paramFloat * paramArray.size);
    this.keyFrames = new TextureRegion[paramArray.size];
    int i = paramArray.size;
    for (int j = 0; j < i; j++)
      this.keyFrames[j] = ((TextureRegion)paramArray.get(j));
    this.playMode = paramInt;
  }

  public Animation(float paramFloat, TextureRegion[] paramArrayOfTextureRegion)
  {
    this.frameDuration = paramFloat;
    this.animationDuration = (paramFloat * paramArrayOfTextureRegion.length);
    this.keyFrames = paramArrayOfTextureRegion;
    this.playMode = 0;
  }

  public TextureRegion getKeyFrame(float paramFloat)
  {
    int i = (int)(paramFloat / this.frameDuration);
    int k;
    switch (this.playMode)
    {
    default:
      k = Math.min(-1 + this.keyFrames.length, i);
    case 0:
    case 2:
    case 4:
    case 5:
    case 1:
    case 3:
    }
    while (true)
    {
      return this.keyFrames[k];
      k = Math.min(-1 + this.keyFrames.length, i);
      continue;
      k = i % this.keyFrames.length;
      continue;
      k = i % (2 * this.keyFrames.length);
      if (k >= this.keyFrames.length)
      {
        k = -1 + this.keyFrames.length - (k - this.keyFrames.length);
        continue;
        k = MathUtils.random(-1 + this.keyFrames.length);
        continue;
        k = Math.max(-1 + (this.keyFrames.length - i), 0);
        continue;
        int j = i % this.keyFrames.length;
        k = -1 + (this.keyFrames.length - j);
      }
    }
  }

  public TextureRegion getKeyFrame(float paramFloat, boolean paramBoolean)
  {
    if ((paramBoolean) && ((this.playMode == 0) || (this.playMode == 1)))
    {
      if (this.playMode == 0)
        break label72;
      this.playMode = 3;
    }
    while (true)
    {
      return getKeyFrame(paramFloat);
      if ((!paramBoolean) && (this.playMode != 0) && (this.playMode != 1))
        if (this.playMode == 3)
          this.playMode = 1;
        else
          label72: this.playMode = 2;
    }
  }

  public boolean isAnimationFinished(float paramFloat)
  {
    int i = (int)(paramFloat / this.frameDuration);
    return -1 + this.keyFrames.length < i;
  }

  public void setPlayMode(int paramInt)
  {
    this.playMode = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.Animation
 * JD-Core Version:    0.6.2
 */