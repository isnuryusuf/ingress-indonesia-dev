package com.badlogic.gdx.assets;

import com.badlogic.gdx.assets.loaders.AssetLoader;
import com.badlogic.gdx.assets.loaders.BitmapFontLoader;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.MusicLoader;
import com.badlogic.gdx.assets.loaders.PixmapLoader;
import com.badlogic.gdx.assets.loaders.SkinLoader;
import com.badlogic.gdx.assets.loaders.SoundLoader;
import com.badlogic.gdx.assets.loaders.TextureAtlasLoader;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.assets.loaders.TileAtlasLoader;
import com.badlogic.gdx.assets.loaders.TileMapRendererLoader;
import com.badlogic.gdx.assets.loaders.resolvers.InternalFileHandleResolver;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.tiled.TileAtlas;
import com.badlogic.gdx.graphics.g2d.tiled.TileMapRenderer;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Logger;
import com.badlogic.gdx.utils.ObjectIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectMap.Keys;
import com.badlogic.gdx.utils.TimeUtils;
import java.util.Iterator;
import java.util.Stack;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class AssetManager
  implements Disposable
{
  final ObjectMap<String, Array<String>> assetDependencies = new ObjectMap();
  final ObjectMap<String, Class> assetTypes = new ObjectMap();
  final ObjectMap<Class, ObjectMap<String, RefCountedContainer>> assets = new ObjectMap();
  AssetErrorListener listener = null;
  final Array<AssetDescriptor> loadQueue = new Array();
  int loaded = 0;
  final ObjectMap<Class, AssetLoader> loaders = new ObjectMap();
  Logger log = new Logger(AssetManager.class.getSimpleName(), 0);
  Stack<AssetLoadingTask> tasks = new Stack();
  final ExecutorService threadPool;
  int toLoad = 0;

  public AssetManager()
  {
    this(new InternalFileHandleResolver());
  }

  public AssetManager(FileHandleResolver paramFileHandleResolver)
  {
    setLoader(BitmapFont.class, new BitmapFontLoader(paramFileHandleResolver));
    setLoader(Music.class, new MusicLoader(paramFileHandleResolver));
    setLoader(Pixmap.class, new PixmapLoader(paramFileHandleResolver));
    setLoader(Sound.class, new SoundLoader(paramFileHandleResolver));
    setLoader(TextureAtlas.class, new TextureAtlasLoader(paramFileHandleResolver));
    setLoader(Texture.class, new TextureLoader(paramFileHandleResolver));
    setLoader(Skin.class, new SkinLoader(paramFileHandleResolver));
    setLoader(TileAtlas.class, new TileAtlasLoader(paramFileHandleResolver));
    setLoader(TileMapRenderer.class, new TileMapRendererLoader(paramFileHandleResolver));
    this.threadPool = Executors.newFixedThreadPool(1, new AssetManager.1(this));
  }

  private void addTask(AssetDescriptor paramAssetDescriptor)
  {
    AssetLoader localAssetLoader = (AssetLoader)this.loaders.get(paramAssetDescriptor.type);
    if (localAssetLoader == null)
      throw new GdxRuntimeException("No loader for type: " + paramAssetDescriptor.type.getSimpleName());
    this.tasks.push(new AssetLoadingTask(this, paramAssetDescriptor, localAssetLoader, this.threadPool));
  }

  private void disposeDependencies(String paramString)
  {
    Array localArray = (Array)this.assetDependencies.get(paramString);
    if (localArray != null)
    {
      Iterator localIterator = localArray.iterator();
      while (localIterator.hasNext())
        disposeDependencies((String)localIterator.next());
    }
    Class localClass = (Class)this.assetTypes.get(paramString);
    Object localObject = ((RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(paramString)).getObject(Object.class);
    if ((localObject instanceof Disposable))
      ((Disposable)localObject).dispose();
  }

  private void handleTaskError(Throwable paramThrowable)
  {
    this.log.error("Error loading asset.", paramThrowable);
    if (this.tasks.isEmpty())
      throw new GdxRuntimeException(paramThrowable);
    AssetLoadingTask localAssetLoadingTask = (AssetLoadingTask)this.tasks.pop();
    AssetDescriptor localAssetDescriptor = localAssetLoadingTask.assetDesc;
    if ((localAssetLoadingTask.dependenciesLoaded) && (localAssetLoadingTask.dependencies != null))
    {
      Iterator localIterator = localAssetLoadingTask.dependencies.iterator();
      while (localIterator.hasNext())
        unload(((AssetDescriptor)localIterator.next()).fileName);
    }
    this.tasks.clear();
    if (this.listener != null)
    {
      this.listener.error(localAssetDescriptor.fileName, localAssetDescriptor.type, paramThrowable);
      return;
    }
    throw new GdxRuntimeException(paramThrowable);
  }

  private void incrementRefCountedDependencies(String paramString)
  {
    Array localArray = (Array)this.assetDependencies.get(paramString);
    if (localArray == null);
    while (true)
    {
      return;
      Iterator localIterator = localArray.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Class localClass = (Class)this.assetTypes.get(str);
        ((RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(str)).incRefCount();
        incrementRefCountedDependencies(str);
      }
    }
  }

  private void nextTask()
  {
    AssetDescriptor localAssetDescriptor = (AssetDescriptor)this.loadQueue.removeIndex(0);
    if (isLoaded(localAssetDescriptor.fileName))
    {
      this.log.debug("Already loaded: " + localAssetDescriptor);
      Class localClass = (Class)this.assetTypes.get(localAssetDescriptor.fileName);
      ((RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(localAssetDescriptor.fileName)).incRefCount();
      incrementRefCountedDependencies(localAssetDescriptor.fileName);
      this.loaded = (1 + this.loaded);
      return;
    }
    this.log.info("Loading: " + localAssetDescriptor);
    addTask(localAssetDescriptor);
  }

  private boolean updateTask()
  {
    AssetLoadingTask localAssetLoadingTask = (AssetLoadingTask)this.tasks.peek();
    if (localAssetLoadingTask.update())
    {
      this.assetTypes.put(localAssetLoadingTask.assetDesc.fileName, localAssetLoadingTask.assetDesc.type);
      ObjectMap localObjectMap = (ObjectMap)this.assets.get(localAssetLoadingTask.assetDesc.type);
      if (localObjectMap == null)
      {
        localObjectMap = new ObjectMap();
        this.assets.put(localAssetLoadingTask.assetDesc.type, localObjectMap);
      }
      localObjectMap.put(localAssetLoadingTask.assetDesc.fileName, new RefCountedContainer(localAssetLoadingTask.getAsset()));
      if (this.tasks.size() == 1)
        this.loaded = (1 + this.loaded);
      this.tasks.pop();
      if (localAssetLoadingTask.cancel)
        unload(localAssetLoadingTask.assetDesc.fileName);
      while (true)
      {
        return true;
        if ((localAssetLoadingTask.assetDesc.params != null) && (localAssetLoadingTask.assetDesc.params.loadedCallback != null))
          localAssetLoadingTask.assetDesc.params.loadedCallback.finishedLoading(this, localAssetLoadingTask.assetDesc.fileName, localAssetLoadingTask.assetDesc.type);
        long l = TimeUtils.nanoTime();
        this.log.debug("Loaded: " + (float)(l - localAssetLoadingTask.startTime) / 1000000.0F + "ms " + localAssetLoadingTask.assetDesc);
      }
    }
    return false;
  }

  public void clear()
  {
    while (true)
    {
      ObjectIntMap localObjectIntMap;
      Array localArray1;
      try
      {
        this.loadQueue.clear();
        if (!update())
          continue;
        localObjectIntMap = new ObjectIntMap();
        if (this.assetTypes.size <= 0)
          break;
        localObjectIntMap.clear();
        localArray1 = this.assetTypes.keys().toArray();
        Iterator localIterator1 = localArray1.iterator();
        if (localIterator1.hasNext())
        {
          localObjectIntMap.put((String)localIterator1.next(), 0);
          continue;
        }
      }
      finally
      {
      }
      Iterator localIterator2 = localArray1.iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        Array localArray2 = (Array)this.assetDependencies.get(str2);
        if (localArray2 != null)
        {
          Iterator localIterator4 = localArray2.iterator();
          while (localIterator4.hasNext())
          {
            String str3 = (String)localIterator4.next();
            localObjectIntMap.put(str3, 1 + localObjectIntMap.get(str3, 0));
          }
        }
      }
      Iterator localIterator3 = localArray1.iterator();
      while (localIterator3.hasNext())
      {
        String str1 = (String)localIterator3.next();
        if (localObjectIntMap.get(str1, 0) == 0)
          unload(str1);
      }
    }
    this.assets.clear();
    this.assetTypes.clear();
    this.assetDependencies.clear();
    this.loaded = 0;
    this.toLoad = 0;
    this.loadQueue.clear();
    this.tasks.clear();
  }

  public <T> boolean containsAsset(T paramT)
  {
    try
    {
      ObjectMap localObjectMap = (ObjectMap)this.assets.get(paramT.getClass());
      boolean bool1;
      if (localObjectMap == null)
        bool1 = false;
      while (true)
      {
        return bool1;
        Iterator localIterator = localObjectMap.keys().iterator();
        while (true)
          if (localIterator.hasNext())
          {
            Object localObject2 = ((RefCountedContainer)localObjectMap.get((String)localIterator.next())).getObject(Object.class);
            if (localObject2 != paramT)
            {
              boolean bool2 = paramT.equals(localObject2);
              if (!bool2);
            }
            else
            {
              bool1 = true;
              break;
            }
          }
        bool1 = false;
      }
    }
    finally
    {
    }
  }

  public void dispose()
  {
    try
    {
      this.log.debug("Disposing.");
      clear();
      this.threadPool.shutdown();
      try
      {
        this.threadPool.awaitTermination(9223372036854775807L, TimeUnit.SECONDS);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          new GdxRuntimeException("Couldn't shutdown loading thread");
      }
    }
    finally
    {
    }
  }

  public void finishLoading()
  {
    this.log.debug("Waiting for loading to complete...");
    while (!update())
      Thread.yield();
    this.log.debug("Loading complete.");
  }

  public <T> T get(String paramString, Class<T> paramClass)
  {
    ObjectMap localObjectMap;
    try
    {
      localObjectMap = (ObjectMap)this.assets.get(paramClass);
      if (localObjectMap == null)
        throw new GdxRuntimeException("Asset not loaded: " + paramString);
    }
    finally
    {
    }
    RefCountedContainer localRefCountedContainer = (RefCountedContainer)localObjectMap.get(paramString);
    if (localRefCountedContainer == null)
      throw new GdxRuntimeException("Asset not loaded: " + paramString);
    Object localObject2 = localRefCountedContainer.getObject(paramClass);
    if (localObject2 == null)
      throw new GdxRuntimeException("Asset not loaded: " + paramString);
    return localObject2;
  }

  public <T> String getAssetFileName(T paramT)
  {
    try
    {
      String str;
      boolean bool;
      do
      {
        Iterator localIterator1 = this.assets.keys().iterator();
        ObjectMap localObjectMap;
        Iterator localIterator2;
        while (!localIterator2.hasNext())
        {
          if (!localIterator1.hasNext())
            break;
          Class localClass = (Class)localIterator1.next();
          localObjectMap = (ObjectMap)this.assets.get(localClass);
          localIterator2 = localObjectMap.keys().iterator();
        }
        str = (String)localIterator2.next();
        Object localObject2 = ((RefCountedContainer)localObjectMap.get(str)).getObject(Object.class);
        if (localObject2 == paramT)
          break;
        bool = paramT.equals(localObject2);
      }
      while (!bool);
      while (true)
      {
        return str;
        str = null;
      }
    }
    finally
    {
    }
  }

  public String getDiagnostics()
  {
    StringBuffer localStringBuffer;
    while (true)
    {
      try
      {
        localStringBuffer = new StringBuffer();
        Iterator localIterator1 = this.assetTypes.keys().iterator();
        if (!localIterator1.hasNext())
          break;
        String str2 = (String)localIterator1.next();
        localStringBuffer.append(str2);
        localStringBuffer.append(", ");
        Class localClass = (Class)this.assetTypes.get(str2);
        RefCountedContainer localRefCountedContainer = (RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(str2);
        Array localArray = (Array)this.assetDependencies.get(str2);
        localStringBuffer.append(localClass.getSimpleName());
        localStringBuffer.append(", refs: ");
        localStringBuffer.append(localRefCountedContainer.getRefCount());
        if (localArray == null)
          break label203;
        localStringBuffer.append(", deps: [");
        Iterator localIterator2 = localArray.iterator();
        if (localIterator2.hasNext())
        {
          localStringBuffer.append((String)localIterator2.next());
          localStringBuffer.append(",");
          continue;
        }
      }
      finally
      {
      }
      localStringBuffer.append("]");
      label203: localStringBuffer.append("\n");
    }
    String str1 = localStringBuffer.toString();
    return str1;
  }

  public int getLoadedAssets()
  {
    try
    {
      int i = this.assetTypes.size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Logger getLogger()
  {
    return this.log;
  }

  public float getProgress()
  {
    float f1 = 1.0F;
    try
    {
      int i = this.toLoad;
      if (i == 0);
      while (true)
      {
        return f1;
        float f2 = Math.min(1.0F, this.loaded / this.toLoad);
        f1 = f2;
      }
    }
    finally
    {
    }
  }

  public int getQueuedAssets()
  {
    try
    {
      int i = this.loadQueue.size;
      int j = this.tasks.size();
      int k = i + j;
      return k;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getReferenceCount(String paramString)
  {
    Class localClass;
    try
    {
      localClass = (Class)this.assetTypes.get(paramString);
      if (localClass == null)
        throw new GdxRuntimeException("Asset not loaded: " + paramString);
    }
    finally
    {
    }
    int i = ((RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(paramString)).getRefCount();
    return i;
  }

  void injectDependency(String paramString, AssetDescriptor paramAssetDescriptor)
  {
    try
    {
      Array localArray = (Array)this.assetDependencies.get(paramString);
      if (localArray == null)
      {
        localArray = new Array();
        this.assetDependencies.put(paramString, localArray);
      }
      localArray.add(paramAssetDescriptor.fileName);
      if (isLoaded(paramAssetDescriptor.fileName))
      {
        this.log.debug("Dependency already loaded: " + paramAssetDescriptor);
        Class localClass = (Class)this.assetTypes.get(paramAssetDescriptor.fileName);
        ((RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(paramAssetDescriptor.fileName)).incRefCount();
        incrementRefCountedDependencies(paramAssetDescriptor.fileName);
      }
      while (true)
      {
        return;
        this.log.info("Loading dependency: " + paramAssetDescriptor);
        addTask(paramAssetDescriptor);
      }
    }
    finally
    {
    }
  }

  public boolean isLoaded(String paramString)
  {
    boolean bool2;
    if (paramString == null)
      bool2 = false;
    while (true)
    {
      return bool2;
      try
      {
        boolean bool1 = this.assetTypes.containsKey(paramString);
        bool2 = bool1;
      }
      finally
      {
      }
    }
  }

  public boolean isLoaded(String paramString, Class paramClass)
  {
    try
    {
      ObjectMap localObjectMap = (ObjectMap)this.assets.get(paramClass);
      boolean bool;
      if (localObjectMap == null)
        bool = false;
      while (true)
      {
        return bool;
        RefCountedContainer localRefCountedContainer = (RefCountedContainer)localObjectMap.get(paramString);
        if (localRefCountedContainer == null)
        {
          bool = false;
        }
        else
        {
          Object localObject2 = localRefCountedContainer.getObject(paramClass);
          if (localObject2 != null)
            bool = true;
          else
            bool = false;
        }
      }
    }
    finally
    {
    }
  }

  public void load(AssetDescriptor paramAssetDescriptor)
  {
    try
    {
      load(paramAssetDescriptor.fileName, paramAssetDescriptor.type, paramAssetDescriptor.params);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public <T> void load(String paramString, Class<T> paramClass)
  {
    try
    {
      load(paramString, paramClass, null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public <T> void load(String paramString, Class<T> paramClass, AssetLoaderParameters<T> paramAssetLoaderParameters)
  {
    try
    {
      if ((AssetLoader)this.loaders.get(paramClass) == null)
        throw new GdxRuntimeException("No loader for type: " + paramClass.getSimpleName());
    }
    finally
    {
    }
    int k;
    int i;
    if (this.loadQueue.size == 0)
    {
      this.loaded = 0;
      this.toLoad = 0;
      break label449;
      int j = this.loadQueue.size;
      k = 0;
      if (i < j)
      {
        AssetDescriptor localAssetDescriptor1 = (AssetDescriptor)this.loadQueue.get(i);
        if ((!localAssetDescriptor1.fileName.equals(paramString)) || (localAssetDescriptor1.type.equals(paramClass)))
          break label455;
        throw new GdxRuntimeException("Asset with name '" + paramString + "' already in preload queue, but has different type (expected: " + paramClass.getSimpleName() + ", found: " + localAssetDescriptor1.type.getSimpleName() + ")");
      }
    }
    while (true)
    {
      if (k < this.tasks.size())
      {
        AssetDescriptor localAssetDescriptor3 = ((AssetLoadingTask)this.tasks.get(k)).assetDesc;
        if ((localAssetDescriptor3.fileName.equals(paramString)) && (!localAssetDescriptor3.type.equals(paramClass)))
          throw new GdxRuntimeException("Asset with name '" + paramString + "' already in task list, but has different type (expected: " + paramClass.getSimpleName() + ", found: " + localAssetDescriptor3.type.getSimpleName() + ")");
      }
      else
      {
        Class localClass = (Class)this.assetTypes.get(paramString);
        if ((localClass != null) && (!localClass.equals(paramClass)))
          throw new GdxRuntimeException("Asset with name '" + paramString + "' already loaded, but has different type (expected: " + paramClass.getSimpleName() + ", found: " + localClass.getSimpleName() + ")");
        this.toLoad = (1 + this.toLoad);
        AssetDescriptor localAssetDescriptor2 = new AssetDescriptor(paramString, paramClass, paramAssetLoaderParameters);
        this.loadQueue.add(localAssetDescriptor2);
        this.log.debug("Queued: " + localAssetDescriptor2);
        return;
        label449: i = 0;
        break;
        label455: i++;
        break;
      }
      k++;
    }
  }

  public void setErrorListener(AssetErrorListener paramAssetErrorListener)
  {
    try
    {
      this.listener = paramAssetErrorListener;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public <T, P extends AssetLoaderParameters<T>> void setLoader(Class<T> paramClass, AssetLoader<T, P> paramAssetLoader)
  {
    if (paramClass == null)
      try
      {
        throw new IllegalArgumentException("type cannot be null.");
      }
      finally
      {
      }
    if (paramAssetLoader == null)
      throw new IllegalArgumentException("loader cannot be null.");
    this.log.debug("Loader set: " + paramClass.getSimpleName() + " -> " + paramAssetLoader.getClass().getSimpleName());
    this.loaders.put(paramClass, paramAssetLoader);
  }

  public void setReferenceCount(String paramString, int paramInt)
  {
    Class localClass;
    try
    {
      localClass = (Class)this.assetTypes.get(paramString);
      if (localClass == null)
        throw new GdxRuntimeException("Asset not loaded: " + paramString);
    }
    finally
    {
    }
    ((RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(paramString)).setRefCount(paramInt);
  }

  public void unload(String paramString)
  {
    int i = 0;
    while (true)
    {
      int j;
      try
      {
        if (i >= this.loadQueue.size)
          break label417;
        if (((AssetDescriptor)this.loadQueue.get(i)).fileName.equals(paramString))
        {
          j = i;
          if (j != -1)
          {
            this.loadQueue.removeIndex(j);
            this.log.debug("Unload (from queue): " + paramString);
          }
        }
        else
        {
          i++;
          continue;
        }
        if (this.tasks.size() > 0)
        {
          AssetLoadingTask localAssetLoadingTask = (AssetLoadingTask)this.tasks.firstElement();
          if (localAssetLoadingTask.assetDesc.fileName.equals(paramString))
          {
            localAssetLoadingTask.cancel = true;
            this.log.debug("Unload (from tasks): " + paramString);
            continue;
          }
        }
      }
      finally
      {
      }
      Class localClass = (Class)this.assetTypes.get(paramString);
      if (localClass == null)
        throw new GdxRuntimeException("Asset not loaded: " + paramString);
      RefCountedContainer localRefCountedContainer = (RefCountedContainer)((ObjectMap)this.assets.get(localClass)).get(paramString);
      localRefCountedContainer.decRefCount();
      if (localRefCountedContainer.getRefCount() <= 0)
      {
        this.log.debug("Unload (dispose): " + paramString);
        if ((localRefCountedContainer.getObject(Object.class) instanceof Disposable))
          ((Disposable)localRefCountedContainer.getObject(Object.class)).dispose();
        this.assetTypes.remove(paramString);
        ((ObjectMap)this.assets.get(localClass)).remove(paramString);
      }
      while (true)
      {
        Array localArray = (Array)this.assetDependencies.get(paramString);
        if (localArray == null)
          break;
        Iterator localIterator = localArray.iterator();
        while (localIterator.hasNext())
          unload((String)localIterator.next());
        this.log.debug("Unload (decrement): " + paramString);
      }
      if (localRefCountedContainer.getRefCount() <= 0)
      {
        this.assetDependencies.remove(paramString);
        continue;
        label417: j = -1;
      }
    }
  }

  public boolean update()
  {
    boolean bool = true;
    try
    {
      if (this.tasks.size() == 0)
        while ((this.loadQueue.size != 0) && (this.tasks.size() == 0))
          nextTask();
    }
    catch (Throwable localThrowable)
    {
      handleTaskError(localThrowable);
      int i = this.loadQueue.size;
      if (i == 0);
      while (true)
      {
        return bool;
        if (this.tasks.size() != 0)
          if ((updateTask()) && (this.loadQueue.size == 0))
          {
            int j = this.tasks.size();
            if (j == 0);
          }
          else
          {
            bool = false;
            continue;
            bool = false;
          }
      }
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.AssetManager
 * JD-Core Version:    0.6.2
 */