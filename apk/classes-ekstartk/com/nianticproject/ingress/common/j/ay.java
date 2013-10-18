package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.TextureData.TextureDataType;
import com.google.a.a.an;

final class ay
  implements TextureData
{
  final int a;
  final int b;
  final boolean c;
  private final Pixmap e;

  ay(av paramav, Pixmap paramPixmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.e = ((Pixmap)an.a(paramPixmap));
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramBoolean;
  }

  public final void consumeCompressedData()
  {
  }

  public final Pixmap consumePixmap()
  {
    return this.e;
  }

  public final boolean disposePixmap()
  {
    return true;
  }

  public final Pixmap.Format getFormat()
  {
    return this.e.getFormat();
  }

  public final int getHeight()
  {
    return this.e.getHeight();
  }

  public final TextureData.TextureDataType getType()
  {
    return TextureData.TextureDataType.Pixmap;
  }

  public final int getWidth()
  {
    return this.e.getWidth();
  }

  public final boolean isManaged()
  {
    return false;
  }

  public final boolean isPrepared()
  {
    return this.e != null;
  }

  public final void prepare()
  {
  }

  public final boolean useMipMaps()
  {
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ay
 * JD-Core Version:    0.6.2
 */