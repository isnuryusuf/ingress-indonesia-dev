package com.badlogic.gdx.graphics.g2d.tiled;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.XmlReader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;
import java.util.StringTokenizer;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

final class TiledLoader$1 extends XmlReader
{
  boolean awaitingData = false;
  int col;
  String compression;
  Stack<String> currBranch = new Stack();
  TiledLayer currLayer;
  int currLayerHeight = 0;
  int currLayerWidth = 0;
  TiledObject currObject;
  TiledObjectGroup currObjectGroup;
  TiledLoader.1.Property currProperty;
  int currTile;
  TileSet currTileSet;
  byte[] data;
  int dataCounter = 0;
  String dataString;
  String encoding;
  TiledLoader.1.Polyline polygon;
  TiledLoader.1.Polyline polyline;
  int row;

  TiledLoader$1(TiledMap paramTiledMap)
  {
  }

  private void arrangeData()
  {
    int i = 0;
    int j = 0;
    while (i < this.currLayerHeight)
    {
      int k = 0;
      while (k < this.currLayerWidth)
      {
        int[] arrayOfInt = this.currLayer.tiles[i];
        byte[] arrayOfByte1 = this.data;
        int m = j + 1;
        int n = TiledLoader.unsignedByteToInt(arrayOfByte1[j]);
        byte[] arrayOfByte2 = this.data;
        int i1 = m + 1;
        int i2 = n | TiledLoader.unsignedByteToInt(arrayOfByte2[m]) << 8;
        byte[] arrayOfByte3 = this.data;
        int i3 = i1 + 1;
        int i4 = i2 | TiledLoader.unsignedByteToInt(arrayOfByte3[i1]) << 16;
        byte[] arrayOfByte4 = this.data;
        int i5 = i3 + 1;
        arrayOfInt[k] = (i4 | TiledLoader.unsignedByteToInt(arrayOfByte4[i3]) << 24);
        k++;
        j = i5;
      }
      i++;
    }
  }

  private void fromCSV()
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(this.dataString.trim(), ",");
    for (int i = 0; i < this.currLayerHeight; i++)
      for (int j = 0; j < this.currLayerWidth; j++)
        this.currLayer.tiles[i][j] = Integer.parseInt(localStringTokenizer.nextToken().trim());
  }

  private void putPolyLine(TiledLoader.1.Polyline paramPolyline)
  {
    if (paramPolyline == null);
    do
    {
      return;
      if ("polyline".equals(paramPolyline.name))
      {
        this.currObject.polyline = paramPolyline.points;
        return;
      }
    }
    while (!"polygon".equals(paramPolyline.name));
    this.currObject.polygon = paramPolyline.points;
  }

  private void putProperty(TiledLoader.1.Property paramProperty)
  {
    if ("tile".equals(paramProperty.parentType))
      this.val$map.setTileProperty(this.currTile + this.currTileSet.firstgid, paramProperty.name, paramProperty.value);
    do
    {
      return;
      if ("map".equals(paramProperty.parentType))
      {
        this.val$map.properties.put(paramProperty.name, paramProperty.value);
        return;
      }
      if ("layer".equals(paramProperty.parentType))
      {
        this.currLayer.properties.put(paramProperty.name, paramProperty.value);
        return;
      }
      if ("objectgroup".equals(paramProperty.parentType))
      {
        this.currObjectGroup.properties.put(paramProperty.name, paramProperty.value);
        return;
      }
    }
    while (!"object".equals(paramProperty.parentType));
    this.currObject.properties.put(paramProperty.name, paramProperty.value);
  }

  // ERROR //
  private void unGZip()
  {
    // Byte code:
    //   0: new 181	java/util/zip/GZIPInputStream
    //   3: dup
    //   4: new 183	java/io/ByteArrayInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 68	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1:data	[B
    //   12: invokespecial 186	java/io/ByteArrayInputStream:<init>	([B)V
    //   15: aload_0
    //   16: getfield 68	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1:data	[B
    //   19: arraylength
    //   20: invokespecial 189	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;I)V
    //   23: astore_1
    //   24: iconst_4
    //   25: newarray byte
    //   27: astore_2
    //   28: iconst_0
    //   29: istore_3
    //   30: iload_3
    //   31: aload_0
    //   32: getfield 55	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1:currLayerHeight	I
    //   35: if_icmpge +127 -> 162
    //   38: iconst_0
    //   39: istore 4
    //   41: iload 4
    //   43: aload_0
    //   44: getfield 53	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1:currLayerWidth	I
    //   47: if_icmpge +109 -> 156
    //   50: aload_1
    //   51: aload_2
    //   52: iconst_0
    //   53: iconst_4
    //   54: invokevirtual 193	java/util/zip/GZIPInputStream:read	([BII)I
    //   57: pop
    //   58: aload_0
    //   59: getfield 60	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1:currLayer	Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;
    //   62: getfield 66	com/badlogic/gdx/graphics/g2d/tiled/TiledLayer:tiles	[[I
    //   65: iload_3
    //   66: aaload
    //   67: iload 4
    //   69: aload_2
    //   70: iconst_0
    //   71: baload
    //   72: invokestatic 74	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader:unsignedByteToInt	(B)I
    //   75: aload_2
    //   76: iconst_1
    //   77: baload
    //   78: invokestatic 74	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader:unsignedByteToInt	(B)I
    //   81: bipush 8
    //   83: ishl
    //   84: ior
    //   85: aload_2
    //   86: iconst_2
    //   87: baload
    //   88: invokestatic 74	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader:unsignedByteToInt	(B)I
    //   91: bipush 16
    //   93: ishl
    //   94: ior
    //   95: aload_2
    //   96: iconst_3
    //   97: baload
    //   98: invokestatic 74	com/badlogic/gdx/graphics/g2d/tiled/TiledLoader:unsignedByteToInt	(B)I
    //   101: bipush 24
    //   103: ishl
    //   104: ior
    //   105: iastore
    //   106: iinc 4 1
    //   109: goto -68 -> 41
    //   112: astore 7
    //   114: new 195	com/badlogic/gdx/utils/GdxRuntimeException
    //   117: dup
    //   118: new 197	java/lang/StringBuilder
    //   121: dup
    //   122: ldc 199
    //   124: invokespecial 202	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload 7
    //   129: invokevirtual 205	java/io/IOException:getMessage	()Ljava/lang/String;
    //   132: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokespecial 213	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;)V
    //   141: athrow
    //   142: astore 5
    //   144: new 195	com/badlogic/gdx/utils/GdxRuntimeException
    //   147: dup
    //   148: ldc 215
    //   150: aload 5
    //   152: invokespecial 218	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   155: athrow
    //   156: iinc 3 1
    //   159: goto -129 -> 30
    //   162: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	24	112	java/io/IOException
    //   50	106	142	java/io/IOException
  }

  private void unZlib()
  {
    Inflater localInflater = new Inflater();
    byte[] arrayOfByte = new byte[4];
    localInflater.setInput(this.data, 0, this.data.length);
    for (int i = 0; i < this.currLayerHeight; i++)
    {
      int j = 0;
      while (j < this.currLayerWidth)
        try
        {
          localInflater.inflate(arrayOfByte, 0, 4);
          this.currLayer.tiles[i][j] = (TiledLoader.unsignedByteToInt(arrayOfByte[0]) | TiledLoader.unsignedByteToInt(arrayOfByte[1]) << 8 | TiledLoader.unsignedByteToInt(arrayOfByte[2]) << 16 | TiledLoader.unsignedByteToInt(arrayOfByte[3]) << 24);
          j++;
        }
        catch (DataFormatException localDataFormatException)
        {
          throw new GdxRuntimeException("Error Reading TMX Layer Data.", localDataFormatException);
        }
    }
  }

  protected final void attribute(String paramString1, String paramString2)
  {
    String str = (String)this.currBranch.peek();
    if ("layer".equals(str))
      if ("width".equals(paramString1))
        this.currLayerWidth = Integer.parseInt(paramString2);
    label109: 
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          break label109;
                          break label109;
                          break label109;
                          break label109;
                          break label109;
                          break label109;
                          break label109;
                          break label109;
                          break label109;
                          while (true)
                          {
                            if ((this.currLayerWidth != 0) && (this.currLayerHeight != 0))
                            {
                              TiledLayer localTiledLayer = this.currLayer;
                              int[] arrayOfInt = { this.currLayerHeight, this.currLayerWidth };
                              localTiledLayer.tiles = ((int[][])Array.newInstance(Integer.TYPE, arrayOfInt));
                            }
                            if ("name".equals(paramString1))
                              this.currLayer.name = paramString2;
                            return;
                            if ("height".equals(paramString1))
                              this.currLayerHeight = Integer.parseInt(paramString2);
                          }
                          if (!"tileset".equals(str))
                            break;
                          if ("firstgid".equals(paramString1))
                          {
                            this.currTileSet.firstgid = Integer.parseInt(paramString2);
                            return;
                          }
                          if ("tilewidth".equals(paramString1))
                          {
                            this.currTileSet.tileWidth = Integer.parseInt(paramString2);
                            return;
                          }
                          if ("tileheight".equals(paramString1))
                          {
                            this.currTileSet.tileHeight = Integer.parseInt(paramString2);
                            return;
                          }
                          if ("name".equals(paramString1))
                          {
                            this.currTileSet.name = paramString2;
                            return;
                          }
                          if ("spacing".equals(paramString1))
                          {
                            this.currTileSet.spacing = Integer.parseInt(paramString2);
                            return;
                          }
                        }
                        while (!"margin".equals(paramString1));
                        this.currTileSet.margin = Integer.parseInt(paramString2);
                        return;
                        if (!"image".equals(str))
                          break;
                      }
                      while (!"source".equals(paramString1));
                      this.currTileSet.imageName = paramString2;
                      return;
                      if (!"data".equals(str))
                        break;
                      if ("encoding".equals(paramString1))
                      {
                        this.encoding = paramString2;
                        return;
                      }
                    }
                    while (!"compression".equals(paramString1));
                    this.compression = paramString2;
                    return;
                    if (!"objectgroup".equals(str))
                      break;
                    if ("name".equals(paramString1))
                    {
                      this.currObjectGroup.name = paramString2;
                      return;
                    }
                    if ("height".equals(paramString1))
                    {
                      this.currObjectGroup.height = Integer.parseInt(paramString2);
                      return;
                    }
                  }
                  while (!"width".equals(paramString1));
                  this.currObjectGroup.width = Integer.parseInt(paramString2);
                  return;
                  if (!"object".equals(str))
                    break;
                  if ("name".equals(paramString1))
                  {
                    this.currObject.name = paramString2;
                    return;
                  }
                  if ("type".equals(paramString1))
                  {
                    this.currObject.type = paramString2;
                    return;
                  }
                  if ("x".equals(paramString1))
                  {
                    this.currObject.x = Integer.parseInt(paramString2);
                    return;
                  }
                  if ("y".equals(paramString1))
                  {
                    this.currObject.y = Integer.parseInt(paramString2);
                    return;
                  }
                  if ("width".equals(paramString1))
                  {
                    this.currObject.width = Integer.parseInt(paramString2);
                    return;
                  }
                  if ("height".equals(paramString1))
                  {
                    this.currObject.height = Integer.parseInt(paramString2);
                    return;
                  }
                }
                while (!"gid".equals(paramString1));
                this.currObject.gid = Integer.parseInt(paramString2);
                return;
                if (!"map".equals(str))
                  break;
                if ("orientation".equals(paramString1))
                {
                  this.val$map.orientation = paramString2;
                  return;
                }
                if ("width".equals(paramString1))
                {
                  this.val$map.width = Integer.parseInt(paramString2);
                  return;
                }
                if ("height".equals(paramString1))
                {
                  this.val$map.height = Integer.parseInt(paramString2);
                  return;
                }
                if ("tilewidth".equals(paramString1))
                {
                  this.val$map.tileWidth = Integer.parseInt(paramString2);
                  return;
                }
              }
              while (!"tileheight".equals(paramString1));
              this.val$map.tileHeight = Integer.parseInt(paramString2);
              return;
              if (!"tile".equals(str))
                break label806;
              if (!this.awaitingData)
                break;
            }
            while (!"gid".equals(paramString1));
            this.col = (this.dataCounter % this.currLayerWidth);
            this.row = (this.dataCounter / this.currLayerWidth);
            if (this.row < this.currLayerHeight)
              this.currLayer.tiles[this.row][this.col] = Integer.parseInt(paramString2);
            while (true)
            {
              this.dataCounter = (1 + this.dataCounter);
              return;
              Gdx.app.log("TiledLoader", "Warning: extra XML gid values ignored! Your map is likely corrupt!");
            }
          }
          while (!"id".equals(paramString1));
          this.currTile = Integer.parseInt(paramString2);
          return;
          if (!"property".equals(str))
            break;
          if ("name".equals(paramString1))
          {
            this.currProperty.name = paramString2;
            return;
          }
        }
        while (!"value".equals(paramString1));
        this.currProperty.value = paramString2;
        return;
        if (!"polyline".equals(str))
          break;
      }
      while (!"points".equals(paramString1));
      this.polyline.points = paramString2;
      return;
    }
    while ((!"polygon".equals(str)) || (!"points".equals(paramString1)));
    label806: this.polygon.points = paramString2;
  }

  protected final void close()
  {
    String str = (String)this.currBranch.pop();
    if ("layer".equals(str))
    {
      this.val$map.layers.add(this.currLayer);
      this.currLayer = null;
    }
    label233: label376: 
    do
    {
      return;
      if ("tileset".equals(str))
      {
        this.val$map.tileSets.add(this.currTileSet);
        this.currTileSet = null;
        return;
      }
      if ("object".equals(str))
      {
        this.currObjectGroup.objects.add(this.currObject);
        this.currObject = null;
        return;
      }
      if ("objectgroup".equals(str))
      {
        this.val$map.objectGroups.add(this.currObjectGroup);
        this.currObjectGroup = null;
        return;
      }
      if ("property".equals(str))
      {
        putProperty(this.currProperty);
        this.currProperty = null;
        return;
      }
      if ("polyline".equals(str))
      {
        putPolyLine(this.polyline);
        this.polyline = null;
        return;
      }
      if ("polygon".equals(str))
      {
        putPolyLine(this.polygon);
        this.polygon = null;
        return;
      }
      if ("data".equals(str))
      {
        int i;
        if ("base64".equals(this.encoding))
          if (this.dataString == null)
          {
            i = 1;
            if ((i | "".equals(this.dataString.trim())) != 0)
              break label291;
            this.data = Base64Coder.decode(this.dataString.trim());
            if (!"gzip".equals(this.compression))
              break label293;
            unGZip();
          }
        while (true)
        {
          this.awaitingData = false;
          return;
          i = 0;
          break label233;
          break;
          if ("zlib".equals(this.compression))
          {
            unZlib();
          }
          else if (this.compression == null)
          {
            arrangeData();
            continue;
            if (("csv".equals(this.encoding)) && (this.compression == null))
            {
              fromCSV();
            }
            else
            {
              if ((this.encoding != null) || (this.compression != null))
                break label376;
              this.dataCounter = 0;
            }
          }
        }
        throw new GdxRuntimeException("Unsupported encoding and/or compression format");
      }
    }
    while (!"property".equals(str));
    label291: label293: putProperty(this.currProperty);
    this.currProperty = null;
  }

  protected final void open(String paramString)
  {
    this.currBranch.push(paramString);
    if ("layer".equals(paramString))
      this.currLayer = new TiledLayer();
    do
    {
      return;
      if ("tileset".equals(paramString))
      {
        this.currTileSet = new TileSet();
        return;
      }
      if ("data".equals(paramString))
      {
        this.dataString = "";
        this.awaitingData = true;
        return;
      }
      if ("objectgroup".equals(paramString))
      {
        this.currObjectGroup = new TiledObjectGroup();
        return;
      }
      if ("object".equals(paramString))
      {
        this.currObject = new TiledObject();
        return;
      }
      if ("property".equals(paramString))
      {
        this.currProperty = new TiledLoader.1.Property(this);
        this.currProperty.parentType = ((String)this.currBranch.get(-3 + this.currBranch.size()));
        return;
      }
      if ("polyline".equals(paramString))
      {
        this.polyline = new TiledLoader.1.Polyline(this, "polyline");
        return;
      }
    }
    while (!"polygon".equals(paramString));
    this.polygon = new TiledLoader.1.Polyline(this, "polygon");
  }

  protected final void text(String paramString)
  {
    if (this.awaitingData)
      this.dataString = this.dataString.concat(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.TiledLoader.1
 * JD-Core Version:    0.6.2
 */