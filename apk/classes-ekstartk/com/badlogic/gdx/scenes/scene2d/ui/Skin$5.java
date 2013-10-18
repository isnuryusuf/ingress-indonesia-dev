package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.Json.ReadOnlySerializer;

class Skin$5 extends Json.ReadOnlySerializer
{
  Skin$5(Skin paramSkin)
  {
  }

  public Object read(Json paramJson, Object paramObject, Class paramClass)
  {
    String str = (String)paramJson.readValue("name", String.class, paramObject);
    Color localColor = (Color)paramJson.readValue("color", Color.class, paramObject);
    return this.this$0.newDrawable(str, localColor);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Skin.5
 * JD-Core Version:    0.6.2
 */