package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import java.io.File;

public class ParticleEffect
  implements Disposable
{
  private final Array<ParticleEmitter> emitters;

  public ParticleEffect()
  {
    this.emitters = new Array(8);
  }

  public ParticleEffect(ParticleEffect paramParticleEffect)
  {
    this.emitters = new Array(true, paramParticleEffect.emitters.size);
    int i = paramParticleEffect.emitters.size;
    for (int j = 0; j < i; j++)
      this.emitters.add(new ParticleEmitter((ParticleEmitter)paramParticleEffect.emitters.get(j)));
  }

  public void allowCompletion()
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).allowCompletion();
  }

  public void dispose()
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).getSprite().getTexture().dispose();
  }

  public void draw(SpriteBatch paramSpriteBatch)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).draw(paramSpriteBatch);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).draw(paramSpriteBatch, paramFloat);
  }

  public ParticleEmitter findEmitter(String paramString)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
    {
      ParticleEmitter localParticleEmitter = (ParticleEmitter)this.emitters.get(j);
      if (localParticleEmitter.getName().equals(paramString))
        return localParticleEmitter;
    }
    return null;
  }

  public Array<ParticleEmitter> getEmitters()
  {
    return this.emitters;
  }

  public boolean isComplete()
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
    {
      ParticleEmitter localParticleEmitter = (ParticleEmitter)this.emitters.get(j);
      if (localParticleEmitter.isContinuous())
        return false;
      if (!localParticleEmitter.isComplete())
        return false;
    }
    return true;
  }

  public void load(FileHandle paramFileHandle1, FileHandle paramFileHandle2)
  {
    loadEmitters(paramFileHandle1);
    loadEmitterImages(paramFileHandle2);
  }

  public void load(FileHandle paramFileHandle, TextureAtlas paramTextureAtlas)
  {
    loadEmitters(paramFileHandle);
    loadEmitterImages(paramTextureAtlas);
  }

  public void loadEmitterImages(FileHandle paramFileHandle)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
    {
      ParticleEmitter localParticleEmitter = (ParticleEmitter)this.emitters.get(j);
      String str = localParticleEmitter.getImagePath();
      if (str != null)
        localParticleEmitter.setSprite(new Sprite(loadTexture(paramFileHandle.child(new File(str.replace('\\', '/')).getName()))));
    }
  }

  public void loadEmitterImages(TextureAtlas paramTextureAtlas)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
    {
      ParticleEmitter localParticleEmitter = (ParticleEmitter)this.emitters.get(j);
      String str1 = localParticleEmitter.getImagePath();
      if (str1 != null)
      {
        String str2 = new File(str1.replace('\\', '/')).getName();
        int k = str2.lastIndexOf('.');
        if (k != -1)
          str2 = str2.substring(0, k);
        Sprite localSprite = paramTextureAtlas.createSprite(str2);
        if (localSprite == null)
          throw new IllegalArgumentException("SpriteSheet missing image: " + str2);
        localParticleEmitter.setSprite(localSprite);
      }
    }
  }

  // ERROR //
  public void loadEmitters(FileHandle paramFileHandle)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 165	com/badlogic/gdx/files/FileHandle:read	()Ljava/io/InputStream;
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 20	com/badlogic/gdx/graphics/g2d/ParticleEffect:emitters	Lcom/badlogic/gdx/utils/Array;
    //   9: invokevirtual 168	com/badlogic/gdx/utils/Array:clear	()V
    //   12: new 170	java/io/BufferedReader
    //   15: dup
    //   16: new 172	java/io/InputStreamReader
    //   19: dup
    //   20: aload_2
    //   21: invokespecial 175	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   24: sipush 512
    //   27: invokespecial 178	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   30: astore_3
    //   31: new 30	com/badlogic/gdx/graphics/g2d/ParticleEmitter
    //   34: dup
    //   35: aload_3
    //   36: invokespecial 181	com/badlogic/gdx/graphics/g2d/ParticleEmitter:<init>	(Ljava/io/BufferedReader;)V
    //   39: astore 4
    //   41: aload_3
    //   42: invokevirtual 184	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   45: pop
    //   46: aload 4
    //   48: aload_3
    //   49: invokevirtual 184	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   52: invokevirtual 187	com/badlogic/gdx/graphics/g2d/ParticleEmitter:setImagePath	(Ljava/lang/String;)V
    //   55: aload_0
    //   56: getfield 20	com/badlogic/gdx/graphics/g2d/ParticleEffect:emitters	Lcom/badlogic/gdx/utils/Array;
    //   59: aload 4
    //   61: invokevirtual 41	com/badlogic/gdx/utils/Array:add	(Ljava/lang/Object;)V
    //   64: aload_3
    //   65: invokevirtual 184	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   68: ifnull +14 -> 82
    //   71: aload_3
    //   72: invokevirtual 184	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   75: astore 10
    //   77: aload 10
    //   79: ifnonnull -48 -> 31
    //   82: aload_3
    //   83: invokevirtual 190	java/io/BufferedReader:close	()V
    //   86: return
    //   87: astore 5
    //   89: aconst_null
    //   90: astore_3
    //   91: new 192	com/badlogic/gdx/utils/GdxRuntimeException
    //   94: dup
    //   95: new 148	java/lang/StringBuilder
    //   98: dup
    //   99: ldc 194
    //   101: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: aload_1
    //   105: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: aload 5
    //   113: invokespecial 200	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: athrow
    //   117: astore 6
    //   119: aload_3
    //   120: ifnull +7 -> 127
    //   123: aload_3
    //   124: invokevirtual 190	java/io/BufferedReader:close	()V
    //   127: aload 6
    //   129: athrow
    //   130: astore 9
    //   132: return
    //   133: astore 7
    //   135: goto -8 -> 127
    //   138: astore 6
    //   140: aconst_null
    //   141: astore_3
    //   142: goto -23 -> 119
    //   145: astore 5
    //   147: goto -56 -> 91
    //
    // Exception table:
    //   from	to	target	type
    //   12	31	87	java/io/IOException
    //   31	77	117	finally
    //   91	117	117	finally
    //   82	86	130	java/io/IOException
    //   123	127	133	java/io/IOException
    //   12	31	138	finally
    //   31	77	145	java/io/IOException
  }

  protected Texture loadTexture(FileHandle paramFileHandle)
  {
    return new Texture(paramFileHandle, false);
  }

  // ERROR //
  public void save(File paramFile)
  {
    // Byte code:
    //   0: new 207	java/io/FileWriter
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 209	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   8: astore_2
    //   9: aload_0
    //   10: getfield 20	com/badlogic/gdx/graphics/g2d/ParticleEffect:emitters	Lcom/badlogic/gdx/utils/Array;
    //   13: getfield 25	com/badlogic/gdx/utils/Array:size	I
    //   16: istore 6
    //   18: iconst_0
    //   19: istore 7
    //   21: iconst_0
    //   22: istore 8
    //   24: iload 7
    //   26: iload 6
    //   28: if_icmpge +83 -> 111
    //   31: aload_0
    //   32: getfield 20	com/badlogic/gdx/graphics/g2d/ParticleEffect:emitters	Lcom/badlogic/gdx/utils/Array;
    //   35: iload 7
    //   37: invokevirtual 34	com/badlogic/gdx/utils/Array:get	(I)Ljava/lang/Object;
    //   40: checkcast 30	com/badlogic/gdx/graphics/g2d/ParticleEmitter
    //   43: astore 9
    //   45: iload 8
    //   47: iconst_1
    //   48: iadd
    //   49: istore 10
    //   51: iload 8
    //   53: ifle +9 -> 62
    //   56: aload_2
    //   57: ldc 211
    //   59: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   62: aload 9
    //   64: aload_2
    //   65: invokevirtual 219	com/badlogic/gdx/graphics/g2d/ParticleEmitter:save	(Ljava/io/Writer;)V
    //   68: aload_2
    //   69: ldc 221
    //   71: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   74: aload_2
    //   75: new 148	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 222	java/lang/StringBuilder:<init>	()V
    //   82: aload 9
    //   84: invokevirtual 103	com/badlogic/gdx/graphics/g2d/ParticleEmitter:getImagePath	()Ljava/lang/String;
    //   87: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: ldc 224
    //   92: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   101: iinc 7 1
    //   104: iload 10
    //   106: istore 8
    //   108: goto -84 -> 24
    //   111: aload_2
    //   112: invokevirtual 225	java/io/Writer:close	()V
    //   115: return
    //   116: astore_3
    //   117: aconst_null
    //   118: astore_2
    //   119: new 192	com/badlogic/gdx/utils/GdxRuntimeException
    //   122: dup
    //   123: new 148	java/lang/StringBuilder
    //   126: dup
    //   127: ldc 227
    //   129: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   132: aload_1
    //   133: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: aload_3
    //   140: invokespecial 200	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   143: athrow
    //   144: astore 4
    //   146: aload_2
    //   147: ifnull +7 -> 154
    //   150: aload_2
    //   151: invokevirtual 225	java/io/Writer:close	()V
    //   154: aload 4
    //   156: athrow
    //   157: astore 11
    //   159: return
    //   160: astore 5
    //   162: goto -8 -> 154
    //   165: astore 4
    //   167: aconst_null
    //   168: astore_2
    //   169: goto -23 -> 146
    //   172: astore_3
    //   173: goto -54 -> 119
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	116	java/io/IOException
    //   9	18	144	finally
    //   31	45	144	finally
    //   56	62	144	finally
    //   62	101	144	finally
    //   119	144	144	finally
    //   111	115	157	java/io/IOException
    //   150	154	160	java/io/IOException
    //   0	9	165	finally
    //   9	18	172	java/io/IOException
    //   31	45	172	java/io/IOException
    //   56	62	172	java/io/IOException
    //   62	101	172	java/io/IOException
  }

  public void setDuration(int paramInt)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
    {
      ParticleEmitter localParticleEmitter = (ParticleEmitter)this.emitters.get(j);
      localParticleEmitter.setContinuous(false);
      localParticleEmitter.duration = paramInt;
      localParticleEmitter.durationTimer = 0.0F;
    }
  }

  public void setFlip(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).setFlip(paramBoolean1, paramBoolean2);
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).setPosition(paramFloat1, paramFloat2);
  }

  public void start()
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).start();
  }

  public void update(float paramFloat)
  {
    int i = this.emitters.size;
    for (int j = 0; j < i; j++)
      ((ParticleEmitter)this.emitters.get(j)).update(paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEffect
 * JD-Core Version:    0.6.2
 */