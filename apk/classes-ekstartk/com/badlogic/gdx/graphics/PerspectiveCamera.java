package com.badlogic.gdx.graphics;

import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;

public class PerspectiveCamera extends Camera
{
  public float fieldOfView = 67.0F;
  final Vector3 tmp = new Vector3();

  public PerspectiveCamera()
  {
  }

  public PerspectiveCamera(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.fieldOfView = paramFloat1;
    this.viewportWidth = paramFloat2;
    this.viewportHeight = paramFloat3;
    update();
  }

  public void update()
  {
    float f = this.viewportWidth / this.viewportHeight;
    this.projection.setToProjection(Math.abs(this.near), Math.abs(this.far), this.fieldOfView, f);
    this.view.setToLookAt(this.position, this.tmp.set(this.position).add(this.direction), this.up);
    this.combined.set(this.projection);
    Matrix4.mul(this.combined.val, this.view.val);
    this.invProjectionView.set(this.combined);
    Matrix4.inv(this.invProjectionView.val);
    this.frustum.update(this.invProjectionView);
  }

  public void update(boolean paramBoolean)
  {
    float f = this.viewportWidth / this.viewportHeight;
    this.projection.setToProjection(Math.abs(this.near), Math.abs(this.far), this.fieldOfView, f);
    this.view.setToLookAt(this.position, this.tmp.set(this.position).add(this.direction), this.up);
    this.combined.set(this.projection);
    Matrix4.mul(this.combined.val, this.view.val);
    if (paramBoolean)
    {
      this.invProjectionView.set(this.combined);
      Matrix4.inv(this.invProjectionView.val);
      this.frustum.update(this.invProjectionView);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.PerspectiveCamera
 * JD-Core Version:    0.6.2
 */