package com.badlogic.gdx.graphics.g3d.keyframed;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.TextureRef;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.Animator;
import com.badlogic.gdx.graphics.g3d.Animator.WrapMode;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Animation;
import com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Animator;
import com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Joints;
import com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Model;
import com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Renderer;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import java.util.ArrayList;
import java.util.Iterator;

public class KeyframedModel
{
  private static ObjectMap<String, KeyframeAnimation> animations = null;
  private ArrayList<String> animationRefs = new ArrayList();
  private KeyframeAnimator animator = null;
  private String assetName;
  private Material[] materials;
  private int numMeshes = 0;
  private ArrayList<String> taggedJointNames = new ArrayList();
  private Mesh[] target = null;
  private boolean[] visible = null;

  private float[] clone(float[] paramArrayOfFloat)
  {
    float[] arrayOfFloat = new float[paramArrayOfFloat.length];
    System.arraycopy(paramArrayOfFloat, 0, arrayOfFloat, 0, paramArrayOfFloat.length);
    return arrayOfFloat;
  }

  private short[] clone(short[] paramArrayOfShort)
  {
    short[] arrayOfShort = new short[paramArrayOfShort.length];
    System.arraycopy(paramArrayOfShort, 0, arrayOfShort, 0, paramArrayOfShort.length);
    return arrayOfShort;
  }

  public void dispose()
  {
    Iterator localIterator = this.animationRefs.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (((KeyframeAnimation)animations.get(str)).removeRef() == 0)
        animations.remove(str);
    }
    for (Mesh localMesh : this.target)
      if (localMesh != null)
        localMesh.dispose();
  }

  public KeyframeAnimation getAnimation(String paramString)
  {
    return (KeyframeAnimation)animations.get(this.assetName + "_" + paramString);
  }

  public Animator getAnimator()
  {
    return this.animator;
  }

  public void getJointData(int paramInt, Vector3 paramVector3, Quaternion paramQuaternion)
  {
    Keyframe localKeyframe = this.animator.getInterpolatedKeyframe();
    paramVector3.set(localKeyframe.taggedJointPos[paramInt]);
    paramQuaternion.x = localKeyframe.taggedJoint[paramInt].x;
    paramQuaternion.y = localKeyframe.taggedJoint[paramInt].y;
    paramQuaternion.z = localKeyframe.taggedJoint[paramInt].z;
    paramQuaternion.w = localKeyframe.taggedJoint[paramInt].w;
  }

  public void render()
  {
    for (int i = 0; i < this.numMeshes; i++)
    {
      Material localMaterial = this.materials[i];
      if (localMaterial != null)
      {
        if (localMaterial.Texture != null)
          localMaterial.Texture.bind();
        localMaterial.set(1028);
      }
      if (this.visible[i] != 0)
        this.target[i].render(4, 0, this.target[i].getNumIndices());
    }
  }

  public KeyframeAnimation sampleAnimationFromMD5(MD5Model paramMD5Model, MD5Renderer paramMD5Renderer, MD5Animator paramMD5Animator, MD5Animation paramMD5Animation, float paramFloat, String paramString1, String paramString2)
  {
    this.assetName = paramString1;
    this.numMeshes = paramMD5Model.meshes.length;
    if (this.animator == null)
    {
      this.animator = new KeyframeAnimator(this.numMeshes, paramFloat);
      this.target = new Mesh[this.numMeshes];
      this.visible = new boolean[this.numMeshes];
      for (int i6 = 0; i6 < this.visible.length; i6++)
        this.visible[i6] = true;
    }
    if (animations == null)
      animations = new ObjectMap();
    String str1 = paramString1 + "_" + paramString2;
    boolean bool = animations.containsKey(str1);
    KeyframeAnimation localKeyframeAnimation1 = null;
    int i = 0;
    if (bool)
    {
      localKeyframeAnimation1 = (KeyframeAnimation)animations.get(str1);
      localKeyframeAnimation1.addRef();
      i = 1;
    }
    this.animationRefs.add(str1);
    paramMD5Animator.setAnimation(paramMD5Animation, Animator.WrapMode.Clamp);
    float f1 = paramMD5Animation.frames.length * paramMD5Animation.secondsPerFrame;
    int j = 1 + (int)(f1 / paramFloat);
    KeyframeAnimation localKeyframeAnimation2;
    if (i == 0)
    {
      localKeyframeAnimation2 = new KeyframeAnimation(paramMD5Animation.name, j, f1, paramFloat);
      animations.put(str1, localKeyframeAnimation2);
    }
    for (KeyframeAnimation localKeyframeAnimation3 = localKeyframeAnimation2; ; localKeyframeAnimation3 = localKeyframeAnimation1)
    {
      paramMD5Animator.update(0.1F);
      paramMD5Renderer.setSkeleton(paramMD5Animator.getSkeleton());
      float f2 = 0.0F;
      int k = 0;
      Keyframe localKeyframe1;
      if (f2 < f1)
      {
        if (i != 0)
          break label803;
        localKeyframe1 = new Keyframe();
        localKeyframe1.vertices = new float[this.numMeshes][];
        localKeyframe1.indices = new short[this.numMeshes][];
        if (this.taggedJointNames.size() > 0)
        {
          localKeyframe1.taggedJointPos = new Vector3[this.taggedJointNames.size()];
          localKeyframe1.taggedJoint = new Quaternion[this.taggedJointNames.size()];
        }
      }
      label803: for (Keyframe localKeyframe2 = localKeyframe1; ; localKeyframe2 = null)
      {
        for (int m = 0; m < this.numMeshes; m++)
        {
          float[] arrayOfFloat = paramMD5Renderer.getVertices(m);
          short[] arrayOfShort = paramMD5Renderer.getIndices(m);
          int i4 = arrayOfFloat.length;
          int i5 = arrayOfShort.length;
          if (i == 0)
          {
            localKeyframe2.vertices[m] = clone(arrayOfFloat);
            localKeyframe2.indices[m] = clone(arrayOfShort);
          }
          if (this.target[m] == null)
          {
            this.animator.setKeyframeDimensions(m, i4, i5);
            this.animator.setNumTaggedJoints(this.taggedJointNames.size());
            VertexAttributes localVertexAttributes = paramMD5Renderer.getMesh().getVertexAttributes();
            this.target[m] = new Mesh(false, i4, i5, localVertexAttributes);
            if (this.target[m].getVertexSize() / 4 != 8)
              throw new GdxRuntimeException("Mesh vertexattributes != 8 - is this a valid MD5 source mesh?");
          }
        }
        if (i == 0)
        {
          MD5Joints localMD5Joints = paramMD5Animator.getSkeleton();
          int i1 = 0;
          if (i1 < this.taggedJointNames.size())
          {
            String str2 = (String)this.taggedJointNames.get(i1);
            for (int i2 = 0; ; i2++)
              if (i2 < localMD5Joints.numJoints)
              {
                if (str2.equals(localMD5Joints.names[i2]))
                {
                  int i3 = i2 * 8;
                  float f3 = localMD5Joints.joints[(i3 + 1)];
                  float f4 = localMD5Joints.joints[(i3 + 2)];
                  float f5 = localMD5Joints.joints[(i3 + 3)];
                  localKeyframe2.taggedJointPos[i1] = new Vector3(f3, f4, f5);
                  float f6 = localMD5Joints.joints[(i3 + 4)];
                  float f7 = localMD5Joints.joints[(i3 + 5)];
                  float f8 = localMD5Joints.joints[(i3 + 6)];
                  float f9 = localMD5Joints.joints[(i3 + 7)];
                  localKeyframe2.taggedJoint[i1] = new Quaternion(f6, f7, f8, f9);
                }
              }
              else
              {
                i1++;
                break;
              }
          }
          localKeyframeAnimation3.keyframes[k] = localKeyframe2;
        }
        paramMD5Animator.update(paramFloat);
        paramMD5Renderer.setSkeleton(paramMD5Animator.getSkeleton());
        int n = k + 1;
        f2 += paramFloat;
        k = n;
        break;
        return localKeyframeAnimation3;
      }
    }
  }

  public void setAnimation(String paramString, Animator.WrapMode paramWrapMode)
  {
    KeyframeAnimation localKeyframeAnimation = getAnimation(paramString);
    if (localKeyframeAnimation != null)
    {
      this.animator.setAnimation(localKeyframeAnimation, paramWrapMode);
      this.animator.getInterpolatedKeyframe().indicesSet = false;
      this.animator.getInterpolatedKeyframe().indicesSent = false;
    }
  }

  public void setMaterials(Material[] paramArrayOfMaterial)
  {
    this.materials = new Material[paramArrayOfMaterial.length];
    for (int i = 0; i < paramArrayOfMaterial.length; i++)
      this.materials[i] = paramArrayOfMaterial[i];
  }

  public void setMeshVisible(int paramInt, boolean paramBoolean)
  {
    this.visible[paramInt] = paramBoolean;
  }

  public void setTaggedJoints(ArrayList<String> paramArrayList)
  {
    this.taggedJointNames = paramArrayList;
  }

  public void update(float paramFloat)
  {
    Keyframe localKeyframe;
    if (this.animator != null)
    {
      this.animator.update(paramFloat);
      if (this.animator.hasAnimation())
      {
        localKeyframe = this.animator.getInterpolatedKeyframe();
        if ((this.animator.getCurrentWrapMode() != Animator.WrapMode.SingleFrame) || (!localKeyframe.indicesSent))
          break label54;
      }
    }
    return;
    label54: for (int i = 0; i < this.numMeshes; i++)
    {
      this.target[i].setVertices(localKeyframe.vertices[i]);
      if (!localKeyframe.indicesSent)
        this.target[i].setIndices(localKeyframe.indices[i]);
    }
    localKeyframe.indicesSent = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.keyframed.KeyframedModel
 * JD-Core Version:    0.6.2
 */