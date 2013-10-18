package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class ShapeRenderer
{
  Color color = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  Matrix4 combined = new Matrix4();
  ShapeRenderer.ShapeType currType = null;
  boolean matrixDirty = false;
  Matrix4 projView = new Matrix4();
  ImmediateModeRenderer renderer;
  Matrix4 tmp = new Matrix4();
  Matrix4 transform = new Matrix4();

  public ShapeRenderer()
  {
    this(5000);
  }

  public ShapeRenderer(int paramInt)
  {
    if (Gdx.graphics.isGL20Available());
    for (this.renderer = new ImmediateModeRenderer20(paramInt, false, true, 0); ; this.renderer = new ImmediateModeRenderer10(paramInt))
    {
      this.projView.setToOrtho2D(0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
      this.matrixDirty = true;
      return;
    }
  }

  private void checkDirty()
  {
    if (!this.matrixDirty)
      return;
    ShapeRenderer.ShapeType localShapeType = this.currType;
    end();
    begin(localShapeType);
  }

  private void checkFlush(int paramInt)
  {
    if (this.renderer.getMaxVertices() - this.renderer.getNumVertices() >= paramInt)
      return;
    ShapeRenderer.ShapeType localShapeType = this.currType;
    end();
    begin(localShapeType);
  }

  public void begin(ShapeRenderer.ShapeType paramShapeType)
  {
    if (this.currType != null)
      throw new GdxRuntimeException("Call end() before beginning a new shape batch");
    this.currType = paramShapeType;
    if (this.matrixDirty)
    {
      this.combined.set(this.projView);
      Matrix4.mul(this.combined.val, this.transform.val);
      this.matrixDirty = false;
    }
    this.renderer.begin(this.combined, this.currType.getGlType());
  }

  public void box(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    if (this.currType != ShapeRenderer.ShapeType.Box)
      throw new GdxRuntimeException("Must call begin(ShapeType.Box)");
    checkDirty();
    checkFlush(16);
    float f = -paramFloat6;
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat5, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat5, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2 + paramFloat5, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2 + paramFloat5, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2 + paramFloat5, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2 + paramFloat5, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat5, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat5, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat5, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2 + paramFloat5, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat4, paramFloat2 + paramFloat5, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3 + f);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat5, f + paramFloat3);
  }

  public void circle(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    circle(paramFloat1, paramFloat2, paramFloat3, (int)(6.0F * (float)Math.cbrt(paramFloat3)));
  }

  public void circle(float paramFloat1, float paramFloat2, float paramFloat3, int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("segments must be >= 0.");
    if (this.currType != ShapeRenderer.ShapeType.Circle)
      throw new GdxRuntimeException("Must call begin(ShapeType.Circle)");
    checkDirty();
    checkFlush(2 + paramInt * 2);
    float f1 = 6.283185F / paramInt;
    float f2 = MathUtils.cos(f1);
    float f3 = MathUtils.sin(f1);
    int i = 0;
    float f4 = 0.0F;
    float f6;
    for (float f5 = paramFloat3; i < paramInt; f5 = f6)
    {
      this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
      this.renderer.vertex(paramFloat1 + f5, paramFloat2 + f4, 0.0F);
      f6 = f2 * f5 - f3 * f4;
      f4 = f5 * f3 + f4 * f2;
      this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
      this.renderer.vertex(paramFloat1 + f6, paramFloat2 + f4, 0.0F);
      i++;
    }
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(f5 + paramFloat1, f4 + paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2 + 0.0F, 0.0F);
  }

  public void dispose()
  {
    this.renderer.dispose();
  }

  public void end()
  {
    this.renderer.end();
    this.currType = null;
  }

  public void filledCircle(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    filledCircle(paramFloat1, paramFloat2, paramFloat3, (int)(4.0F * (float)Math.sqrt(paramFloat3)));
  }

  public void filledCircle(float paramFloat1, float paramFloat2, float paramFloat3, int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("segments must be >= 0.");
    if (this.currType != ShapeRenderer.ShapeType.FilledCircle)
      throw new GdxRuntimeException("Must call begin(ShapeType.FilledCircle)");
    checkDirty();
    checkFlush(3 + paramInt * 3);
    float f1 = 6.283185F / paramInt;
    float f2 = MathUtils.cos(f1);
    float f3 = MathUtils.sin(f1);
    float f4 = 0.0F;
    int i = paramInt - 1;
    int j = 0;
    float f6;
    for (float f5 = paramFloat3; j < i; f5 = f6)
    {
      this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
      this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
      this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
      this.renderer.vertex(paramFloat1 + f5, paramFloat2 + f4, 0.0F);
      f6 = f2 * f5 - f3 * f4;
      f4 = f5 * f3 + f4 * f2;
      this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
      this.renderer.vertex(paramFloat1 + f6, paramFloat2 + f4, 0.0F);
      j++;
    }
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(f5 + paramFloat1, f4 + paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, 0.0F + paramFloat2, 0.0F);
  }

  public void filledRect(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (this.currType != ShapeRenderer.ShapeType.FilledRectangle)
      throw new GdxRuntimeException("Must call begin(ShapeType.FilledRectangle)");
    checkDirty();
    checkFlush(8);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
  }

  public void filledRect(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, Color paramColor1, Color paramColor2, Color paramColor3, Color paramColor4)
  {
    if (this.currType != ShapeRenderer.ShapeType.FilledRectangle)
      throw new GdxRuntimeException("Must call begin(ShapeType.FilledRectangle)");
    checkDirty();
    checkFlush(8);
    this.renderer.color(paramColor1.r, paramColor1.g, paramColor1.b, paramColor1.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
    this.renderer.color(paramColor2.r, paramColor2.g, paramColor2.b, paramColor2.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2, 0.0F);
    this.renderer.color(paramColor3.r, paramColor3.g, paramColor3.b, paramColor3.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(paramColor3.r, paramColor3.g, paramColor3.b, paramColor3.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(paramColor4.r, paramColor4.g, paramColor4.b, paramColor4.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(paramColor1.r, paramColor1.g, paramColor1.b, paramColor1.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
  }

  public void filledTriangle(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    if (this.currType != ShapeRenderer.ShapeType.FilledTriangle)
      throw new GdxRuntimeException("Must call begin(ShapeType.FilledTriangle)");
    checkDirty();
    checkFlush(3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat3, paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat5, paramFloat6, 0.0F);
  }

  public void flush()
  {
    ShapeRenderer.ShapeType localShapeType = this.currType;
    end();
    begin(localShapeType);
  }

  public void identity()
  {
    this.transform.idt();
    this.matrixDirty = true;
  }

  public void line(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (this.currType != ShapeRenderer.ShapeType.Line)
      throw new GdxRuntimeException("Must call begin(ShapeType.Line)");
    checkDirty();
    checkFlush(2);
    if (this.currType != ShapeRenderer.ShapeType.Line)
      throw new GdxRuntimeException("Must call begin(ShapeType.Line)");
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat3, paramFloat4, 0.0F);
  }

  public void line(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    if (this.currType != ShapeRenderer.ShapeType.Line)
      throw new GdxRuntimeException("Must call begin(ShapeType.Line)");
    checkDirty();
    checkFlush(2);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat4, paramFloat5, paramFloat6);
  }

  public void point(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (this.currType != ShapeRenderer.ShapeType.Point)
      throw new GdxRuntimeException("Must call begin(ShapeType.Point)");
    checkDirty();
    checkFlush(1);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, paramFloat3);
  }

  public void rect(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (this.currType != ShapeRenderer.ShapeType.Rectangle)
      throw new GdxRuntimeException("Must call begin(ShapeType.Rectangle)");
    checkDirty();
    checkFlush(8);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2 + paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
  }

  public void rotate(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.transform.rotate(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.matrixDirty = true;
  }

  public void scale(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.transform.scale(paramFloat1, paramFloat2, paramFloat3);
    this.matrixDirty = true;
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.color.set(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void setColor(Color paramColor)
  {
    this.color.set(paramColor);
  }

  public void setProjectionMatrix(Matrix4 paramMatrix4)
  {
    this.projView.set(paramMatrix4);
    this.matrixDirty = true;
  }

  public void setTransformMatrix(Matrix4 paramMatrix4)
  {
    this.transform.set(paramMatrix4);
    this.matrixDirty = true;
  }

  public void translate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.transform.translate(paramFloat1, paramFloat2, paramFloat3);
    this.matrixDirty = true;
  }

  public void triangle(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    if (this.currType != ShapeRenderer.ShapeType.Triangle)
      throw new GdxRuntimeException("Must call begin(ShapeType.Triangle)");
    checkDirty();
    checkFlush(6);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat3, paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat3, paramFloat4, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat5, paramFloat6, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat5, paramFloat6, 0.0F);
    this.renderer.color(this.color.r, this.color.g, this.color.b, this.color.a);
    this.renderer.vertex(paramFloat1, paramFloat2, 0.0F);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ShapeRenderer
 * JD-Core Version:    0.6.2
 */