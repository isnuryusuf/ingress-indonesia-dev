package com.badlogic.gdx.input;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Input.Peripheral;
import com.badlogic.gdx.InputProcessor;
import java.io.DataOutputStream;
import java.net.Socket;

public class RemoteSender
  implements InputProcessor
{
  public static final int ACCEL = 6;
  public static final int COMPASS = 7;
  public static final int KEY_DOWN = 0;
  public static final int KEY_TYPED = 2;
  public static final int KEY_UP = 1;
  public static final int SIZE = 8;
  public static final int TOUCH_DOWN = 3;
  public static final int TOUCH_DRAGGED = 5;
  public static final int TOUCH_UP = 4;
  private boolean connected = false;
  private DataOutputStream out;

  public RemoteSender(String paramString, int paramInt)
  {
    try
    {
      Socket localSocket = new Socket(paramString, paramInt);
      localSocket.setTcpNoDelay(true);
      localSocket.setSoTimeout(3000);
      this.out = new DataOutputStream(localSocket.getOutputStream());
      this.out.writeBoolean(Gdx.input.isPeripheralAvailable(Input.Peripheral.MultitouchScreen));
      this.connected = true;
      Gdx.input.setInputProcessor(this);
      return;
    }
    catch (Exception localException)
    {
      Gdx.app.log("RemoteSender", "couldn't connect to " + paramString + ":" + paramInt);
    }
  }

  public boolean isConnected()
  {
    try
    {
      boolean bool = this.connected;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean keyDown(int paramInt)
  {
    try
    {
      if (!this.connected)
        return false;
      try
      {
        this.out.writeInt(0);
        this.out.writeInt(paramInt);
        return false;
      }
      catch (Throwable localThrowable)
      {
        try
        {
          this.connected = false;
          return false;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
    }
    finally
    {
    }
  }

  public boolean keyTyped(char paramChar)
  {
    try
    {
      if (!this.connected)
        return false;
      try
      {
        this.out.writeInt(2);
        this.out.writeChar(paramChar);
        return false;
      }
      catch (Throwable localThrowable)
      {
        try
        {
          this.connected = false;
          return false;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
    }
    finally
    {
    }
  }

  public boolean keyUp(int paramInt)
  {
    try
    {
      if (!this.connected)
        return false;
      try
      {
        this.out.writeInt(1);
        this.out.writeInt(paramInt);
        return false;
      }
      catch (Throwable localThrowable)
      {
        try
        {
          this.connected = false;
          return false;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
    }
    finally
    {
    }
  }

  public boolean mouseMoved(int paramInt1, int paramInt2)
  {
    return false;
  }

  public boolean scrolled(int paramInt)
  {
    return false;
  }

  public void sendUpdate()
  {
    try
    {
      if (!this.connected)
        return;
      try
      {
        this.out.writeInt(6);
        this.out.writeFloat(Gdx.input.getAccelerometerX());
        this.out.writeFloat(Gdx.input.getAccelerometerY());
        this.out.writeFloat(Gdx.input.getAccelerometerZ());
        this.out.writeInt(7);
        this.out.writeFloat(Gdx.input.getAzimuth());
        this.out.writeFloat(Gdx.input.getPitch());
        this.out.writeFloat(Gdx.input.getRoll());
        this.out.writeInt(8);
        this.out.writeFloat(Gdx.graphics.getWidth());
        this.out.writeFloat(Gdx.graphics.getHeight());
        return;
      }
      catch (Throwable localThrowable)
      {
        this.out = null;
        this.connected = false;
        return;
      }
    }
    finally
    {
    }
  }

  public boolean touchDown(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      if (!this.connected)
        return false;
      try
      {
        this.out.writeInt(3);
        this.out.writeInt(paramInt1);
        this.out.writeInt(paramInt2);
        this.out.writeInt(paramInt3);
        return false;
      }
      catch (Throwable localThrowable)
      {
        try
        {
          this.connected = false;
          return false;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
    }
    finally
    {
    }
  }

  public boolean touchDragged(int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      if (!this.connected)
        return false;
      try
      {
        this.out.writeInt(5);
        this.out.writeInt(paramInt1);
        this.out.writeInt(paramInt2);
        this.out.writeInt(paramInt3);
        return false;
      }
      catch (Throwable localThrowable)
      {
        try
        {
          this.connected = false;
          return false;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
    }
    finally
    {
    }
  }

  public boolean touchUp(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      if (!this.connected)
        return false;
      try
      {
        this.out.writeInt(4);
        this.out.writeInt(paramInt1);
        this.out.writeInt(paramInt2);
        this.out.writeInt(paramInt3);
        return false;
      }
      catch (Throwable localThrowable)
      {
        try
        {
          this.connected = false;
          return false;
        }
        finally
        {
          localObject2 = finally;
          throw localObject2;
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.input.RemoteSender
 * JD-Core Version:    0.6.2
 */