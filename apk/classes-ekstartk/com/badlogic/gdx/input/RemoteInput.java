package com.badlogic.gdx.input;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Input.Orientation;
import com.badlogic.gdx.Input.Peripheral;
import com.badlogic.gdx.Input.TextInputListener;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashSet;
import java.util.Set;

public class RemoteInput
  implements Input, Runnable
{
  public static int DEFAULT_PORT = 8190;
  private float[] accel = new float[3];
  private float[] compass = new float[3];
  public final String[] ips;
  boolean[] isTouched = new boolean[20];
  boolean justTouched = false;
  Set<Integer> keys = new HashSet();
  private boolean multiTouch = false;
  private final int port;
  InputProcessor processor = null;
  private float remoteHeight = 0.0F;
  private float remoteWidth = 0.0F;
  private ServerSocket serverSocket;
  int[] touchX = new int[20];
  int[] touchY = new int[20];

  public RemoteInput()
  {
    this(DEFAULT_PORT);
  }

  public RemoteInput(int paramInt)
  {
    try
    {
      this.port = paramInt;
      this.serverSocket = new ServerSocket(paramInt);
      Thread localThread = new Thread(this);
      localThread.setDaemon(true);
      localThread.start();
      InetAddress[] arrayOfInetAddress = InetAddress.getAllByName(InetAddress.getLocalHost().getHostName());
      this.ips = new String[arrayOfInetAddress.length];
      while (i < arrayOfInetAddress.length)
      {
        this.ips[i] = arrayOfInetAddress[i].getHostAddress();
        i++;
      }
    }
    catch (Exception localException)
    {
      throw new GdxRuntimeException("Couldn't open listening socket at port '" + paramInt + "'", localException);
    }
  }

  public void cancelVibrate()
  {
  }

  public float getAccelerometerX()
  {
    return this.accel[0];
  }

  public float getAccelerometerY()
  {
    return this.accel[1];
  }

  public float getAccelerometerZ()
  {
    return this.accel[2];
  }

  public float getAzimuth()
  {
    return this.compass[0];
  }

  public long getCurrentEventTime()
  {
    return 0L;
  }

  public int getDeltaX()
  {
    return 0;
  }

  public int getDeltaX(int paramInt)
  {
    return 0;
  }

  public int getDeltaY()
  {
    return 0;
  }

  public int getDeltaY(int paramInt)
  {
    return 0;
  }

  public String[] getIPs()
  {
    return this.ips;
  }

  public InputProcessor getInputProcessor()
  {
    return this.processor;
  }

  public Input.Orientation getNativeOrientation()
  {
    return Input.Orientation.Landscape;
  }

  public float getPitch()
  {
    return this.compass[1];
  }

  public void getPlaceholderTextInput(Input.TextInputListener paramTextInputListener, String paramString1, String paramString2)
  {
    Gdx.app.getInput().getPlaceholderTextInput(paramTextInputListener, paramString1, paramString2);
  }

  public float getRoll()
  {
    return this.compass[2];
  }

  public int getRotation()
  {
    return 0;
  }

  public void getRotationMatrix(float[] paramArrayOfFloat)
  {
  }

  public void getTextInput(Input.TextInputListener paramTextInputListener, String paramString1, String paramString2)
  {
    Gdx.app.getInput().getTextInput(paramTextInputListener, paramString1, paramString2);
  }

  public int getX()
  {
    return this.touchX[0];
  }

  public int getX(int paramInt)
  {
    return this.touchX[paramInt];
  }

  public int getY()
  {
    return this.touchY[0];
  }

  public int getY(int paramInt)
  {
    return this.touchY[paramInt];
  }

  public boolean isButtonPressed(int paramInt)
  {
    if (paramInt != 0);
    while (true)
    {
      return false;
      for (int i = 0; i < this.isTouched.length; i++)
        if (this.isTouched[i] != 0)
          return true;
    }
  }

  public boolean isCursorCatched()
  {
    return false;
  }

  public boolean isKeyPressed(int paramInt)
  {
    return this.keys.contains(Integer.valueOf(paramInt));
  }

  public boolean isPeripheralAvailable(Input.Peripheral paramPeripheral)
  {
    if (paramPeripheral == Input.Peripheral.Accelerometer);
    while (paramPeripheral == Input.Peripheral.Compass)
      return true;
    if (paramPeripheral == Input.Peripheral.MultitouchScreen)
      return this.multiTouch;
    return false;
  }

  public boolean isTouched()
  {
    return this.isTouched[0];
  }

  public boolean isTouched(int paramInt)
  {
    return this.isTouched[paramInt];
  }

  public boolean justTouched()
  {
    return this.justTouched;
  }

  public void run()
  {
    while (true)
    {
      DataInputStream localDataInputStream;
      try
      {
        System.out.println("listening, port " + this.port);
        Socket localSocket = this.serverSocket.accept();
        localSocket.setTcpNoDelay(true);
        localSocket.setSoTimeout(3000);
        localDataInputStream = new DataInputStream(localSocket.getInputStream());
        this.multiTouch = localDataInputStream.readBoolean();
        switch (localDataInputStream.readInt())
        {
        case 6:
          Gdx.app.postRunnable(new RemoteInput.EventTrigger(this, localTouchEvent, (RemoteInput.KeyEvent)localObject));
          continue;
        case 7:
        case 8:
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        }
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
      continue;
      this.accel[0] = localDataInputStream.readFloat();
      this.accel[1] = localDataInputStream.readFloat();
      this.accel[2] = localDataInputStream.readFloat();
      RemoteInput.TouchEvent localTouchEvent = null;
      Object localObject = null;
      continue;
      this.compass[0] = localDataInputStream.readFloat();
      this.compass[1] = localDataInputStream.readFloat();
      this.compass[2] = localDataInputStream.readFloat();
      localTouchEvent = null;
      localObject = null;
      continue;
      this.remoteWidth = localDataInputStream.readFloat();
      this.remoteHeight = localDataInputStream.readFloat();
      localTouchEvent = null;
      localObject = null;
      continue;
      RemoteInput.KeyEvent localKeyEvent3 = new RemoteInput.KeyEvent(this);
      localKeyEvent3.keyCode = localDataInputStream.readInt();
      localKeyEvent3.type = 0;
      localObject = localKeyEvent3;
      localTouchEvent = null;
      continue;
      RemoteInput.KeyEvent localKeyEvent2 = new RemoteInput.KeyEvent(this);
      localKeyEvent2.keyCode = localDataInputStream.readInt();
      localKeyEvent2.type = 1;
      localObject = localKeyEvent2;
      localTouchEvent = null;
      continue;
      RemoteInput.KeyEvent localKeyEvent1 = new RemoteInput.KeyEvent(this);
      localKeyEvent1.keyChar = localDataInputStream.readChar();
      localKeyEvent1.type = 2;
      localObject = localKeyEvent1;
      localTouchEvent = null;
      continue;
      localTouchEvent = new RemoteInput.TouchEvent(this);
      localTouchEvent.x = ((int)(localDataInputStream.readInt() / this.remoteWidth * Gdx.graphics.getWidth()));
      localTouchEvent.y = ((int)(localDataInputStream.readInt() / this.remoteHeight * Gdx.graphics.getHeight()));
      localTouchEvent.pointer = localDataInputStream.readInt();
      localTouchEvent.type = 0;
      localObject = null;
      continue;
      localTouchEvent = new RemoteInput.TouchEvent(this);
      localTouchEvent.x = ((int)(localDataInputStream.readInt() / this.remoteWidth * Gdx.graphics.getWidth()));
      localTouchEvent.y = ((int)(localDataInputStream.readInt() / this.remoteHeight * Gdx.graphics.getHeight()));
      localTouchEvent.pointer = localDataInputStream.readInt();
      localTouchEvent.type = 1;
      localObject = null;
      continue;
      localTouchEvent = new RemoteInput.TouchEvent(this);
      localTouchEvent.x = ((int)(localDataInputStream.readInt() / this.remoteWidth * Gdx.graphics.getWidth()));
      localTouchEvent.y = ((int)(localDataInputStream.readInt() / this.remoteHeight * Gdx.graphics.getHeight()));
      localTouchEvent.pointer = localDataInputStream.readInt();
      localTouchEvent.type = 2;
      localObject = null;
      continue;
      localTouchEvent = null;
      localObject = null;
    }
  }

  public void setCatchBackKey(boolean paramBoolean)
  {
  }

  public void setCatchMenuKey(boolean paramBoolean)
  {
  }

  public void setCursorCatched(boolean paramBoolean)
  {
  }

  public void setCursorPosition(int paramInt1, int paramInt2)
  {
  }

  public void setInputProcessor(InputProcessor paramInputProcessor)
  {
    this.processor = paramInputProcessor;
  }

  public void setOnscreenKeyboardVisible(boolean paramBoolean)
  {
  }

  public void vibrate(int paramInt)
  {
  }

  public void vibrate(long[] paramArrayOfLong, int paramInt)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.input.RemoteInput
 * JD-Core Version:    0.6.2
 */