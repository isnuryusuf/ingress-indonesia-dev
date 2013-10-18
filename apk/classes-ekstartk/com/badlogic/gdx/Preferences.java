package com.badlogic.gdx;

import java.util.Map;

public abstract interface Preferences
{
  public abstract void clear();

  public abstract boolean contains(String paramString);

  public abstract void flush();

  public abstract Map<String, ?> get();

  public abstract boolean getBoolean(String paramString);

  public abstract boolean getBoolean(String paramString, boolean paramBoolean);

  public abstract float getFloat(String paramString);

  public abstract float getFloat(String paramString, float paramFloat);

  public abstract int getInteger(String paramString);

  public abstract int getInteger(String paramString, int paramInt);

  public abstract long getLong(String paramString);

  public abstract long getLong(String paramString, long paramLong);

  public abstract String getString(String paramString);

  public abstract String getString(String paramString1, String paramString2);

  public abstract void put(Map<String, ?> paramMap);

  public abstract void putBoolean(String paramString, boolean paramBoolean);

  public abstract void putFloat(String paramString, float paramFloat);

  public abstract void putInteger(String paramString, int paramInt);

  public abstract void putLong(String paramString, long paramLong);

  public abstract void putString(String paramString1, String paramString2);

  public abstract void remove(String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Preferences
 * JD-Core Version:    0.6.2
 */