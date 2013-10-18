package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;

public class TextField$DefaultOnscreenKeyboard
  implements TextField.OnscreenKeyboard
{
  public void show(boolean paramBoolean)
  {
    Gdx.input.setOnscreenKeyboardVisible(paramBoolean);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.TextField.DefaultOnscreenKeyboard
 * JD-Core Version:    0.6.2
 */