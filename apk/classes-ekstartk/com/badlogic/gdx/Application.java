package com.badlogic.gdx;

public abstract interface Application
{
  public static final int LOG_DEBUG = 3;
  public static final int LOG_ERROR = 1;
  public static final int LOG_INFO = 2;
  public static final int LOG_NONE;

  public abstract void debug(String paramString1, String paramString2);

  public abstract void debug(String paramString1, String paramString2, Throwable paramThrowable);

  public abstract void error(String paramString1, String paramString2);

  public abstract void error(String paramString1, String paramString2, Throwable paramThrowable);

  public abstract void exit();

  public abstract Audio getAudio();

  public abstract Files getFiles();

  public abstract Graphics getGraphics();

  public abstract Input getInput();

  public abstract long getJavaHeap();

  public abstract long getNativeHeap();

  public abstract Preferences getPreferences(String paramString);

  public abstract Application.ApplicationType getType();

  public abstract int getVersion();

  public abstract void log(String paramString1, String paramString2);

  public abstract void log(String paramString1, String paramString2, Exception paramException);

  public abstract void postRunnable(Runnable paramRunnable);

  public abstract void setLogLevel(int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Application
 * JD-Core Version:    0.6.2
 */