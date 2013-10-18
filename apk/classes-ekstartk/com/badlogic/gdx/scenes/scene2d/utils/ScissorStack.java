package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;

public class ScissorStack
{
  private static Array<Rectangle> scissors = new Array();
  static Vector3 tmp = new Vector3();
  static final Rectangle viewport = new Rectangle();

  public static void calculateScissors(Camera paramCamera, Matrix4 paramMatrix4, Rectangle paramRectangle1, Rectangle paramRectangle2)
  {
    tmp.set(paramRectangle1.x, paramRectangle1.y, 0.0F);
    tmp.mul(paramMatrix4);
    paramCamera.project(tmp);
    paramRectangle2.x = tmp.x;
    paramRectangle2.y = tmp.y;
    tmp.set(paramRectangle1.x + paramRectangle1.width, paramRectangle1.y + paramRectangle1.height, 0.0F);
    tmp.mul(paramMatrix4);
    paramCamera.project(tmp);
    paramRectangle2.width = (tmp.x - paramRectangle2.x);
    paramRectangle2.height = (tmp.y - paramRectangle2.y);
  }

  private static void fix(Rectangle paramRectangle)
  {
    if (paramRectangle.width < 0.0F)
    {
      paramRectangle.width = (-paramRectangle.width);
      paramRectangle.x -= paramRectangle.width;
    }
    if (paramRectangle.height < 0.0F)
    {
      paramRectangle.height = (-paramRectangle.height);
      paramRectangle.y -= paramRectangle.height;
    }
  }

  public static Rectangle getViewport()
  {
    if (scissors.size == 0)
    {
      viewport.set(0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
      return viewport;
    }
    Rectangle localRectangle = (Rectangle)scissors.peek();
    viewport.set(localRectangle);
    return viewport;
  }

  public static void popScissors()
  {
    scissors.pop();
    if (scissors.size == 0)
    {
      Gdx.gl.glDisable(3089);
      return;
    }
    Rectangle localRectangle = (Rectangle)scissors.peek();
    Gdx.gl.glScissor((int)localRectangle.x, (int)localRectangle.y, (int)localRectangle.width, (int)localRectangle.height);
  }

  public static boolean pushScissors(Rectangle paramRectangle)
  {
    fix(paramRectangle);
    if (scissors.size == 0)
    {
      if ((paramRectangle.width < 1.0F) || (paramRectangle.height < 1.0F))
        return false;
      Gdx.gl.glEnable(3089);
    }
    while (true)
    {
      scissors.add(paramRectangle);
      Gdx.gl.glScissor((int)paramRectangle.x, (int)paramRectangle.y, (int)paramRectangle.width, (int)paramRectangle.height);
      return true;
      Rectangle localRectangle = (Rectangle)scissors.get(-1 + scissors.size);
      float f1 = Math.max(localRectangle.x, paramRectangle.x);
      float f2 = Math.min(localRectangle.x + localRectangle.width, paramRectangle.x + paramRectangle.width);
      if (f2 - f1 < 1.0F)
        return false;
      float f3 = Math.max(localRectangle.y, paramRectangle.y);
      float f4 = Math.min(localRectangle.y + localRectangle.height, paramRectangle.y + paramRectangle.height);
      if (f4 - f3 < 1.0F)
        return false;
      paramRectangle.x = f1;
      paramRectangle.y = f3;
      paramRectangle.width = (f2 - f1);
      paramRectangle.height = Math.max(1.0F, f4 - f3);
    }
  }

  public static void toWindowCoordinates(Camera paramCamera, Matrix4 paramMatrix4, Vector2 paramVector2)
  {
    tmp.set(paramVector2.x, paramVector2.y, 0.0F);
    tmp.mul(paramMatrix4);
    paramCamera.project(tmp);
    tmp.y = (Gdx.graphics.getHeight() - tmp.y);
    paramVector2.x = tmp.x;
    paramVector2.y = tmp.y;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.ScissorStack
 * JD-Core Version:    0.6.2
 */