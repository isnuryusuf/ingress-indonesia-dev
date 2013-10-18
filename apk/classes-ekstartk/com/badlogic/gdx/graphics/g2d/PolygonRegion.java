package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class PolygonRegion
{
  private float[] localVertices;
  private TextureRegion region;
  private float[] texCoords;

  public PolygonRegion(TextureRegion paramTextureRegion, FileHandle paramFileHandle)
  {
    this.region = paramTextureRegion;
    if (paramFileHandle == null)
      throw new IllegalArgumentException("region cannot be null.");
    loadPolygonDefinition(paramFileHandle);
  }

  public PolygonRegion(TextureRegion paramTextureRegion, float[] paramArrayOfFloat)
  {
  }

  private float[] calculateAtlasTexCoords(float[] paramArrayOfFloat)
  {
    float f1 = this.region.u2 - this.region.u;
    float f2 = this.region.v2 - this.region.v;
    for (int i = 0; i < paramArrayOfFloat.length; i += 2)
    {
      paramArrayOfFloat[i] = (this.region.u + f1 * paramArrayOfFloat[i]);
      paramArrayOfFloat[(i + 1)] = (this.region.v + f2 * paramArrayOfFloat[(i + 1)]);
    }
    return paramArrayOfFloat;
  }

  private void loadPolygonDefinition(FileHandle paramFileHandle)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramFileHandle.read()), 64);
    try
    {
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        if (str.startsWith("v"))
        {
          String[] arrayOfString2 = str.substring(1).trim().split(",");
          this.localVertices = new float[arrayOfString2.length];
          for (int j = 0; j < arrayOfString2.length; j += 2)
          {
            this.localVertices[j] = Float.parseFloat(arrayOfString2[j]);
            this.localVertices[(j + 1)] = Float.parseFloat(arrayOfString2[(j + 1)]);
          }
        }
        if (str.startsWith("u"))
        {
          String[] arrayOfString1 = str.substring(1).trim().split(",");
          float[] arrayOfFloat = new float[arrayOfString1.length];
          for (int i = 0; i < arrayOfString1.length; i += 2)
          {
            arrayOfFloat[i] = Float.parseFloat(arrayOfString1[i]);
            arrayOfFloat[(i + 1)] = Float.parseFloat(arrayOfString1[(i + 1)]);
          }
          this.texCoords = calculateAtlasTexCoords(arrayOfFloat);
        }
      }
    }
    catch (IOException localIOException2)
    {
      localIOException2 = localIOException2;
      throw new GdxRuntimeException("Error reading polygon shape file: " + paramFileHandle);
    }
    finally
    {
    }
    try
    {
      localBufferedReader.close();
      label242: throw localObject;
      try
      {
        localBufferedReader.close();
        return;
      }
      catch (IOException localIOException3)
      {
      }
    }
    catch (IOException localIOException1)
    {
      break label242;
    }
  }

  public float[] getLocalVertices()
  {
    return this.localVertices;
  }

  public TextureRegion getRegion()
  {
    return this.region;
  }

  public float[] getTextureCoords()
  {
    return this.texCoords;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PolygonRegion
 * JD-Core Version:    0.6.2
 */