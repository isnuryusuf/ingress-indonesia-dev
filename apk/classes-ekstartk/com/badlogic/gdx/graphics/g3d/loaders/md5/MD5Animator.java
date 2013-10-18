package com.badlogic.gdx.graphics.g3d.loaders.md5;

import com.badlogic.gdx.graphics.g3d.Animation;
import com.badlogic.gdx.graphics.g3d.Animator;
import com.badlogic.gdx.graphics.g3d.Animator.WrapMode;

public class MD5Animator extends Animator
{
  protected MD5Joints mCurrentFrame = null;
  protected MD5Joints mNextFrame = null;
  protected MD5Joints mSkeleton = null;

  public MD5Joints getSkeleton()
  {
    return this.mSkeleton;
  }

  protected void interpolate()
  {
    MD5Animation.interpolate(this.mCurrentFrame, this.mNextFrame, this.mSkeleton, this.mFrameDelta);
  }

  public void setAnimation(Animation paramAnimation, Animator.WrapMode paramWrapMode)
  {
    super.setAnimation(paramAnimation, paramWrapMode);
    if (paramAnimation != null)
    {
      MD5Joints localMD5Joints = ((MD5Animation)paramAnimation).frames[0];
      this.mNextFrame = localMD5Joints;
      this.mSkeleton = localMD5Joints;
      this.mCurrentFrame = localMD5Joints;
    }
  }

  protected void setInterpolationFrames()
  {
    this.mCurrentFrame = ((MD5Animation)this.mCurrentAnim).frames[this.mCurrentFrameIdx];
    this.mNextFrame = ((MD5Animation)this.mCurrentAnim).frames[this.mNextFrameIdx];
  }

  public void setSkeleton(MD5Joints paramMD5Joints)
  {
    this.mSkeleton = paramMD5Joints;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Animator
 * JD-Core Version:    0.6.2
 */