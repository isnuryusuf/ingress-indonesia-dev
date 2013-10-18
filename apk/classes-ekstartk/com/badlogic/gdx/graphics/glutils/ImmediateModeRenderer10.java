package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.FloatBuffer;

public class ImmediateModeRenderer10
  implements ImmediateModeRenderer
{
  private float[] colors;
  private FloatBuffer colorsBuffer;
  private boolean hasCols;
  private boolean hasNors;
  private boolean hasTexCoords;
  private int idxCols = 0;
  private int idxNors = 0;
  private int idxPos = 0;
  private int idxTexCoords = 0;
  private final int maxVertices;
  private float[] normals;
  private FloatBuffer normalsBuffer;
  private int numVertices;
  private float[] positions;
  private FloatBuffer positionsBuffer;
  private int primitiveType;
  private float[] texCoords;
  private FloatBuffer texCoordsBuffer;

  public ImmediateModeRenderer10()
  {
    this(2000);
  }

  public ImmediateModeRenderer10(int paramInt)
  {
    this.maxVertices = paramInt;
    if (Gdx.graphics.isGL20Available())
      throw new GdxRuntimeException("ImmediateModeRenderer can only be used with OpenGL ES 1.0/1.1");
    this.positions = new float[paramInt * 3];
    this.positionsBuffer = BufferUtils.newFloatBuffer(paramInt * 3);
    this.colors = new float[paramInt * 4];
    this.colorsBuffer = BufferUtils.newFloatBuffer(paramInt * 4);
    this.normals = new float[paramInt * 3];
    this.normalsBuffer = BufferUtils.newFloatBuffer(paramInt * 3);
    this.texCoords = new float[paramInt * 2];
    this.texCoordsBuffer = BufferUtils.newFloatBuffer(paramInt * 2);
  }

  public void begin(int paramInt)
  {
    this.primitiveType = paramInt;
    this.numVertices = 0;
    this.idxPos = 0;
    this.idxCols = 0;
    this.idxNors = 0;
    this.idxTexCoords = 0;
    this.hasCols = false;
    this.hasNors = false;
    this.hasTexCoords = false;
  }

  public void begin(Matrix4 paramMatrix4, int paramInt)
  {
    GL10 localGL10 = Gdx.gl10;
    localGL10.glMatrixMode(5889);
    localGL10.glLoadMatrixf(paramMatrix4.val, 0);
    localGL10.glMatrixMode(5888);
    localGL10.glLoadIdentity();
    begin(paramInt);
  }

  public void color(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.colors[this.idxCols] = paramFloat1;
    this.colors[(1 + this.idxCols)] = paramFloat2;
    this.colors[(2 + this.idxCols)] = paramFloat3;
    this.colors[(3 + this.idxCols)] = paramFloat4;
    this.hasCols = true;
  }

  public void dispose()
  {
  }

  public void end()
  {
    if (this.idxPos == 0);
    GL10 localGL10;
    do
    {
      return;
      localGL10 = Gdx.gl10;
      localGL10.glEnableClientState(32884);
      this.positionsBuffer.clear();
      BufferUtils.copy(this.positions, this.positionsBuffer, this.idxPos, 0);
      localGL10.glVertexPointer(3, 5126, 0, this.positionsBuffer);
      if (this.hasCols)
      {
        localGL10.glEnableClientState(32886);
        this.colorsBuffer.clear();
        BufferUtils.copy(this.colors, this.colorsBuffer, this.idxCols, 0);
        localGL10.glColorPointer(4, 5126, 0, this.colorsBuffer);
      }
      if (this.hasNors)
      {
        localGL10.glEnableClientState(32885);
        this.normalsBuffer.clear();
        BufferUtils.copy(this.normals, this.normalsBuffer, this.idxNors, 0);
        localGL10.glNormalPointer(5126, 0, this.normalsBuffer);
      }
      if (this.hasTexCoords)
      {
        localGL10.glClientActiveTexture(33984);
        localGL10.glEnableClientState(32888);
        this.texCoordsBuffer.clear();
        BufferUtils.copy(this.texCoords, this.texCoordsBuffer, this.idxTexCoords, 0);
        localGL10.glTexCoordPointer(2, 5126, 0, this.texCoordsBuffer);
      }
      localGL10.glDrawArrays(this.primitiveType, 0, this.idxPos / 3);
      if (this.hasCols)
        localGL10.glDisableClientState(32886);
      if (this.hasNors)
        localGL10.glDisableClientState(32885);
    }
    while (!this.hasTexCoords);
    localGL10.glDisableClientState(32888);
  }

  public int getMaxVertices()
  {
    return this.maxVertices;
  }

  public int getNumVertices()
  {
    return this.numVertices;
  }

  public void normal(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.normals[this.idxNors] = paramFloat1;
    this.normals[(1 + this.idxNors)] = paramFloat2;
    this.normals[(2 + this.idxNors)] = paramFloat3;
    this.hasNors = true;
  }

  public void texCoord(float paramFloat1, float paramFloat2)
  {
    this.texCoords[this.idxTexCoords] = paramFloat1;
    this.texCoords[(1 + this.idxTexCoords)] = paramFloat2;
    this.hasTexCoords = true;
  }

  public void vertex(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float[] arrayOfFloat1 = this.positions;
    int i = this.idxPos;
    this.idxPos = (i + 1);
    arrayOfFloat1[i] = paramFloat1;
    float[] arrayOfFloat2 = this.positions;
    int j = this.idxPos;
    this.idxPos = (j + 1);
    arrayOfFloat2[j] = paramFloat2;
    float[] arrayOfFloat3 = this.positions;
    int k = this.idxPos;
    this.idxPos = (k + 1);
    arrayOfFloat3[k] = paramFloat3;
    if (this.hasCols)
      this.idxCols = (4 + this.idxCols);
    if (this.hasNors)
      this.idxNors = (3 + this.idxNors);
    if (this.hasTexCoords)
      this.idxTexCoords = (2 + this.idxTexCoords);
    this.numVertices = (1 + this.numVertices);
  }

  public void vertex(Vector3 paramVector3)
  {
    vertex(paramVector3.x, paramVector3.y, paramVector3.z);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer10
 * JD-Core Version:    0.6.2
 */