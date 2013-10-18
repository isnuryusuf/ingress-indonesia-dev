package com.badlogic.gdx.backends.android;

import a;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Vibrator;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Graphics.DisplayMode;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Input.Orientation;
import com.badlogic.gdx.Input.Peripheral;
import com.badlogic.gdx.Input.TextInputListener;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Pool;
import java.util.ArrayList;
import java.util.List;

public final class AndroidInput
  implements View.OnKeyListener, View.OnTouchListener, Input
{
  final float[] R = new float[9];
  public boolean accelerometerAvailable = false;
  private SensorEventListener accelerometerListener;
  private final float[] accelerometerValues = new float[3];
  final AndroidApplication app;
  private float azimuth = 0.0F;
  private boolean catchBack = false;
  private boolean catchMenu = false;
  private boolean compassAvailable = false;
  private SensorEventListener compassListener;
  private final AndroidApplicationConfiguration config;
  private long currentEventTimeStamp = System.nanoTime();
  int[] deltaX = new int[20];
  int[] deltaY = new int[20];
  private Handler handle;
  final boolean hasMultitouch;
  private float inclination = 0.0F;
  private boolean justTouched = false;
  ArrayList<AndroidInput.KeyEvent> keyEvents = new ArrayList();
  boolean keyboardAvailable;
  private IntMap<Object> keys = new IntMap();
  private final float[] magneticFieldValues = new float[3];
  private SensorManager manager;
  private final Input.Orientation nativeOrientation;
  private final AndroidOnscreenKeyboard onscreenKeyboard;
  final float[] orientation = new float[3];
  private float pitch = 0.0F;
  private InputProcessor processor;
  int[] realId = new int[10];
  boolean requestFocus = true;
  private float roll = 0.0F;
  private int sleepTime = 0;
  private String text = null;
  private Input.TextInputListener textListener = null;
  ArrayList<AndroidInput.TouchEvent> touchEvents = new ArrayList();
  private final AndroidTouchHandler touchHandler;
  int[] touchX = new int[20];
  int[] touchY = new int[20];
  boolean[] touched = new boolean[20];
  Pool<AndroidInput.KeyEvent> usedKeyEvents = new AndroidInput.1(this, 16, 1000);
  Pool<AndroidInput.TouchEvent> usedTouchEvents = new AndroidInput.2(this, 16, 1000);
  private final Vibrator vibrator;

  public AndroidInput(AndroidApplication paramAndroidApplication, View paramView, AndroidApplicationConfiguration paramAndroidApplicationConfiguration)
  {
    paramView.setOnKeyListener(this);
    paramView.setOnTouchListener(this);
    paramView.setFocusable(true);
    paramView.setFocusableInTouchMode(true);
    paramView.requestFocus();
    paramView.requestFocusFromTouch();
    this.config = paramAndroidApplicationConfiguration;
    this.onscreenKeyboard = new AndroidOnscreenKeyboard(paramAndroidApplication, new Handler(), this);
    while (i < this.realId.length)
    {
      this.realId[i] = -1;
      i++;
    }
    this.handle = new Handler();
    this.app = paramAndroidApplication;
    this.sleepTime = paramAndroidApplicationConfiguration.touchSleepTime;
    if (Integer.parseInt(Build.VERSION.SDK) >= 5);
    for (this.touchHandler = new AndroidMultiTouchHandler(); ; this.touchHandler = new AndroidSingleTouchHandler())
    {
      this.hasMultitouch = this.touchHandler.supportsMultitouch(this.app);
      this.vibrator = ((Vibrator)paramAndroidApplication.getSystemService("vibrator"));
      int j = getRotation();
      Graphics.DisplayMode localDisplayMode = this.app.graphics.getDesktopDisplayMode();
      if (((j == 0) || (j == 180)) && ((localDisplayMode.width < localDisplayMode.height) && (((j != 90) && (j != 270)) || (localDisplayMode.width > localDisplayMode.height))))
        break;
      this.nativeOrientation = Input.Orientation.Landscape;
      return;
    }
    this.nativeOrientation = Input.Orientation.Portrait;
  }

  private void updateOrientation()
  {
    if (SensorManager.getRotationMatrix(this.R, null, this.accelerometerValues, this.magneticFieldValues))
    {
      SensorManager.getOrientation(this.R, this.orientation);
      this.azimuth = ((float)Math.toDegrees(this.orientation[0]));
      this.pitch = ((float)Math.toDegrees(this.orientation[1]));
      this.roll = ((float)Math.toDegrees(this.orientation[2]));
    }
  }

  public final void cancelVibrate()
  {
    this.vibrator.cancel();
  }

  public final float getAccelerometerX()
  {
    return this.accelerometerValues[0];
  }

  public final float getAccelerometerY()
  {
    return this.accelerometerValues[1];
  }

  public final float getAccelerometerZ()
  {
    return this.accelerometerValues[2];
  }

  public final float getAzimuth()
  {
    if (!this.compassAvailable)
      return 0.0F;
    updateOrientation();
    return this.azimuth;
  }

  public final long getCurrentEventTime()
  {
    return this.currentEventTimeStamp;
  }

  public final int getDeltaX()
  {
    return this.deltaX[0];
  }

  public final int getDeltaX(int paramInt)
  {
    return this.deltaX[paramInt];
  }

  public final int getDeltaY()
  {
    return this.deltaY[0];
  }

  public final int getDeltaY(int paramInt)
  {
    return this.deltaY[paramInt];
  }

  public final int getFreePointerIndex()
  {
    int i = this.realId.length;
    for (int j = 0; j < i; j++)
      if (this.realId[j] == -1)
        return j;
    int[] arrayOfInt = new int[1 + this.realId.length];
    System.arraycopy(this.realId, 0, arrayOfInt, 0, this.realId.length);
    this.realId = arrayOfInt;
    return -1 + arrayOfInt.length;
  }

  public final InputProcessor getInputProcessor()
  {
    return this.processor;
  }

  public final Input.Orientation getNativeOrientation()
  {
    return this.nativeOrientation;
  }

  public final float getPitch()
  {
    if (!this.compassAvailable)
      return 0.0F;
    updateOrientation();
    return this.pitch;
  }

  public final void getPlaceholderTextInput(Input.TextInputListener paramTextInputListener, String paramString1, String paramString2)
  {
    this.handle.post(new AndroidInput.4(this, paramString1, paramString2, paramTextInputListener));
  }

  public final float getRoll()
  {
    if (!this.compassAvailable)
      return 0.0F;
    updateOrientation();
    return this.roll;
  }

  public final int getRotation()
  {
    switch (this.app.getWindowManager().getDefaultDisplay().getOrientation())
    {
    case 0:
    default:
      return 0;
    case 1:
      return 90;
    case 2:
      return 180;
    case 3:
    }
    return 270;
  }

  public final void getRotationMatrix(float[] paramArrayOfFloat)
  {
    SensorManager.getRotationMatrix(paramArrayOfFloat, null, this.accelerometerValues, this.magneticFieldValues);
  }

  public final void getTextInput(Input.TextInputListener paramTextInputListener, String paramString1, String paramString2)
  {
    this.handle.post(new AndroidInput.3(this, paramString1, paramString2, paramTextInputListener));
  }

  public final int getX()
  {
    try
    {
      int i = this.touchX[0];
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getX(int paramInt)
  {
    try
    {
      int i = this.touchX[paramInt];
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getY()
  {
    try
    {
      int i = this.touchY[0];
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getY(int paramInt)
  {
    try
    {
      int i = this.touchY[paramInt];
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean isButtonPressed(int paramInt)
  {
    if (paramInt == 0)
      return isTouched();
    return false;
  }

  public final boolean isCursorCatched()
  {
    return false;
  }

  public final boolean isKeyPressed(int paramInt)
  {
    if (paramInt == -1);
    while (true)
    {
      try
      {
        if (this.keys.size > 0)
        {
          bool2 = true;
          return bool2;
          boolean bool1 = this.keys.containsKey(paramInt);
          return bool1;
        }
      }
      finally
      {
      }
      boolean bool2 = false;
    }
  }

  public final boolean isPeripheralAvailable(Input.Peripheral paramPeripheral)
  {
    boolean bool = true;
    if (paramPeripheral == Input.Peripheral.Accelerometer)
      bool = this.accelerometerAvailable;
    do
    {
      do
      {
        return bool;
        if (paramPeripheral == Input.Peripheral.Compass)
          return this.compassAvailable;
        if (paramPeripheral == Input.Peripheral.HardwareKeyboard)
          return this.keyboardAvailable;
      }
      while (paramPeripheral == Input.Peripheral.OnscreenKeyboard);
      if (paramPeripheral != Input.Peripheral.Vibrator)
        break;
    }
    while (this.vibrator != null);
    return false;
    if (paramPeripheral == Input.Peripheral.MultitouchScreen)
      return this.hasMultitouch;
    return false;
  }

  public final boolean isTouched()
  {
    try
    {
      int i = this.touched[0];
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean isTouched(int paramInt)
  {
    try
    {
      int i = this.touched[paramInt];
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean justTouched()
  {
    return this.justTouched;
  }

  public final int lookUpPointerIndex(int paramInt)
  {
    int i = this.realId.length;
    for (int j = 0; j < i; j++)
      if (this.realId[j] == paramInt)
        return j;
    StringBuffer localStringBuffer = new StringBuffer();
    for (int k = 0; k < i; k++)
      localStringBuffer.append(k + ":" + this.realId[k] + " ");
    Gdx.app.log("AndroidInput", "Pointer ID lookup failed: " + paramInt + ", " + localStringBuffer.toString());
    return -1;
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    while (true)
    {
      char c1;
      char c2;
      try
      {
        c1 = (char)paramKeyEvent.getUnicodeChar();
        if (paramInt != 67)
          break label333;
        c2 = '\b';
        switch (paramKeyEvent.getAction())
        {
        default:
          this.app.getGraphics().requestRendering();
          if (paramInt != 255)
            break;
          return true;
        case 0:
          AndroidInput.KeyEvent localKeyEvent3 = (AndroidInput.KeyEvent)this.usedKeyEvents.obtain();
          localKeyEvent3.keyChar = '\000';
          localKeyEvent3.keyCode = paramKeyEvent.getKeyCode();
          localKeyEvent3.type = 0;
          if ((paramInt == 4) && (paramKeyEvent.isAltPressed()))
          {
            localKeyEvent3.keyCode = 255;
            paramInt = 255;
          }
          this.keyEvents.add(localKeyEvent3);
          this.keys.put(localKeyEvent3.keyCode, null);
          continue;
        case 1:
        }
      }
      finally
      {
      }
      AndroidInput.KeyEvent localKeyEvent1 = (AndroidInput.KeyEvent)this.usedKeyEvents.obtain();
      localKeyEvent1.keyChar = '\000';
      localKeyEvent1.keyCode = paramKeyEvent.getKeyCode();
      localKeyEvent1.type = 1;
      if ((paramInt == 4) && (paramKeyEvent.isAltPressed()))
      {
        localKeyEvent1.keyCode = 255;
        paramInt = 255;
      }
      this.keyEvents.add(localKeyEvent1);
      AndroidInput.KeyEvent localKeyEvent2 = (AndroidInput.KeyEvent)this.usedKeyEvents.obtain();
      localKeyEvent2.keyChar = c2;
      localKeyEvent2.keyCode = 0;
      localKeyEvent2.type = 2;
      this.keyEvents.add(localKeyEvent2);
      if (paramInt == 255)
      {
        this.keys.remove(255);
      }
      else
      {
        this.keys.remove(paramKeyEvent.getKeyCode());
        continue;
        if ((this.catchBack) && (paramInt == 4))
          return true;
        return (this.catchMenu) && (paramInt == 82);
        label333: c2 = c1;
      }
    }
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.requestFocus)
    {
      paramView.requestFocus();
      paramView.requestFocusFromTouch();
      this.requestFocus = false;
    }
    this.touchHandler.onTouch(paramMotionEvent, this);
    if (this.sleepTime != 0);
    try
    {
      Thread.sleep(this.sleepTime);
      label48: return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label48;
    }
  }

  final void processEvents()
  {
    InputProcessor localInputProcessor;
    while (true)
    {
      AndroidInput.KeyEvent localKeyEvent;
      try
      {
        this.justTouched = false;
        if (this.processor == null)
          break label332;
        localInputProcessor = this.processor;
        int i1 = this.keyEvents.size();
        int i2 = 0;
        if (i2 >= i1)
          break;
        localKeyEvent = (AndroidInput.KeyEvent)this.keyEvents.get(i2);
        this.currentEventTimeStamp = localKeyEvent.timeStamp;
        switch (localKeyEvent.type)
        {
        default:
          this.usedKeyEvents.free(localKeyEvent);
          i2++;
          break;
        case 0:
          localInputProcessor.keyDown(localKeyEvent.keyCode);
          continue;
        case 1:
        case 2:
        }
      }
      finally
      {
      }
      localInputProcessor.keyUp(localKeyEvent.keyCode);
      continue;
      localInputProcessor.keyTyped(localKeyEvent.keyChar);
    }
    int i3 = this.touchEvents.size();
    int i4 = 0;
    if (i4 < i3)
    {
      AndroidInput.TouchEvent localTouchEvent2 = (AndroidInput.TouchEvent)this.touchEvents.get(i4);
      this.currentEventTimeStamp = localTouchEvent2.timeStamp;
      switch (localTouchEvent2.type)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        this.usedTouchEvents.free(localTouchEvent2);
        i4++;
        break;
        localInputProcessor.touchDown(localTouchEvent2.x, localTouchEvent2.y, localTouchEvent2.pointer, 0);
        this.justTouched = true;
        continue;
        localInputProcessor.touchUp(localTouchEvent2.x, localTouchEvent2.y, localTouchEvent2.pointer, 0);
        continue;
        localInputProcessor.touchDragged(localTouchEvent2.x, localTouchEvent2.y, localTouchEvent2.pointer);
      }
      label332: int i = this.touchEvents.size();
      for (int j = 0; j < i; j++)
      {
        AndroidInput.TouchEvent localTouchEvent1 = (AndroidInput.TouchEvent)this.touchEvents.get(j);
        if (localTouchEvent1.type == 0)
          this.justTouched = true;
        this.usedTouchEvents.free(localTouchEvent1);
      }
      int k = this.keyEvents.size();
      for (int m = 0; m < k; m++)
        this.usedKeyEvents.free(this.keyEvents.get(m));
    }
    if (this.touchEvents.size() == 0)
      for (int n = 0; n < this.deltaX.length; n++)
      {
        this.deltaX[0] = 0;
        this.deltaY[0] = 0;
      }
    this.keyEvents.clear();
    this.touchEvents.clear();
  }

  final void registerSensorListeners()
  {
    if (this.config.useAccelerometer)
    {
      this.manager = ((SensorManager)this.app.getSystemService("sensor"));
      if (this.manager.getSensorList(1).size() != 0)
      {
        Sensor localSensor2 = (Sensor)this.manager.getSensorList(1).get(0);
        this.accelerometerListener = new AndroidInput.SensorListener(this, this.nativeOrientation, this.accelerometerValues, this.magneticFieldValues);
        this.accelerometerAvailable = this.manager.registerListener(this.accelerometerListener, localSensor2, 1);
        if (!this.config.useCompass)
          break label236;
        if (this.manager == null)
          this.manager = ((SensorManager)this.app.getSystemService("sensor"));
        Sensor localSensor1 = this.manager.getDefaultSensor(2);
        if (localSensor1 == null)
          break label228;
        this.compassAvailable = this.accelerometerAvailable;
        if (this.compassAvailable)
        {
          this.compassListener = new AndroidInput.SensorListener(this, this.nativeOrientation, this.accelerometerValues, this.magneticFieldValues);
          this.compassAvailable = this.manager.registerListener(this.compassListener, localSensor1, 1);
        }
      }
    }
    while (true)
    {
      Gdx.app.log("AndroidInput", "sensor listener setup");
      return;
      this.accelerometerAvailable = false;
      break;
      label228: this.compassAvailable = false;
      continue;
      label236: this.compassAvailable = false;
    }
  }

  public final void setCatchBackKey(boolean paramBoolean)
  {
    this.catchBack = paramBoolean;
  }

  public final void setCatchMenuKey(boolean paramBoolean)
  {
    this.catchMenu = paramBoolean;
  }

  public final void setCursorCatched(boolean paramBoolean)
  {
  }

  public final void setCursorPosition(int paramInt1, int paramInt2)
  {
  }

  public final void setInputProcessor(InputProcessor paramInputProcessor)
  {
    try
    {
      this.processor = paramInputProcessor;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void setOnscreenKeyboardVisible(boolean paramBoolean)
  {
    this.handle.post(new AndroidInput.5(this, paramBoolean));
  }

  final void unregisterSensorListeners()
  {
    if (this.manager != null)
    {
      if (this.accelerometerListener != null)
      {
        this.manager.unregisterListener(this.accelerometerListener);
        this.accelerometerListener = null;
      }
      if (this.compassListener != null)
      {
        this.manager.unregisterListener(this.compassListener);
        this.compassListener = null;
      }
      this.manager = null;
    }
    Gdx.app.log("AndroidInput", "sensor listener tear down");
  }

  public final void vibrate(int paramInt)
  {
    Vibrator localVibrator = this.vibrator;
    long l = paramInt;
    if (a.n())
      localVibrator.vibrate(l);
  }

  public final void vibrate(long[] paramArrayOfLong, int paramInt)
  {
    this.vibrator.vibrate(paramArrayOfLong, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput
 * JD-Core Version:    0.6.2
 */