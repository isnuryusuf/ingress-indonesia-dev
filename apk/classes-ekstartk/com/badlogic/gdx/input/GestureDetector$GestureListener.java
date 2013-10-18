package com.badlogic.gdx.input;

import com.badlogic.gdx.math.Vector2;

public abstract interface GestureDetector$GestureListener
{
  public abstract boolean fling(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2);

  public abstract boolean longPress(float paramFloat1, float paramFloat2);

  public abstract boolean pan(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  public abstract boolean pinch(Vector2 paramVector21, Vector2 paramVector22, Vector2 paramVector23, Vector2 paramVector24);

  public abstract boolean tap(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3);

  public abstract boolean touchDown(float paramFloat1, float paramFloat2, int paramInt);

  public abstract boolean zoom(float paramFloat1, float paramFloat2);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.input.GestureDetector.GestureListener
 * JD-Core Version:    0.6.2
 */