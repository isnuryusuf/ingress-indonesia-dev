package com.badlogic.gdx.backends.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.badlogic.gdx.Preferences;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AndroidPreferences
  implements Preferences
{
  SharedPreferences.Editor editor;
  SharedPreferences sharedPrefs;

  public AndroidPreferences(SharedPreferences paramSharedPreferences)
  {
    this.sharedPrefs = paramSharedPreferences;
  }

  private void edit()
  {
    if (this.editor == null)
      this.editor = this.sharedPrefs.edit();
  }

  public void clear()
  {
    edit();
    this.editor.clear();
  }

  public boolean contains(String paramString)
  {
    return this.sharedPrefs.contains(paramString);
  }

  public void flush()
  {
    if (this.editor != null)
    {
      this.editor.commit();
      this.editor = null;
    }
  }

  public Map<String, ?> get()
  {
    return this.sharedPrefs.getAll();
  }

  public boolean getBoolean(String paramString)
  {
    return this.sharedPrefs.getBoolean(paramString, false);
  }

  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    return this.sharedPrefs.getBoolean(paramString, paramBoolean);
  }

  public float getFloat(String paramString)
  {
    return this.sharedPrefs.getFloat(paramString, 0.0F);
  }

  public float getFloat(String paramString, float paramFloat)
  {
    return this.sharedPrefs.getFloat(paramString, paramFloat);
  }

  public int getInteger(String paramString)
  {
    return this.sharedPrefs.getInt(paramString, 0);
  }

  public int getInteger(String paramString, int paramInt)
  {
    return this.sharedPrefs.getInt(paramString, paramInt);
  }

  public long getLong(String paramString)
  {
    return this.sharedPrefs.getLong(paramString, 0L);
  }

  public long getLong(String paramString, long paramLong)
  {
    return this.sharedPrefs.getLong(paramString, paramLong);
  }

  public String getString(String paramString)
  {
    return this.sharedPrefs.getString(paramString, "");
  }

  public String getString(String paramString1, String paramString2)
  {
    return this.sharedPrefs.getString(paramString1, paramString2);
  }

  public void put(Map<String, ?> paramMap)
  {
    edit();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if ((localEntry.getValue() instanceof Boolean))
        putBoolean((String)localEntry.getKey(), ((Boolean)localEntry.getValue()).booleanValue());
      if ((localEntry.getValue() instanceof Integer))
        putInteger((String)localEntry.getKey(), ((Integer)localEntry.getValue()).intValue());
      if ((localEntry.getValue() instanceof Long))
        putLong((String)localEntry.getKey(), ((Long)localEntry.getValue()).longValue());
      if ((localEntry.getValue() instanceof String))
        putString((String)localEntry.getKey(), (String)localEntry.getValue());
      if ((localEntry.getValue() instanceof Float))
        putFloat((String)localEntry.getKey(), ((Float)localEntry.getValue()).floatValue());
    }
  }

  public void putBoolean(String paramString, boolean paramBoolean)
  {
    edit();
    this.editor.putBoolean(paramString, paramBoolean);
  }

  public void putFloat(String paramString, float paramFloat)
  {
    edit();
    this.editor.putFloat(paramString, paramFloat);
  }

  public void putInteger(String paramString, int paramInt)
  {
    edit();
    this.editor.putInt(paramString, paramInt);
  }

  public void putLong(String paramString, long paramLong)
  {
    edit();
    this.editor.putLong(paramString, paramLong);
  }

  public void putString(String paramString1, String paramString2)
  {
    edit();
    this.editor.putString(paramString1, paramString2);
  }

  public void remove(String paramString)
  {
    edit();
    this.editor.remove(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidPreferences
 * JD-Core Version:    0.6.2
 */