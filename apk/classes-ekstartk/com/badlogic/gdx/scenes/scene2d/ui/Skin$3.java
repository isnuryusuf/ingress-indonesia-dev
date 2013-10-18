package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.Json.ReadOnlySerializer;
import com.badlogic.gdx.utils.SerializationException;

class Skin$3 extends Json.ReadOnlySerializer<BitmapFont>
{
  Skin$3(Skin paramSkin1, FileHandle paramFileHandle, Skin paramSkin2)
  {
  }

  public BitmapFont read(Json paramJson, Object paramObject, Class paramClass)
  {
    String str1 = (String)paramJson.readValue("file", String.class, paramObject);
    FileHandle localFileHandle1 = this.val$skinFile.parent().child(str1);
    if (!localFileHandle1.exists())
      localFileHandle1 = Gdx.files.internal(str1);
    if (!localFileHandle1.exists())
      throw new SerializationException("Font file not found: " + localFileHandle1);
    String str2 = localFileHandle1.nameWithoutExtension();
    try
    {
      TextureRegion localTextureRegion = (TextureRegion)this.val$skin.optional(str2, TextureRegion.class);
      if (localTextureRegion != null)
        return new BitmapFont(localFileHandle1, localTextureRegion, false);
      FileHandle localFileHandle2 = localFileHandle1.parent().child(str2 + ".png");
      if (localFileHandle2.exists())
      {
        BitmapFont localBitmapFont1 = new BitmapFont(localFileHandle1, localFileHandle2, false);
        return localBitmapFont1;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      throw new SerializationException("Error loading bitmap font: " + localFileHandle1, localRuntimeException);
    }
    BitmapFont localBitmapFont2 = new BitmapFont(localFileHandle1, false);
    return localBitmapFont2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Skin.3
 * JD-Core Version:    0.6.2
 */