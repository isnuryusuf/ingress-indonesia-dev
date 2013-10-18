package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.glutils.IndexArray;
import com.badlogic.gdx.graphics.glutils.IndexBufferObject;
import com.badlogic.gdx.graphics.glutils.IndexBufferObjectSubData;
import com.badlogic.gdx.graphics.glutils.IndexData;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.graphics.glutils.VertexArray;
import com.badlogic.gdx.graphics.glutils.VertexBufferObject;
import com.badlogic.gdx.graphics.glutils.VertexBufferObjectSubData;
import com.badlogic.gdx.graphics.glutils.VertexData;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Mesh
  implements Disposable
{
  public static boolean forceVBO = false;
  static final Map<Application, List<Mesh>> meshes = new HashMap();
  boolean autoBind = true;
  final IndexData indices;
  final boolean isVertexArray;
  final VertexData vertices;

  public Mesh(Mesh.VertexDataType paramVertexDataType, boolean paramBoolean, int paramInt1, int paramInt2, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    if (paramVertexDataType == Mesh.VertexDataType.VertexBufferObject)
    {
      this.vertices = new VertexBufferObject(paramBoolean, paramInt1, paramArrayOfVertexAttribute);
      this.indices = new IndexBufferObject(paramBoolean, paramInt2);
      this.isVertexArray = false;
    }
    while (true)
    {
      addManagedMesh(Gdx.app, this);
      return;
      if (paramVertexDataType == Mesh.VertexDataType.VertexBufferObjectSubData)
      {
        this.vertices = new VertexBufferObjectSubData(paramBoolean, paramInt1, paramArrayOfVertexAttribute);
        this.indices = new IndexBufferObjectSubData(paramBoolean, paramInt2);
        this.isVertexArray = false;
      }
      else
      {
        this.vertices = new VertexArray(paramInt1, paramArrayOfVertexAttribute);
        this.indices = new IndexArray(paramInt2);
        this.isVertexArray = true;
      }
    }
  }

  public Mesh(boolean paramBoolean, int paramInt1, int paramInt2, VertexAttributes paramVertexAttributes)
  {
    if ((Gdx.gl20 != null) || (Gdx.gl11 != null) || (forceVBO))
    {
      this.vertices = new VertexBufferObject(paramBoolean, paramInt1, paramVertexAttributes);
      this.indices = new IndexBufferObject(paramBoolean, paramInt2);
    }
    for (this.isVertexArray = false; ; this.isVertexArray = true)
    {
      addManagedMesh(Gdx.app, this);
      return;
      this.vertices = new VertexArray(paramInt1, paramVertexAttributes);
      this.indices = new IndexArray(paramInt2);
    }
  }

  public Mesh(boolean paramBoolean, int paramInt1, int paramInt2, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    if ((Gdx.gl20 != null) || (Gdx.gl11 != null) || (forceVBO))
    {
      this.vertices = new VertexBufferObject(paramBoolean, paramInt1, paramArrayOfVertexAttribute);
      this.indices = new IndexBufferObject(paramBoolean, paramInt2);
    }
    for (this.isVertexArray = false; ; this.isVertexArray = true)
    {
      addManagedMesh(Gdx.app, this);
      return;
      this.vertices = new VertexArray(paramInt1, paramArrayOfVertexAttribute);
      this.indices = new IndexArray(paramInt2);
    }
  }

  private static void addManagedMesh(Application paramApplication, Mesh paramMesh)
  {
    Object localObject = (List)meshes.get(paramApplication);
    if (localObject == null)
      localObject = new ArrayList();
    ((List)localObject).add(paramMesh);
    meshes.put(paramApplication, localObject);
  }

  public static void clearAllMeshes(Application paramApplication)
  {
    meshes.remove(paramApplication);
  }

  public static String getManagedStatus()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Managed meshes/app: { ");
    Iterator localIterator = meshes.keySet().iterator();
    while (localIterator.hasNext())
    {
      Application localApplication = (Application)localIterator.next();
      localStringBuilder.append(((List)meshes.get(localApplication)).size());
      localStringBuilder.append(" ");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public static void invalidateAllMeshes(Application paramApplication)
  {
    List localList = (List)meshes.get(paramApplication);
    if (localList == null);
    while (true)
    {
      return;
      for (int i = 0; i < localList.size(); i++)
      {
        if ((((Mesh)localList.get(i)).vertices instanceof VertexBufferObject))
          ((VertexBufferObject)((Mesh)localList.get(i)).vertices).invalidate();
        ((Mesh)localList.get(i)).indices.invalidate();
      }
    }
  }

  public void bind()
  {
    if (Gdx.graphics.isGL20Available())
      throw new IllegalStateException("can't use this render method with OpenGL ES 2.0");
    this.vertices.bind();
    if ((!this.isVertexArray) && (this.indices.getNumIndices() > 0))
      this.indices.bind();
  }

  public void bind(ShaderProgram paramShaderProgram)
  {
    if (!Gdx.graphics.isGL20Available())
      throw new IllegalStateException("can't use this render method with OpenGL ES 1.x");
    this.vertices.bind(paramShaderProgram);
    if (this.indices.getNumIndices() > 0)
      this.indices.bind();
  }

  public BoundingBox calculateBoundingBox()
  {
    BoundingBox localBoundingBox = new BoundingBox();
    calculateBoundingBox(localBoundingBox);
    return localBoundingBox;
  }

  public void calculateBoundingBox(BoundingBox paramBoundingBox)
  {
    int i = getNumVertices();
    if (i == 0)
      throw new GdxRuntimeException("No vertices defined");
    FloatBuffer localFloatBuffer = this.vertices.getBuffer();
    paramBoundingBox.inf();
    VertexAttribute localVertexAttribute = getVertexAttribute(0);
    int j = localVertexAttribute.offset / 4;
    int k = this.vertices.getAttributes().vertexSize / 4;
    int m = localVertexAttribute.numComponents;
    int n = 0;
    switch (m)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      while (n < i)
      {
        paramBoundingBox.ext(localFloatBuffer.get(j), 0.0F, 0.0F);
        j += k;
        n++;
      }
      while (n < i)
      {
        paramBoundingBox.ext(localFloatBuffer.get(j), localFloatBuffer.get(j + 1), 0.0F);
        j += k;
        n++;
      }
      continue;
      while (n < i)
      {
        paramBoundingBox.ext(localFloatBuffer.get(j), localFloatBuffer.get(j + 1), localFloatBuffer.get(j + 2));
        j += k;
        n++;
      }
    }
  }

  public void dispose()
  {
    if (meshes.get(Gdx.app) != null)
      ((List)meshes.get(Gdx.app)).remove(this);
    this.vertices.dispose();
    this.indices.dispose();
  }

  public void getIndices(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort.length < getNumIndices())
      throw new IllegalArgumentException("not enough room in indices array, has " + paramArrayOfShort.length + " floats, needs " + getNumIndices());
    int i = getIndicesBuffer().position();
    getIndicesBuffer().position(0);
    getIndicesBuffer().get(paramArrayOfShort, 0, getNumIndices());
    getIndicesBuffer().position(i);
  }

  public ShortBuffer getIndicesBuffer()
  {
    return this.indices.getBuffer();
  }

  public int getMaxIndices()
  {
    return this.indices.getNumMaxIndices();
  }

  public int getMaxVertices()
  {
    return this.vertices.getNumMaxVertices();
  }

  public int getNumIndices()
  {
    return this.indices.getNumIndices();
  }

  public int getNumVertices()
  {
    return this.vertices.getNumVertices();
  }

  public VertexAttribute getVertexAttribute(int paramInt)
  {
    VertexAttributes localVertexAttributes = this.vertices.getAttributes();
    int i = localVertexAttributes.size();
    for (int j = 0; j < i; j++)
      if (localVertexAttributes.get(j).usage == paramInt)
        return localVertexAttributes.get(j);
    return null;
  }

  public VertexAttributes getVertexAttributes()
  {
    return this.vertices.getAttributes();
  }

  public int getVertexSize()
  {
    return this.vertices.getAttributes().vertexSize;
  }

  public void getVertices(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat.length < getNumVertices() * getVertexSize() / 4)
      throw new IllegalArgumentException("not enough room in vertices array, has " + paramArrayOfFloat.length + " floats, needs " + getNumVertices() * getVertexSize() / 4);
    int i = getVerticesBuffer().position();
    getVerticesBuffer().position(0);
    getVerticesBuffer().get(paramArrayOfFloat, 0, getNumVertices() * getVertexSize() / 4);
    getVerticesBuffer().position(i);
  }

  public FloatBuffer getVerticesBuffer()
  {
    return this.vertices.getBuffer();
  }

  public void render(int paramInt)
  {
    if (this.indices.getNumMaxIndices() > 0);
    for (int i = getNumIndices(); ; i = getNumVertices())
    {
      render(paramInt, 0, i);
      return;
    }
  }

  public void render(int paramInt1, int paramInt2, int paramInt3)
  {
    if (Gdx.graphics.isGL20Available())
      throw new IllegalStateException("can't use this render method with OpenGL ES 2.0");
    if (paramInt3 == 0);
    while (true)
    {
      return;
      if (this.autoBind)
        bind();
      if (this.isVertexArray)
        if (this.indices.getNumIndices() > 0)
        {
          ShortBuffer localShortBuffer = this.indices.getBuffer();
          int i = localShortBuffer.position();
          int j = localShortBuffer.limit();
          localShortBuffer.position(paramInt2);
          localShortBuffer.limit(paramInt2 + paramInt3);
          Gdx.gl10.glDrawElements(paramInt1, paramInt3, 5123, localShortBuffer);
          localShortBuffer.position(i);
          localShortBuffer.limit(j);
        }
      while (this.autoBind)
      {
        unbind();
        return;
        Gdx.gl10.glDrawArrays(paramInt1, paramInt2, paramInt3);
        continue;
        if (this.indices.getNumIndices() > 0)
          Gdx.gl11.glDrawElements(paramInt1, paramInt3, 5123, paramInt2 * 2);
        else
          Gdx.gl11.glDrawArrays(paramInt1, paramInt2, paramInt3);
      }
    }
  }

  public void render(ShaderProgram paramShaderProgram, int paramInt)
  {
    if (this.indices.getNumMaxIndices() > 0);
    for (int i = getNumIndices(); ; i = getNumVertices())
    {
      render(paramShaderProgram, paramInt, 0, i);
      return;
    }
  }

  public void render(ShaderProgram paramShaderProgram, int paramInt1, int paramInt2, int paramInt3)
  {
    if (!Gdx.graphics.isGL20Available())
      throw new IllegalStateException("can't use this render method with OpenGL ES 1.x");
    if (paramInt3 == 0);
    while (true)
    {
      return;
      if (this.autoBind)
        bind(paramShaderProgram);
      if (this.isVertexArray)
        if (this.indices.getNumIndices() > 0)
        {
          ShortBuffer localShortBuffer = this.indices.getBuffer();
          int i = localShortBuffer.position();
          int j = localShortBuffer.limit();
          localShortBuffer.position(paramInt2);
          localShortBuffer.limit(paramInt2 + paramInt3);
          Gdx.gl20.glDrawElements(paramInt1, paramInt3, 5123, localShortBuffer);
          localShortBuffer.position(i);
          localShortBuffer.limit(j);
        }
      while (this.autoBind)
      {
        unbind(paramShaderProgram);
        return;
        Gdx.gl20.glDrawArrays(paramInt1, paramInt2, paramInt3);
        continue;
        if (this.indices.getNumIndices() > 0)
          Gdx.gl20.glDrawElements(paramInt1, paramInt3, 5123, paramInt2 * 2);
        else
          Gdx.gl20.glDrawArrays(paramInt1, paramInt2, paramInt3);
      }
    }
  }

  public void scale(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    VertexAttribute localVertexAttribute = getVertexAttribute(0);
    int i = localVertexAttribute.offset / 4;
    int j = localVertexAttribute.numComponents;
    int k = getNumVertices();
    int m = getVertexSize() / 4;
    float[] arrayOfFloat = new float[k * m];
    getVertices(arrayOfFloat);
    int n = 0;
    switch (j)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      setVertices(arrayOfFloat);
      return;
      while (n < k)
      {
        arrayOfFloat[i] = (paramFloat1 * arrayOfFloat[i]);
        i += m;
        n++;
      }
      while (n < k)
      {
        arrayOfFloat[i] = (paramFloat1 * arrayOfFloat[i]);
        int i3 = i + 1;
        arrayOfFloat[i3] = (paramFloat2 * arrayOfFloat[i3]);
        i += m;
        n++;
      }
      while (n < k)
      {
        arrayOfFloat[i] = (paramFloat1 * arrayOfFloat[i]);
        int i1 = i + 1;
        arrayOfFloat[i1] = (paramFloat2 * arrayOfFloat[i1]);
        int i2 = i + 2;
        arrayOfFloat[i2] = (paramFloat3 * arrayOfFloat[i2]);
        i += m;
        n++;
      }
    }
  }

  public void setAutoBind(boolean paramBoolean)
  {
    this.autoBind = paramBoolean;
  }

  public void setIndices(short[] paramArrayOfShort)
  {
    this.indices.setIndices(paramArrayOfShort, 0, paramArrayOfShort.length);
  }

  public void setIndices(short[] paramArrayOfShort, int paramInt1, int paramInt2)
  {
    this.indices.setIndices(paramArrayOfShort, paramInt1, paramInt2);
  }

  public void setVertices(float[] paramArrayOfFloat)
  {
    this.vertices.setVertices(paramArrayOfFloat, 0, paramArrayOfFloat.length);
  }

  public void setVertices(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    this.vertices.setVertices(paramArrayOfFloat, paramInt1, paramInt2);
  }

  public void unbind()
  {
    if (Gdx.graphics.isGL20Available())
      throw new IllegalStateException("can't use this render method with OpenGL ES 2.0");
    this.vertices.unbind();
    if ((!this.isVertexArray) && (this.indices.getNumIndices() > 0))
      this.indices.unbind();
  }

  public void unbind(ShaderProgram paramShaderProgram)
  {
    if (!Gdx.graphics.isGL20Available())
      throw new IllegalStateException("can't use this render method with OpenGL ES 1.x");
    this.vertices.unbind(paramShaderProgram);
    if (this.indices.getNumIndices() > 0)
      this.indices.unbind();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Mesh
 * JD-Core Version:    0.6.2
 */