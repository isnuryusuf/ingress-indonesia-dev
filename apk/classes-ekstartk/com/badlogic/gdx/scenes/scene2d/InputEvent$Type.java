package com.badlogic.gdx.scenes.scene2d;

public enum InputEvent$Type
{
  static
  {
    touchDragged = new Type("touchDragged", 2);
    mouseMoved = new Type("mouseMoved", 3);
    enter = new Type("enter", 4);
    exit = new Type("exit", 5);
    scrolled = new Type("scrolled", 6);
    keyDown = new Type("keyDown", 7);
    keyUp = new Type("keyUp", 8);
    keyTyped = new Type("keyTyped", 9);
    Type[] arrayOfType = new Type[10];
    arrayOfType[0] = touchDown;
    arrayOfType[1] = touchUp;
    arrayOfType[2] = touchDragged;
    arrayOfType[3] = mouseMoved;
    arrayOfType[4] = enter;
    arrayOfType[5] = exit;
    arrayOfType[6] = scrolled;
    arrayOfType[7] = keyDown;
    arrayOfType[8] = keyUp;
    arrayOfType[9] = keyTyped;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.InputEvent.Type
 * JD-Core Version:    0.6.2
 */