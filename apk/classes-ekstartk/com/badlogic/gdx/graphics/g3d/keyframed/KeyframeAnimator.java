package com.badlogic.gdx.graphics.g3d.keyframed;

import com.badlogic.gdx.graphics.g3d.Animator;
import com.badlogic.gdx.graphics.g3d.Animator.WrapMode;
import com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Quaternion;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;

public class KeyframeAnimator extends Animator
{
  static MD5Quaternion jointAOrient = new MD5Quaternion();
  static MD5Quaternion jointBOrient = new MD5Quaternion();
  public static final int sStride = 8;
  private Keyframe A = null;
  private Keyframe B = null;
  private Keyframe R = null;
  private float invSampleRate = 0.0F;
  private int numMeshes = 0;

  public KeyframeAnimator(int paramInt, float paramFloat)
  {
    this.numMeshes = paramInt;
    this.R = new Keyframe();
    this.R.vertices = new float[paramInt][];
    this.R.indices = new short[paramInt][];
    this.invSampleRate = (1.0F / paramFloat);
  }

  private void interpolateJoints(float paramFloat)
  {
    for (int i = 0; i < this.A.taggedJoint.length; i++)
    {
      float f1 = this.A.taggedJointPos[i].x;
      float f2 = this.A.taggedJointPos[i].y;
      float f3 = this.A.taggedJointPos[i].z;
      float f4 = this.B.taggedJointPos[i].x;
      float f5 = this.B.taggedJointPos[i].y;
      float f6 = this.B.taggedJointPos[i].z;
      this.R.taggedJointPos[i].x = (f1 + paramFloat * (f4 - f1));
      this.R.taggedJointPos[i].y = (f2 + paramFloat * (f5 - f2));
      this.R.taggedJointPos[i].z = (f3 + paramFloat * (f6 - f3));
      jointAOrient.x = this.A.taggedJoint[i].x;
      jointAOrient.y = this.A.taggedJoint[i].y;
      jointAOrient.z = this.A.taggedJoint[i].z;
      jointAOrient.w = this.A.taggedJoint[i].w;
      jointBOrient.x = this.B.taggedJoint[i].x;
      jointBOrient.y = this.B.taggedJoint[i].y;
      jointBOrient.z = this.B.taggedJoint[i].z;
      jointBOrient.w = this.B.taggedJoint[i].w;
      jointAOrient.slerp(jointBOrient, paramFloat);
      this.R.taggedJoint[i].x = jointAOrient.x;
      this.R.taggedJoint[i].y = jointAOrient.y;
      this.R.taggedJoint[i].z = jointAOrient.z;
      this.R.taggedJoint[i].w = jointAOrient.w;
    }
  }

  public Keyframe getInterpolatedKeyframe()
  {
    return this.R;
  }

  public boolean hasAnimation()
  {
    return this.mCurrentAnim != null;
  }

  protected void interpolate()
  {
    if ((this.mWrapMode == Animator.WrapMode.SingleFrame) && (this.R.indicesSet));
    float f1;
    do
    {
      return;
      f1 = this.mFrameDelta * this.invSampleRate;
      for (int i = 0; i < this.numMeshes; i++)
      {
        float[] arrayOfFloat1 = this.R.vertices[i];
        float[] arrayOfFloat2 = this.A.vertices[i];
        float[] arrayOfFloat3 = this.B.vertices[i];
        for (int j = 0; j < arrayOfFloat2.length; j += 8)
        {
          float f2 = arrayOfFloat2[j];
          float f3 = f2 + f1 * (arrayOfFloat3[j] - f2);
          float f4 = arrayOfFloat2[(j + 1)];
          float f5 = f4 + f1 * (arrayOfFloat3[(j + 1)] - f4);
          float f6 = arrayOfFloat2[(j + 2)];
          float f7 = f6 + f1 * (arrayOfFloat3[(j + 2)] - f6);
          arrayOfFloat1[j] = f3;
          arrayOfFloat1[(j + 1)] = f5;
          arrayOfFloat1[(j + 2)] = f7;
          arrayOfFloat1[(j + 3)] = arrayOfFloat2[(j + 3)];
          arrayOfFloat1[(j + 4)] = arrayOfFloat2[(j + 4)];
          float f8 = arrayOfFloat2[(j + 5)];
          float f9 = f8 + f1 * (arrayOfFloat3[(j + 5)] - f8);
          float f10 = arrayOfFloat2[(j + 6)];
          float f11 = f10 + f1 * (arrayOfFloat3[(j + 6)] - f10);
          float f12 = arrayOfFloat2[(j + 7)];
          float f13 = f12 + f1 * (arrayOfFloat3[(j + 7)] - f12);
          arrayOfFloat1[(j + 5)] = f9;
          arrayOfFloat1[(j + 6)] = f11;
          arrayOfFloat1[(j + 7)] = f13;
        }
        if (!this.R.indicesSet)
          for (int k = 0; k < this.A.indices[i].length; k++)
            this.R.indices[i][k] = this.A.indices[i][k];
      }
      this.R.indicesSet = true;
    }
    while (this.A.taggedJoint == null);
    interpolateJoints(f1);
  }

  protected void setInterpolationFrames()
  {
    this.A = ((KeyframeAnimation)this.mCurrentAnim).keyframes[this.mCurrentFrameIdx];
    this.B = ((KeyframeAnimation)this.mCurrentAnim).keyframes[this.mNextFrameIdx];
  }

  public void setKeyframeDimensions(int paramInt1, int paramInt2, int paramInt3)
  {
    this.R.vertices[paramInt1] = new float[paramInt2];
    this.R.indices[paramInt1] = new short[paramInt3];
  }

  public void setNumTaggedJoints(int paramInt)
  {
    int i = 0;
    this.R.taggedJointPos = new Vector3[paramInt];
    for (int j = 0; j < paramInt; j++)
      this.R.taggedJointPos[j] = new Vector3();
    this.R.taggedJoint = new Quaternion[paramInt];
    while (i < paramInt)
    {
      this.R.taggedJoint[i] = new Quaternion(0.0F, 0.0F, 0.0F, 0.0F);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.keyframed.KeyframeAnimator
 * JD-Core Version:    0.6.2
 */