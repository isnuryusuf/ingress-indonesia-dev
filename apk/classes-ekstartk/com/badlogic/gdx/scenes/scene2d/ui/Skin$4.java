package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.Json.ReadOnlySerializer;

class Skin$4 extends Json.ReadOnlySerializer<Color>
{
  Skin$4(Skin paramSkin)
  {
  }

  public Color read(Json paramJson, Object paramObject, Class paramClass)
  {
    if ((paramObject instanceof String))
      return (Color)this.this$0.get((String)paramObject, Color.class);
    return new Color(((Float)paramJson.readValue("r", Float.TYPE, Float.valueOf(0.0F), paramObject)).floatValue(), ((Float)paramJson.readValue("g", Float.TYPE, Float.valueOf(0.0F), paramObject)).floatValue(), ((Float)paramJson.readValue("b", Float.TYPE, Float.valueOf(0.0F), paramObject)).floatValue(), ((Float)paramJson.readValue("a", Float.TYPE, Float.valueOf(1.0F), paramObject)).floatValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Skin.4
 * JD-Core Version:    0.6.2
 */