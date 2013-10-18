package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Blending;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap.Keys;
import com.badlogic.gdx.utils.OrderedMap;
import java.util.Iterator;

public class PixmapPacker
  implements Disposable
{
  PixmapPacker.Page currPage;
  boolean disposed;
  final boolean duplicateBorder;
  final int padding;
  final Pixmap.Format pageFormat;
  final int pageHeight;
  final int pageWidth;
  final Array<PixmapPacker.Page> pages = new Array();

  public PixmapPacker(int paramInt1, int paramInt2, Pixmap.Format paramFormat, int paramInt3, boolean paramBoolean)
  {
    this.pageWidth = paramInt1;
    this.pageHeight = paramInt2;
    this.pageFormat = paramFormat;
    this.padding = paramInt3;
    this.duplicateBorder = paramBoolean;
    newPage();
  }

  private PixmapPacker.Node insert(PixmapPacker.Node paramNode, Rectangle paramRectangle)
  {
    PixmapPacker.Node localNode;
    if ((paramNode.leaveName == null) && (paramNode.leftChild != null) && (paramNode.rightChild != null))
    {
      localNode = insert(paramNode.leftChild, paramRectangle);
      if (localNode == null)
        localNode = insert(paramNode.rightChild, paramRectangle);
    }
    boolean bool2;
    do
    {
      boolean bool1;
      do
      {
        String str;
        do
        {
          return localNode;
          str = paramNode.leaveName;
          localNode = null;
        }
        while (str != null);
        if ((paramNode.rect.width == paramRectangle.width) && (paramNode.rect.height == paramRectangle.height))
          return paramNode;
        bool1 = paramNode.rect.width < paramRectangle.width;
        localNode = null;
      }
      while (bool1);
      bool2 = paramNode.rect.height < paramRectangle.height;
      localNode = null;
    }
    while (bool2);
    paramNode.leftChild = new PixmapPacker.Node();
    paramNode.rightChild = new PixmapPacker.Node();
    if ((int)paramNode.rect.width - (int)paramRectangle.width > (int)paramNode.rect.height - (int)paramRectangle.height)
    {
      paramNode.leftChild.rect.x = paramNode.rect.x;
      paramNode.leftChild.rect.y = paramNode.rect.y;
      paramNode.leftChild.rect.width = paramRectangle.width;
      paramNode.leftChild.rect.height = paramNode.rect.height;
      paramNode.rightChild.rect.x = (paramNode.rect.x + paramRectangle.width);
      paramNode.rightChild.rect.y = paramNode.rect.y;
      paramNode.rightChild.rect.width = (paramNode.rect.width - paramRectangle.width);
    }
    for (paramNode.rightChild.rect.height = paramNode.rect.height; ; paramNode.rightChild.rect.height = (paramNode.rect.height - paramRectangle.height))
    {
      paramNode = paramNode.leftChild;
      break;
      paramNode.leftChild.rect.x = paramNode.rect.x;
      paramNode.leftChild.rect.y = paramNode.rect.y;
      paramNode.leftChild.rect.width = paramNode.rect.width;
      paramNode.leftChild.rect.height = paramRectangle.height;
      paramNode.rightChild.rect.x = paramNode.rect.x;
      paramNode.rightChild.rect.y = (paramNode.rect.y + paramRectangle.height);
      paramNode.rightChild.rect.width = paramNode.rect.width;
    }
  }

  private void newPage()
  {
    PixmapPacker.Page localPage = new PixmapPacker.Page(this);
    localPage.image = new Pixmap(this.pageWidth, this.pageHeight, this.pageFormat);
    localPage.root = new PixmapPacker.Node(0, 0, this.pageWidth, this.pageHeight, null, null, null);
    localPage.rects = new OrderedMap();
    this.pages.add(localPage);
    this.currPage = localPage;
  }

  public void dispose()
  {
    try
    {
      Iterator localIterator = this.pages.iterator();
      while (localIterator.hasNext())
        ((PixmapPacker.Page)localIterator.next()).image.dispose();
    }
    finally
    {
    }
    this.disposed = true;
  }

  public boolean duplicateBoarder()
  {
    return this.duplicateBorder;
  }

  public TextureAtlas generateTextureAtlas(Texture.TextureFilter paramTextureFilter1, Texture.TextureFilter paramTextureFilter2, boolean paramBoolean)
  {
    TextureAtlas localTextureAtlas;
    try
    {
      localTextureAtlas = new TextureAtlas();
      Iterator localIterator1 = this.pages.iterator();
      while (localIterator1.hasNext())
      {
        PixmapPacker.Page localPage = (PixmapPacker.Page)localIterator1.next();
        if (localPage.rects.size != 0)
        {
          PixmapPacker.1 local1 = new PixmapPacker.1(this, new PixmapPacker.ManagedPixmapTextureData(this, localPage.image, localPage.image.getFormat(), paramBoolean));
          local1.setFilter(paramTextureFilter1, paramTextureFilter2);
          Iterator localIterator2 = localPage.rects.keys().iterator();
          while (localIterator2.hasNext())
          {
            String str = (String)localIterator2.next();
            Rectangle localRectangle = (Rectangle)localPage.rects.get(str);
            localTextureAtlas.addRegion(str, new TextureRegion(local1, (int)localRectangle.x, (int)localRectangle.y, (int)localRectangle.width, (int)localRectangle.height));
          }
        }
      }
    }
    finally
    {
    }
    return localTextureAtlas;
  }

  public int getPadding()
  {
    return this.padding;
  }

  public PixmapPacker.Page getPage(String paramString)
  {
    try
    {
      Iterator localIterator = this.pages.iterator();
      PixmapPacker.Page localPage;
      Rectangle localRectangle;
      do
      {
        if (!localIterator.hasNext())
          break;
        localPage = (PixmapPacker.Page)localIterator.next();
        localRectangle = (Rectangle)localPage.rects.get(paramString);
      }
      while (localRectangle == null);
      while (true)
      {
        return localPage;
        localPage = null;
      }
    }
    finally
    {
    }
  }

  public int getPageHeight()
  {
    return this.pageHeight;
  }

  public int getPageWidth()
  {
    return this.pageWidth;
  }

  public Array<PixmapPacker.Page> getPages()
  {
    return this.pages;
  }

  public Rectangle getRect(String paramString)
  {
    try
    {
      Iterator localIterator = this.pages.iterator();
      Rectangle localRectangle;
      do
      {
        if (!localIterator.hasNext())
          break;
        localRectangle = (Rectangle)((PixmapPacker.Page)localIterator.next()).rects.get(paramString);
      }
      while (localRectangle == null);
      while (true)
      {
        return localRectangle;
        localRectangle = null;
      }
    }
    finally
    {
    }
  }

  public Rectangle pack(String paramString, Pixmap paramPixmap)
  {
    int i = 1;
    Object localObject2;
    try
    {
      boolean bool = this.disposed;
      if (bool)
      {
        localObject2 = null;
        return localObject2;
      }
      if (getRect(paramString) != null)
        throw new RuntimeException("Key with name '" + paramString + "' is already in map");
    }
    finally
    {
    }
    int j = this.padding;
    if (this.duplicateBorder);
    while (true)
    {
      int k = i + j << 1;
      if ((paramPixmap.getWidth() >= k + this.pageWidth) || (paramPixmap.getHeight() >= k + this.pageHeight))
        throw new GdxRuntimeException("page size for '" + paramString + "' to small");
      Rectangle localRectangle1 = new Rectangle(0.0F, 0.0F, k + paramPixmap.getWidth(), k + paramPixmap.getHeight());
      PixmapPacker.Node localNode = insert(this.currPage.root, localRectangle1);
      if (localNode == null)
      {
        newPage();
        localObject2 = pack(paramString, paramPixmap);
        break;
      }
      localNode.leaveName = paramString;
      Rectangle localRectangle2 = new Rectangle(localNode.rect);
      localRectangle2.width -= k;
      localRectangle2.height -= k;
      int m = k >> 1;
      localRectangle2.x += m;
      localRectangle2.y += m;
      this.currPage.rects.put(paramString, localRectangle2);
      Pixmap.Blending localBlending = Pixmap.getBlending();
      Pixmap.setBlending(Pixmap.Blending.None);
      this.currPage.image.drawPixmap(paramPixmap, (int)localRectangle2.x, (int)localRectangle2.y);
      Pixmap.setBlending(localBlending);
      if (this.duplicateBorder)
      {
        this.currPage.image.drawPixmap(paramPixmap, (int)localRectangle2.x, -1 + (int)localRectangle2.y, (int)localRectangle2.x + (int)localRectangle2.width, (int)localRectangle2.y, 0, 0, paramPixmap.getWidth(), 1);
        this.currPage.image.drawPixmap(paramPixmap, (int)localRectangle2.x, (int)localRectangle2.y + (int)localRectangle2.height, (int)localRectangle2.x + (int)localRectangle2.width, 1 + ((int)localRectangle2.y + (int)localRectangle2.height), 0, -1 + paramPixmap.getHeight(), paramPixmap.getWidth(), paramPixmap.getHeight());
        this.currPage.image.drawPixmap(paramPixmap, -1 + (int)localRectangle2.x, (int)localRectangle2.y, (int)localRectangle2.x, (int)localRectangle2.y + (int)localRectangle2.height, 0, 0, 1, paramPixmap.getHeight());
        this.currPage.image.drawPixmap(paramPixmap, (int)localRectangle2.x + (int)localRectangle2.width, (int)localRectangle2.y, 1 + ((int)localRectangle2.x + (int)localRectangle2.width), (int)localRectangle2.y + (int)localRectangle2.height, -1 + paramPixmap.getWidth(), 0, paramPixmap.getWidth(), paramPixmap.getHeight());
        this.currPage.image.drawPixmap(paramPixmap, -1 + (int)localRectangle2.x, -1 + (int)localRectangle2.y, (int)localRectangle2.x, (int)localRectangle2.y, 0, 0, 1, 1);
        this.currPage.image.drawPixmap(paramPixmap, (int)localRectangle2.x + (int)localRectangle2.width, -1 + (int)localRectangle2.y, 1 + ((int)localRectangle2.x + (int)localRectangle2.width), (int)localRectangle2.y, -1 + paramPixmap.getWidth(), 0, paramPixmap.getWidth(), 1);
        this.currPage.image.drawPixmap(paramPixmap, -1 + (int)localRectangle2.x, (int)localRectangle2.y + (int)localRectangle2.height, (int)localRectangle2.x, 1 + ((int)localRectangle2.y + (int)localRectangle2.height), 0, -1 + paramPixmap.getHeight(), 1, paramPixmap.getHeight());
        this.currPage.image.drawPixmap(paramPixmap, (int)localRectangle2.x + (int)localRectangle2.width, (int)localRectangle2.y + (int)localRectangle2.height, 1 + ((int)localRectangle2.x + (int)localRectangle2.width), 1 + ((int)localRectangle2.y + (int)localRectangle2.height), -1 + paramPixmap.getWidth(), -1 + paramPixmap.getHeight(), paramPixmap.getWidth(), paramPixmap.getHeight());
      }
      this.currPage.addedRects.add(paramString);
      localObject2 = localRectangle2;
      break;
      i = 0;
    }
  }

  public void updateTextureAtlas(TextureAtlas paramTextureAtlas, Texture.TextureFilter paramTextureFilter1, Texture.TextureFilter paramTextureFilter2, boolean paramBoolean)
  {
    PixmapPacker.Page localPage;
    do
      while (true)
      {
        try
        {
          Iterator localIterator1 = this.pages.iterator();
          if (!localIterator1.hasNext())
            break label348;
          localPage = (PixmapPacker.Page)localIterator1.next();
          if (localPage.texture != null)
            break;
          if ((localPage.rects.size == 0) || (localPage.addedRects.size <= 0))
            continue;
          localPage.texture = new PixmapPacker.2(this, new PixmapPacker.ManagedPixmapTextureData(this, localPage.image, localPage.image.getFormat(), paramBoolean));
          localPage.texture.setFilter(paramTextureFilter1, paramTextureFilter2);
          Iterator localIterator3 = localPage.addedRects.iterator();
          if (localIterator3.hasNext())
          {
            String str2 = (String)localIterator3.next();
            Rectangle localRectangle2 = (Rectangle)localPage.rects.get(str2);
            paramTextureAtlas.addRegion(str2, new TextureRegion(localPage.texture, (int)localRectangle2.x, (int)localRectangle2.y, (int)localRectangle2.width, (int)localRectangle2.height));
            continue;
          }
        }
        finally
        {
        }
        localPage.addedRects.clear();
      }
    while (localPage.addedRects.size <= 0);
    localPage.texture.load(localPage.texture.getTextureData());
    Iterator localIterator2 = localPage.addedRects.iterator();
    while (localIterator2.hasNext())
    {
      String str1 = (String)localIterator2.next();
      Rectangle localRectangle1 = (Rectangle)localPage.rects.get(str1);
      paramTextureAtlas.addRegion(str1, new TextureRegion(localPage.texture, (int)localRectangle1.x, (int)localRectangle1.y, (int)localRectangle1.width, (int)localRectangle1.height));
    }
    localPage.addedRects.clear();
    label348:
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PixmapPacker
 * JD-Core Version:    0.6.2
 */