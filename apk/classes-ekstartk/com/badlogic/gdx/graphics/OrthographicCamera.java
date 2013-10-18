package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;

public class OrthographicCamera extends Camera
{
  private final Vector3 tmp = new Vector3();
  public float zoom = 1.0F;

  public OrthographicCamera()
  {
    this.near = 0.0F;
  }

  public OrthographicCamera(float paramFloat1, float paramFloat2)
  {
    this.viewportWidth = paramFloat1;
    this.viewportHeight = paramFloat2;
    this.near = 0.0F;
    update();
  }

  public OrthographicCamera(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.viewportWidth = paramFloat1;
    this.viewportHeight = paramFloat2;
    this.near = 0.0F;
    findDirectionForIsoView(paramFloat3, 1.0E-08F, 20);
    update();
  }

  private float calculateAngle(float paramFloat)
  {
    Vector3 localVector31 = calculateDirection(paramFloat);
    this.position.set(localVector31.mul(30.0F));
    lookAt(0.0F, 0.0F, 0.0F);
    normalizeUp();
    update();
    Vector3 localVector32 = new Vector3(0.0F, 0.0F, 0.0F);
    Vector3 localVector33 = new Vector3(1.0F, 0.0F, 0.0F);
    project(localVector32);
    project(localVector33);
    return new Vector2(localVector33.x - localVector32.x, -(localVector33.y - localVector32.y)).angle();
  }

  private Vector3 calculateDirection(float paramFloat)
  {
    Matrix4 localMatrix4 = new Matrix4();
    Vector3 localVector3 = new Vector3(-1.0F, 0.0F, 1.0F).nor();
    Math.toDegrees(Math.asin(Math.tan(Math.toRadians(paramFloat))));
    localMatrix4.setToRotation(new Vector3(1.0F, 0.0F, 1.0F).nor(), paramFloat);
    localVector3.mul(localMatrix4).nor();
    return localVector3;
  }

  public void findDirectionForIsoView(float paramFloat1, float paramFloat2, int paramInt)
  {
    float f1 = paramFloat1 - 5.0F;
    float f2 = paramFloat1 + 5.0F;
    float f3 = paramFloat1;
    float f4 = f2;
    float f5 = f1;
    int i = 0;
    float f6 = 0.0F;
    if (Math.abs(paramFloat1 - f6) > paramFloat2)
    {
      int j = i + 1;
      if (i < paramInt)
      {
        f6 = calculateAngle(f3);
        float f8;
        if (paramFloat1 < f6)
          f8 = f5;
        while (true)
        {
          float f9 = f8 + (f3 - f8) / 2.0F;
          f5 = f8;
          f4 = f3;
          f3 = f9;
          i = j;
          break;
          float f7 = f4;
          f8 = f3;
          f3 = f7;
        }
      }
    }
    this.position.set(calculateDirection(f3));
    this.position.y = (-this.position.y);
    lookAt(0.0F, 0.0F, 0.0F);
    normalizeUp();
  }

  public void rotate(float paramFloat)
  {
    rotate(this.direction, paramFloat);
  }

  public void setToOrtho(boolean paramBoolean)
  {
    setToOrtho(paramBoolean, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  }

  public void setToOrtho(boolean paramBoolean, float paramFloat1, float paramFloat2)
  {
    if (paramBoolean)
    {
      this.up.set(0.0F, -1.0F, 0.0F);
      this.direction.set(0.0F, 0.0F, 1.0F);
    }
    this.position.set(paramFloat1 * this.zoom / 2.0F, paramFloat2 * this.zoom / 2.0F, 0.0F);
    this.viewportWidth = paramFloat1;
    this.viewportHeight = paramFloat2;
    update();
  }

  public void translate(float paramFloat1, float paramFloat2)
  {
    translate(paramFloat1, paramFloat2, 0.0F);
  }

  public void translate(Vector2 paramVector2)
  {
    translate(paramVector2.x, paramVector2.y, 0.0F);
  }

  public void update()
  {
    this.projection.setToOrtho(this.zoom * -this.viewportWidth / 2.0F, this.zoom * this.viewportWidth / 2.0F, this.zoom * -this.viewportHeight / 2.0F, this.zoom * this.viewportHeight / 2.0F, Math.abs(this.near), Math.abs(this.far));
    this.view.setToLookAt(this.position, this.tmp.set(this.position).add(this.direction), this.up);
    this.combined.set(this.projection);
    Matrix4.mul(this.combined.val, this.view.val);
    this.invProjectionView.set(this.combined);
    Matrix4.inv(this.invProjectionView.val);
    this.frustum.update(this.invProjectionView);
  }

  public void update(boolean paramBoolean)
  {
    this.projection.setToOrtho(this.zoom * -this.viewportWidth / 2.0F, this.zoom * this.viewportWidth / 2.0F, this.zoom * -this.viewportHeight / 2.0F, this.zoom * this.viewportHeight / 2.0F, Math.abs(this.near), Math.abs(this.far));
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
 * Qualified Name:     com.badlogic.gdx.graphics.OrthographicCamera
 * JD-Core Version:    0.6.2
 */