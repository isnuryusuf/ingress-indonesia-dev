package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;

public abstract class Camera
{
  public final Matrix4 combined = new Matrix4();
  public final Vector3 direction = new Vector3(0.0F, 0.0F, -1.0F);
  public float far = 100.0F;
  public final Frustum frustum = new Frustum();
  public final Matrix4 invProjectionView = new Matrix4();
  public float near = 1.0F;
  public final Vector3 position = new Vector3();
  public final Matrix4 projection = new Matrix4();
  final Ray ray = new Ray(new Vector3(), new Vector3());
  final Vector3 right = new Vector3();
  private final Matrix4 tmpMat = new Matrix4();
  private final Vector3 tmpVec = new Vector3();
  public final Vector3 up = new Vector3(0.0F, 1.0F, 0.0F);
  public final Matrix4 view = new Matrix4();
  public float viewportHeight = 0.0F;
  public float viewportWidth = 0.0F;

  public void apply(GL10 paramGL10)
  {
    paramGL10.glMatrixMode(5889);
    paramGL10.glLoadMatrixf(this.projection.val, 0);
    paramGL10.glMatrixMode(5888);
    paramGL10.glLoadMatrixf(this.view.val, 0);
  }

  public Ray getPickRay(float paramFloat1, float paramFloat2)
  {
    return getPickRay(paramFloat1, paramFloat2, 0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  }

  public Ray getPickRay(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    unproject(this.ray.origin.set(paramFloat1, paramFloat2, 0.0F), paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    unproject(this.ray.direction.set(paramFloat1, paramFloat2, 1.0F), paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    this.ray.direction.sub(this.ray.origin).nor();
    return this.ray;
  }

  public void lookAt(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.direction.set(paramFloat1, paramFloat2, paramFloat3).sub(this.position).nor();
  }

  public void normalizeUp()
  {
    this.right.set(this.direction).crs(this.up).nor();
    this.up.set(this.right).crs(this.direction).nor();
  }

  public void project(Vector3 paramVector3)
  {
    project(paramVector3, 0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  }

  public void project(Vector3 paramVector3, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramVector3.prj(this.combined);
    paramVector3.x = (paramFloat1 + paramFloat3 * (1.0F + paramVector3.x) / 2.0F);
    paramVector3.y = (paramFloat2 + paramFloat4 * (1.0F + paramVector3.y) / 2.0F);
    paramVector3.z = ((1.0F + paramVector3.z) / 2.0F);
  }

  public void rotate(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    rotate(this.tmpVec.set(paramFloat2, paramFloat3, paramFloat4), paramFloat1);
  }

  public void rotate(Vector3 paramVector3, float paramFloat)
  {
    this.tmpMat.setToRotation(paramVector3, paramFloat);
    this.direction.mul(this.tmpMat).nor();
    this.up.mul(this.tmpMat).nor();
  }

  public void translate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.position.add(paramFloat1, paramFloat2, paramFloat3);
  }

  public void translate(Vector3 paramVector3)
  {
    this.position.add(paramVector3);
  }

  public void unproject(Vector3 paramVector3)
  {
    unproject(paramVector3, 0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  }

  public void unproject(Vector3 paramVector3, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramVector3.x;
    float f2 = paramVector3.y;
    float f3 = f1 - paramFloat1;
    float f4 = Gdx.graphics.getHeight() - f2 - 1.0F - paramFloat2;
    paramVector3.x = (f3 * 2.0F / paramFloat3 - 1.0F);
    paramVector3.y = (2.0F * f4 / paramFloat4 - 1.0F);
    paramVector3.z = (2.0F * paramVector3.z - 1.0F);
    paramVector3.prj(this.invProjectionView);
  }

  public abstract void update();

  public abstract void update(boolean paramBoolean);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Camera
 * JD-Core Version:    0.6.2
 */