package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.utils.Json;

class Skin$1 extends Json
{
  Skin$1(Skin paramSkin)
  {
  }

  public <T> T readValue(Class<T> paramClass, Class paramClass1, Object paramObject)
  {
    if (((paramObject instanceof String)) && (!CharSequence.class.isAssignableFrom(paramClass)))
      return this.this$0.get((String)paramObject, paramClass);
    return super.readValue(paramClass, paramClass1, paramObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Skin.1
 * JD-Core Version:    0.6.2
 */