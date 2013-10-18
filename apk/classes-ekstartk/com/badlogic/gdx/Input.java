package com.badlogic.gdx;

public abstract interface Input
{
  public abstract void cancelVibrate();

  public abstract float getAccelerometerX();

  public abstract float getAccelerometerY();

  public abstract float getAccelerometerZ();

  public abstract float getAzimuth();

  public abstract long getCurrentEventTime();

  public abstract int getDeltaX();

  public abstract int getDeltaX(int paramInt);

  public abstract int getDeltaY();

  public abstract int getDeltaY(int paramInt);

  public abstract InputProcessor getInputProcessor();

  public abstract Input.Orientation getNativeOrientation();

  public abstract float getPitch();

  public abstract void getPlaceholderTextInput(Input.TextInputListener paramTextInputListener, String paramString1, String paramString2);

  public abstract float getRoll();

  public abstract int getRotation();

  public abstract void getRotationMatrix(float[] paramArrayOfFloat);

  public abstract void getTextInput(Input.TextInputListener paramTextInputListener, String paramString1, String paramString2);

  public abstract int getX();

  public abstract int getX(int paramInt);

  public abstract int getY();

  public abstract int getY(int paramInt);

  public abstract boolean isButtonPressed(int paramInt);

  public abstract boolean isCursorCatched();

  public abstract boolean isKeyPressed(int paramInt);

  public abstract boolean isPeripheralAvailable(Input.Peripheral paramPeripheral);

  public abstract boolean isTouched();

  public abstract boolean isTouched(int paramInt);

  public abstract boolean justTouched();

  public abstract void setCatchBackKey(boolean paramBoolean);

  public abstract void setCatchMenuKey(boolean paramBoolean);

  public abstract void setCursorCatched(boolean paramBoolean);

  public abstract void setCursorPosition(int paramInt1, int paramInt2);

  public abstract void setInputProcessor(InputProcessor paramInputProcessor);

  public abstract void setOnscreenKeyboardVisible(boolean paramBoolean);

  public abstract void vibrate(int paramInt);

  public abstract void vibrate(long[] paramArrayOfLong, int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Input
 * JD-Core Version:    0.6.2
 */