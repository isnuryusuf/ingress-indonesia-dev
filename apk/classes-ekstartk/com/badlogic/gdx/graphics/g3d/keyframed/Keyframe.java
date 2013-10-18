package com.badlogic.gdx.graphics.g3d.keyframed;

import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;

public class Keyframe
{
  public short[][] indices = null;
  public boolean indicesSent = false;
  public boolean indicesSet = false;
  public Quaternion[] taggedJoint = null;
  public Vector3[] taggedJointPos = null;
  public float[][] vertices = null;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.keyframed.Keyframe
 * JD-Core Version:    0.6.2
 */