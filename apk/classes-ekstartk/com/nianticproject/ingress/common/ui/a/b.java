package com.nianticproject.ingress.common.ui.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;

public final class b
{
  public static void a(Stage paramStage, Label paramLabel, String paramString, long paramLong, float paramFloat)
  {
    Color localColor = paramLabel.getColor();
    paramLabel.setColor(localColor.r, localColor.g, localColor.b, 0.0F);
    paramLabel.setText(paramString + paramLong + "XM");
    paramLabel.setVisible(true);
    paramLabel.setX(paramStage.getWidth() / 2.0F - paramLabel.getPrefWidth() / 2.0F);
    paramLabel.setY(paramFloat * paramStage.getHeight());
    boolean bool = paramLong < 0L;
    float f = 0.0F;
    if (bool)
      f = 0.13F * paramStage.getHeight();
    paramLabel.addAction(Actions.parallel(Actions.sequence(Actions.fadeIn(0.25F), Actions.alpha(1.0F, 0.25F), Actions.fadeOut(1.9F, Interpolation.pow3)), Actions.moveTo(paramLabel.getX(), f + paramLabel.getY(), 1.9F, Interpolation.linear)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.a.b
 * JD-Core Version:    0.6.2
 */