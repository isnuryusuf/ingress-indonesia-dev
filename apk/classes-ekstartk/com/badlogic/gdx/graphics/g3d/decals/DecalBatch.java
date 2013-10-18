package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Mesh.VertexDataType;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.SortedIntList;
import com.badlogic.gdx.utils.SortedIntList.Node;
import java.util.Iterator;

public class DecalBatch
  implements Disposable
{
  private static final int DEFAULT_SIZE = 1000;
  private final SortedIntList<Array<Decal>> groupList = new SortedIntList();
  private final Pool<Array<Decal>> groupPool = new DecalBatch.1(this, 16);
  private GroupStrategy groupStrategy;
  private Mesh mesh;
  private final Array<Array<Decal>> usedGroups = new Array(16);
  private float[] vertices;

  public DecalBatch()
  {
    this(1000, new DefaultGroupStrategy());
  }

  public DecalBatch(int paramInt, GroupStrategy paramGroupStrategy)
  {
    initialize(paramInt);
    setGroupStrategy(paramGroupStrategy);
  }

  public DecalBatch(GroupStrategy paramGroupStrategy)
  {
    this(1000, paramGroupStrategy);
  }

  private void render(ShaderProgram paramShaderProgram, Array<Decal> paramArray)
  {
    DecalMaterial localDecalMaterial = null;
    Iterator localIterator = paramArray.iterator();
    int j;
    for (int i = 0; localIterator.hasNext(); i = j)
    {
      Decal localDecal = (Decal)localIterator.next();
      if ((localDecalMaterial == null) || (!localDecalMaterial.equals(localDecal.getMaterial())))
      {
        if (i > 0)
        {
          flush(paramShaderProgram, i);
          i = 0;
        }
        localDecal.material.set();
        localDecalMaterial = localDecal.material;
      }
      localDecal.update();
      System.arraycopy(localDecal.vertices, 0, this.vertices, i, localDecal.vertices.length);
      j = i + localDecal.vertices.length;
      if (j == this.vertices.length)
      {
        flush(paramShaderProgram, j);
        j = 0;
      }
    }
    if (i > 0)
      flush(paramShaderProgram, i);
  }

  public void add(Decal paramDecal)
  {
    paramDecal.getMaterial();
    int i = this.groupStrategy.decideGroup(paramDecal);
    Array localArray = (Array)this.groupList.get(i);
    if (localArray == null)
    {
      localArray = (Array)this.groupPool.obtain();
      localArray.clear();
      this.usedGroups.add(localArray);
      this.groupList.insert(i, localArray);
    }
    localArray.add(paramDecal);
  }

  protected void clear()
  {
    this.groupList.clear();
    this.groupPool.free(this.usedGroups);
    this.usedGroups.clear();
  }

  public void dispose()
  {
    clear();
    this.vertices = null;
    this.mesh.dispose();
  }

  public void flush()
  {
    render();
    clear();
  }

  protected void flush(ShaderProgram paramShaderProgram, int paramInt)
  {
    this.mesh.setVertices(this.vertices, 0, paramInt);
    if (paramShaderProgram != null)
    {
      this.mesh.render(paramShaderProgram, 4, 0, paramInt / 4);
      return;
    }
    this.mesh.render(4, 0, paramInt / 4);
  }

  public int getSize()
  {
    return this.vertices.length / 24;
  }

  public void initialize(int paramInt)
  {
    int i = 0;
    this.vertices = new float[paramInt * 24];
    Mesh.VertexDataType localVertexDataType = Mesh.VertexDataType.VertexArray;
    int j = paramInt * 4;
    int k = paramInt * 6;
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[3];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 3, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(5, 4, "a_color");
    arrayOfVertexAttribute[2] = new VertexAttribute(3, 2, "a_texCoord0");
    this.mesh = new Mesh(localVertexDataType, false, j, k, arrayOfVertexAttribute);
    short[] arrayOfShort = new short[paramInt * 6];
    for (int m = 0; i < arrayOfShort.length; m += 4)
    {
      arrayOfShort[i] = ((short)m);
      arrayOfShort[(i + 1)] = ((short)(m + 2));
      arrayOfShort[(i + 2)] = ((short)(m + 1));
      arrayOfShort[(i + 3)] = ((short)(m + 1));
      arrayOfShort[(i + 4)] = ((short)(m + 2));
      arrayOfShort[(i + 5)] = ((short)(m + 3));
      i += 6;
    }
    this.mesh.setIndices(arrayOfShort);
  }

  protected void render()
  {
    this.groupStrategy.beforeGroups();
    Iterator localIterator = this.groupList.iterator();
    while (localIterator.hasNext())
    {
      SortedIntList.Node localNode = (SortedIntList.Node)localIterator.next();
      this.groupStrategy.beforeGroup(localNode.index, (Array)localNode.value);
      render(this.groupStrategy.getGroupShader(localNode.index), (Array)localNode.value);
      this.groupStrategy.afterGroup(localNode.index);
    }
    this.groupStrategy.afterGroups();
  }

  public void setGroupStrategy(GroupStrategy paramGroupStrategy)
  {
    this.groupStrategy = paramGroupStrategy;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.DecalBatch
 * JD-Core Version:    0.6.2
 */