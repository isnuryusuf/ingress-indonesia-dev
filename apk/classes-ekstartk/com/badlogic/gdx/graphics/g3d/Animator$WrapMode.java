package com.badlogic.gdx.graphics.g3d;

public enum Animator$WrapMode
{
  static
  {
    Clamp = new WrapMode("Clamp", 1);
    SingleFrame = new WrapMode("SingleFrame", 2);
    WrapMode[] arrayOfWrapMode = new WrapMode[3];
    arrayOfWrapMode[0] = Loop;
    arrayOfWrapMode[1] = Clamp;
    arrayOfWrapMode[2] = SingleFrame;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.Animator.WrapMode
 * JD-Core Version:    0.6.2
 */