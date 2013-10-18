package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.TextureRef;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import java.io.DataInputStream;
import java.io.DataOutputStream;

public class Material
{
  private static final float[] tmp = new float[4];
  public Color Ambient = null;
  public int BlendDestFactor = 0;
  public int BlendSourceFactor = 0;
  public Color Diffuse = null;
  public Color Emissive = null;
  public String Name;
  public ShaderProgram Shader;
  public Color Specular = null;
  public TextureRef Texture = null;
  public String TexturePath = "";

  public Material(String paramString)
  {
    this.Name = paramString;
  }

  private void setTmpArray(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    tmp[0] = paramFloat1;
    tmp[1] = paramFloat2;
    tmp[2] = paramFloat3;
    tmp[3] = paramFloat4;
  }

  public boolean read(DataInputStream paramDataInputStream)
  {
    this.Name = paramDataInputStream.readUTF();
    this.TexturePath = paramDataInputStream.readUTF();
    if (paramDataInputStream.readBoolean())
      this.Ambient = new Color(paramDataInputStream.readFloat(), paramDataInputStream.readFloat(), paramDataInputStream.readFloat(), paramDataInputStream.readFloat());
    if (paramDataInputStream.readBoolean())
      this.Diffuse = new Color(paramDataInputStream.readFloat(), paramDataInputStream.readFloat(), paramDataInputStream.readFloat(), paramDataInputStream.readFloat());
    this.BlendSourceFactor = paramDataInputStream.readInt();
    this.BlendDestFactor = paramDataInputStream.readInt();
    return true;
  }

  public void set(int paramInt)
  {
    GL10 localGL10 = Gdx.graphics.getGL10();
    if (this.Ambient != null)
    {
      setTmpArray(this.Ambient.r, this.Ambient.g, this.Ambient.b, this.Ambient.a);
      localGL10.glMaterialfv(paramInt, 4608, tmp, 0);
    }
    if (this.Diffuse != null)
    {
      setTmpArray(this.Diffuse.r, this.Diffuse.g, this.Diffuse.b, this.Diffuse.a);
      localGL10.glMaterialfv(paramInt, 4609, tmp, 0);
    }
    if (this.BlendSourceFactor > 0)
    {
      localGL10.glBlendFunc(this.BlendSourceFactor, this.BlendDestFactor);
      localGL10.glEnable(3042);
      return;
    }
    localGL10.glDisable(3042);
  }

  public boolean write(DataOutputStream paramDataOutputStream)
  {
    paramDataOutputStream.writeUTF(this.Name);
    paramDataOutputStream.writeUTF(this.Texture.Name.substring(1 + this.Texture.Name.lastIndexOf("\\")));
    if (this.Ambient != null);
    for (boolean bool1 = true; ; bool1 = false)
    {
      paramDataOutputStream.writeBoolean(bool1);
      if (this.Ambient != null)
      {
        paramDataOutputStream.writeFloat(this.Ambient.r);
        paramDataOutputStream.writeFloat(this.Ambient.g);
        paramDataOutputStream.writeFloat(this.Ambient.b);
        paramDataOutputStream.writeFloat(this.Ambient.a);
      }
      Color localColor = this.Diffuse;
      boolean bool2 = false;
      if (localColor != null)
        bool2 = true;
      paramDataOutputStream.writeBoolean(bool2);
      if (this.Diffuse != null)
      {
        paramDataOutputStream.writeFloat(this.Diffuse.r);
        paramDataOutputStream.writeFloat(this.Diffuse.g);
        paramDataOutputStream.writeFloat(this.Diffuse.b);
        paramDataOutputStream.writeFloat(this.Diffuse.a);
      }
      paramDataOutputStream.writeInt(this.BlendSourceFactor);
      paramDataOutputStream.writeInt(this.BlendDestFactor);
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.Material
 * JD-Core Version:    0.6.2
 */