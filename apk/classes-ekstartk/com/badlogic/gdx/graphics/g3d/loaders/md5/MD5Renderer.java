package com.badlogic.gdx.graphics.g3d.loaders.md5;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.TextureRef;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class MD5Renderer
  implements Disposable
{
  private final short[][] indices;
  private BoundingBox mBBox = new BoundingBox();
  private final Mesh mesh;
  private final MD5Model model;
  private boolean useJni;
  private boolean useNormals;
  private final float[][] vertices;

  public MD5Renderer(MD5Model paramMD5Model, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean2) && (paramBoolean1))
      throw new GdxRuntimeException("JNI with normals is currently unsupported.");
    if (paramBoolean1);
    int k;
    int m;
    for (int i = 8; ; i = 5)
    {
      this.model = paramMD5Model;
      this.useJni = paramBoolean2;
      this.useNormals = paramBoolean1;
      this.indices = new short[paramMD5Model.meshes.length][];
      this.vertices = new float[paramMD5Model.meshes.length][];
      int j = 0;
      k = 0;
      m = 0;
      while (j < paramMD5Model.meshes.length)
      {
        if (m < paramMD5Model.meshes[j].numVertices)
          m = paramMD5Model.meshes[j].numVertices;
        if (k < 3 * paramMD5Model.meshes[j].numTriangles)
          k = 3 * paramMD5Model.meshes[j].numTriangles;
        this.indices[j] = paramMD5Model.meshes[j].getIndices();
        this.vertices[j] = paramMD5Model.meshes[j].createVertexArray(i);
        j++;
      }
    }
    if (paramBoolean1)
    {
      VertexAttribute[] arrayOfVertexAttribute2 = new VertexAttribute[3];
      arrayOfVertexAttribute2[0] = new VertexAttribute(0, 3, "a_position");
      arrayOfVertexAttribute2[1] = new VertexAttribute(3, 2, "a_texCoord0");
      arrayOfVertexAttribute2[2] = new VertexAttribute(2, 3, "a_normal");
      this.mesh = new Mesh(false, m, k, arrayOfVertexAttribute2);
      return;
    }
    VertexAttribute[] arrayOfVertexAttribute1 = new VertexAttribute[2];
    arrayOfVertexAttribute1[0] = new VertexAttribute(0, 3, "a_position");
    arrayOfVertexAttribute1[1] = new VertexAttribute(3, 2, "a_texCoord0");
    this.mesh = new Mesh(false, m, k, arrayOfVertexAttribute1);
  }

  public void calculateNormals(MD5Joints paramMD5Joints)
  {
    for (int i = 0; i < this.model.meshes.length; i++)
      this.model.meshes[i].calculateNormalsBind(paramMD5Joints, this.vertices[i]);
  }

  public void dispose()
  {
    this.mesh.dispose();
  }

  public BoundingBox getBBox()
  {
    return this.mBBox;
  }

  public short[] getIndices(int paramInt)
  {
    return this.indices[paramInt];
  }

  public Mesh getMesh()
  {
    return this.mesh;
  }

  public float[] getVertices(int paramInt)
  {
    return this.vertices[paramInt];
  }

  public boolean isJniUsed()
  {
    return this.useJni;
  }

  public void render()
  {
    for (int i = 0; i < this.model.meshes.length; i++)
    {
      this.mesh.setIndices(this.indices[i]);
      this.mesh.setVertices(this.vertices[i]);
      this.mesh.render(4, 0, this.indices[i].length);
    }
  }

  public void render(Material[] paramArrayOfMaterial)
  {
    for (int i = 0; i < this.model.meshes.length; i++)
    {
      if (paramArrayOfMaterial[i] != null)
      {
        if (paramArrayOfMaterial[i].Texture != null)
          paramArrayOfMaterial[i].Texture.bind();
        paramArrayOfMaterial[i].set(1028);
      }
      this.mesh.setIndices(this.indices[i]);
      this.mesh.setVertices(this.vertices[i]);
      this.mesh.render(4, 0, this.indices[i].length);
    }
  }

  public void setSkeleton(MD5Joints paramMD5Joints)
  {
    this.mBBox.clr();
    int i = 0;
    if (i < this.model.meshes.length)
    {
      MD5Mesh localMD5Mesh = this.model.meshes[i];
      if (this.useJni)
      {
        if (this.useNormals)
          throw new GdxRuntimeException("Can't skin vertices & normals using native code yet");
        localMD5Mesh.calculateVerticesJni(paramMD5Joints, this.vertices[i]);
      }
      while (true)
      {
        i++;
        break;
        if (this.useNormals)
          localMD5Mesh.calculateVerticesN(paramMD5Joints, this.vertices[i], this.mBBox);
        else
          localMD5Mesh.calculateVertices(paramMD5Joints, this.vertices[i], this.mBBox);
      }
    }
  }

  public void setUseJni(boolean paramBoolean)
  {
    this.useJni = paramBoolean;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Renderer
 * JD-Core Version:    0.6.2
 */