package com.badlogic.gdx.graphics.g3d;

public abstract class Animator
{
  protected float mAnimLen = 0.0F;
  protected float mAnimPos = 0.0F;
  protected Animation mCurrentAnim = null;
  protected int mCurrentFrameIdx = -1;
  protected float mFrameDelta = 0.0F;
  protected int mNextFrameIdx = -1;
  protected Animator.WrapMode mWrapMode = Animator.WrapMode.Clamp;

  public Animation getCurrentAnimation()
  {
    return this.mCurrentAnim;
  }

  public Animator.WrapMode getCurrentWrapMode()
  {
    return this.mWrapMode;
  }

  protected abstract void interpolate();

  public void setAnimation(Animation paramAnimation, Animator.WrapMode paramWrapMode)
  {
    this.mCurrentAnim = paramAnimation;
    this.mWrapMode = paramWrapMode;
    this.mFrameDelta = 0.0F;
    this.mAnimPos = 0.0F;
    this.mCurrentFrameIdx = -1;
    this.mNextFrameIdx = -1;
    if (this.mCurrentAnim != null)
      this.mAnimLen = this.mCurrentAnim.getLength();
  }

  protected abstract void setInterpolationFrames();

  public void update(float paramFloat)
  {
    int j;
    if (this.mCurrentAnim != null)
    {
      if (this.mWrapMode != Animator.WrapMode.SingleFrame)
      {
        this.mAnimPos = (paramFloat + this.mAnimPos);
        if (this.mAnimPos > this.mAnimLen)
        {
          if (this.mWrapMode != Animator.WrapMode.Loop)
            break label140;
          this.mAnimPos = 0.0F;
        }
      }
      float f = this.mAnimPos / this.mAnimLen;
      int i = this.mCurrentAnim.getNumFrames();
      j = Math.min(i - 1, (int)(f * i));
      if (j != this.mCurrentFrameIdx)
      {
        if (j >= i - 1)
          break label161;
        this.mNextFrameIdx = (j + 1);
      }
    }
    while (true)
    {
      this.mFrameDelta = 0.0F;
      this.mCurrentFrameIdx = j;
      this.mFrameDelta = (paramFloat + this.mFrameDelta);
      setInterpolationFrames();
      interpolate();
      return;
      label140: if (this.mWrapMode != Animator.WrapMode.Clamp)
        break;
      this.mAnimPos = this.mAnimLen;
      break;
      label161: switch (Animator.1.$SwitchMap$com$badlogic$gdx$graphics$g3d$Animator$WrapMode[this.mWrapMode.ordinal()])
      {
      default:
        break;
      case 1:
      case 2:
        this.mNextFrameIdx = 0;
        break;
      case 3:
        this.mNextFrameIdx = j;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.Animator
 * JD-Core Version:    0.6.2
 */