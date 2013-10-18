package com.nianticproject.ingress.common.ui.hud;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Stage;

public final class d
{
  public static Rectangle a(Stage paramStage, Rectangle paramRectangle)
  {
    Vector2 localVector21 = a(paramStage, paramRectangle.x, paramRectangle.y);
    Vector2 localVector22 = a(paramStage, paramRectangle.x + paramRectangle.width, paramRectangle.y + paramRectangle.height);
    return new Rectangle(localVector21.x, localVector21.y, localVector22.x - localVector21.x, localVector22.y - localVector21.y);
  }

  private static Vector2 a(Stage paramStage, float paramFloat1, float paramFloat2)
  {
    Vector2 localVector2 = new Vector2(Math.round(paramFloat1 * paramStage.getWidth()), Math.round((1.0F - paramFloat2) * paramStage.getHeight()));
    paramStage.screenToStageCoordinates(localVector2);
    return localVector2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.d
 * JD-Core Version:    0.6.2
 */