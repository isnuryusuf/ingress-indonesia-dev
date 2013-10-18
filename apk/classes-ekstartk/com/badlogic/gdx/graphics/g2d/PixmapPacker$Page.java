package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.OrderedMap;

public class PixmapPacker$Page
{
  Array<String> addedRects = new Array();
  Pixmap image;
  OrderedMap<String, Rectangle> rects;
  PixmapPacker.Node root;
  Texture texture;

  public PixmapPacker$Page(PixmapPacker paramPixmapPacker)
  {
  }

  public Pixmap getPixmap()
  {
    return this.image;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PixmapPacker.Page
 * JD-Core Version:    0.6.2
 */