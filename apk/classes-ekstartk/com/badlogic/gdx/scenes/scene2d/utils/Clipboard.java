package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Application.ApplicationType;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.GdxRuntimeException;

public abstract class Clipboard
{
  public static Clipboard getDefaultClipboard()
  {
    if (Gdx.app.getType() == Application.ApplicationType.Android)
      return new AndroidClipboard();
    try
    {
      Clipboard localClipboard = (Clipboard)Class.forName("com.badlogic.gdx.scenes.scene2d.utils.DesktopClipboard").newInstance();
      return localClipboard;
    }
    catch (Exception localException)
    {
      throw new GdxRuntimeException("Error creating desktop clipboard.", localException);
    }
  }

  public abstract String getContents();

  public abstract void setContents(String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.Clipboard
 * JD-Core Version:    0.6.2
 */