package com.badlogic.gdx.backends.android;

import android.text.Editable;
import android.text.InputFilter;

public class AndroidOnscreenKeyboard$PassThroughEditable
  implements Editable
{
  public Editable append(char paramChar)
  {
    new StringBuilder("append: ").append(paramChar).toString();
    return this;
  }

  public Editable append(CharSequence paramCharSequence)
  {
    new StringBuilder("append: ").append(paramCharSequence).toString();
    return this;
  }

  public Editable append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    new StringBuilder("append: ").append(paramCharSequence).toString();
    return this;
  }

  public char charAt(int paramInt)
  {
    return '\000';
  }

  public void clear()
  {
  }

  public void clearSpans()
  {
  }

  public Editable delete(int paramInt1, int paramInt2)
  {
    new StringBuilder("delete, ").append(paramInt1).append(", ").append(paramInt2).toString();
    return this;
  }

  public void getChars(int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3)
  {
  }

  public InputFilter[] getFilters()
  {
    return new InputFilter[0];
  }

  public int getSpanEnd(Object paramObject)
  {
    return 0;
  }

  public int getSpanFlags(Object paramObject)
  {
    return 0;
  }

  public int getSpanStart(Object paramObject)
  {
    return 0;
  }

  public <T> T[] getSpans(int paramInt1, int paramInt2, Class<T> paramClass)
  {
    return null;
  }

  public Editable insert(int paramInt, CharSequence paramCharSequence)
  {
    new StringBuilder("insert: ").append(paramCharSequence).toString();
    return this;
  }

  public Editable insert(int paramInt1, CharSequence paramCharSequence, int paramInt2, int paramInt3)
  {
    new StringBuilder("insert: ").append(paramCharSequence).toString();
    return this;
  }

  public int length()
  {
    return 0;
  }

  public int nextSpanTransition(int paramInt1, int paramInt2, Class paramClass)
  {
    return 0;
  }

  public void removeSpan(Object paramObject)
  {
  }

  public Editable replace(int paramInt1, int paramInt2, CharSequence paramCharSequence)
  {
    new StringBuilder("replace: ").append(paramCharSequence).toString();
    return this;
  }

  public Editable replace(int paramInt1, int paramInt2, CharSequence paramCharSequence, int paramInt3, int paramInt4)
  {
    new StringBuilder("replace: ").append(paramCharSequence).toString();
    return this;
  }

  public void setFilters(InputFilter[] paramArrayOfInputFilter)
  {
  }

  public void setSpan(Object paramObject, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidOnscreenKeyboard.PassThroughEditable
 * JD-Core Version:    0.6.2
 */