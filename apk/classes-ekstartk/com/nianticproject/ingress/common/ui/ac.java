package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Disposable;

public abstract interface ac extends Disposable
{
  public abstract void a(Skin paramSkin, Stage paramStage);

  public abstract boolean a(float paramFloat);

  public abstract void dispose();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.ac
 * JD-Core Version:    0.6.2
 */