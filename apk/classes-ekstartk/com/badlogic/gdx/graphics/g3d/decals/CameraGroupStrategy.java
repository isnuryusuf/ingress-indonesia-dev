package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectMap.Values;
import com.badlogic.gdx.utils.Pool;
import java.util.Comparator;
import java.util.Iterator;

public class CameraGroupStrategy
  implements GroupStrategy, Disposable
{
  private static final int GROUP_BLEND = 1;
  private static final int GROUP_OPAQUE;
  Pool<Array<Decal>> arrayPool = new CameraGroupStrategy.1(this, 16);
  Camera camera;
  private final Comparator<Decal> cameraSorter = new CameraGroupStrategy.2(this);
  ObjectMap<DecalMaterial, Array<Decal>> materialGroups = new ObjectMap();
  ShaderProgram shader;
  Array<Array<Decal>> usedArrays = new Array();

  public CameraGroupStrategy(Camera paramCamera)
  {
    this.camera = paramCamera;
    createDefaultShader();
  }

  private void createDefaultShader()
  {
    if (Gdx.graphics.isGL20Available())
    {
      this.shader = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}");
      if (!this.shader.isCompiled())
        throw new IllegalArgumentException("couldn't compile shader: " + this.shader.getLog());
    }
  }

  public void afterGroup(int paramInt)
  {
    if (paramInt == 1)
      Gdx.gl.glDisable(3042);
  }

  public void afterGroups()
  {
    if (this.shader != null)
      this.shader.end();
    Gdx.gl.glDisable(3553);
    Gdx.gl.glDisable(2929);
  }

  public void beforeGroup(int paramInt, Array<Decal> paramArray)
  {
    if (paramInt == 1)
    {
      Gdx.gl.glEnable(3042);
      paramArray.sort(this.cameraSorter);
      return;
    }
    int i = paramArray.size;
    for (int j = 0; j < i; j++)
    {
      Decal localDecal = (Decal)paramArray.get(j);
      Array localArray = (Array)this.materialGroups.get(localDecal.material);
      if (localArray == null)
      {
        localArray = (Array)this.arrayPool.obtain();
        localArray.clear();
        this.usedArrays.add(localArray);
        this.materialGroups.put(localDecal.material, localArray);
      }
      localArray.add(localDecal);
    }
    paramArray.clear();
    Iterator localIterator = this.materialGroups.values().iterator();
    while (localIterator.hasNext())
      paramArray.addAll((Array)localIterator.next());
    this.materialGroups.clear();
    this.arrayPool.free(this.usedArrays);
    this.usedArrays.clear();
  }

  public void beforeGroups()
  {
    Gdx.gl.glEnable(2929);
    if (this.shader != null)
    {
      this.shader.begin();
      this.shader.setUniformMatrix("u_projectionViewMatrix", this.camera.combined);
      this.shader.setUniformi("u_texture", 0);
      return;
    }
    Gdx.gl.glEnable(3553);
    Gdx.gl10.glMatrixMode(5889);
    Gdx.gl10.glLoadMatrixf(this.camera.projection.val, 0);
    Gdx.gl10.glMatrixMode(5888);
    Gdx.gl10.glLoadMatrixf(this.camera.view.val, 0);
  }

  public int decideGroup(Decal paramDecal)
  {
    if (paramDecal.getMaterial().isOpaque())
      return 0;
    return 1;
  }

  public void dispose()
  {
    if (this.shader != null)
      this.shader.dispose();
  }

  public Camera getCamera()
  {
    return this.camera;
  }

  public ShaderProgram getGroupShader(int paramInt)
  {
    return this.shader;
  }

  public void setCamera(Camera paramCamera)
  {
    this.camera = paramCamera;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.CameraGroupStrategy
 * JD-Core Version:    0.6.2
 */