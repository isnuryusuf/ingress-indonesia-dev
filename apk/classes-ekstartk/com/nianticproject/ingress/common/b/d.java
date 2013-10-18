package com.nianticproject.ingress.common.b;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.TextureData;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;

final class d
  implements f
{
  d(TextureData paramTextureData, Texture.TextureFilter paramTextureFilter1, Texture.TextureFilter paramTextureFilter2, Texture.TextureWrap paramTextureWrap1, Texture.TextureWrap paramTextureWrap2, o paramo, String paramString)
  {
  }

  public final f a(p paramp)
  {
    Texture localTexture = c.a(this.a);
    localTexture.setFilter(this.b, this.c);
    localTexture.setWrap(this.d, this.e);
    this.f.a(localTexture);
    return null;
  }

  public final String n_()
  {
    return this.g;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.b.d
 * JD-Core Version:    0.6.2
 */