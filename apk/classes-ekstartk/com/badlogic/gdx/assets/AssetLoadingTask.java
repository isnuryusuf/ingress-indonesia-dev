package com.badlogic.gdx.assets;

import com.badlogic.gdx.assets.loaders.AssetLoader;
import com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader;
import com.badlogic.gdx.assets.loaders.SynchronousAssetLoader;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Logger;
import com.badlogic.gdx.utils.TimeUtils;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

class AssetLoadingTask
  implements Callable<Void>
{
  Object asset = null;
  final AssetDescriptor assetDesc;
  volatile boolean asyncDone = false;
  boolean cancel = false;
  Array<AssetDescriptor> dependencies;
  boolean dependenciesLoaded = false;
  Future<Void> depsFuture = null;
  Future<Void> loadFuture = null;
  final AssetLoader loader;
  AssetManager manager;
  final long startTime;
  final ExecutorService threadPool;
  int ticks = 0;

  public AssetLoadingTask(AssetManager paramAssetManager, AssetDescriptor paramAssetDescriptor, AssetLoader paramAssetLoader, ExecutorService paramExecutorService)
  {
    this.manager = paramAssetManager;
    this.assetDesc = paramAssetDescriptor;
    this.loader = paramAssetLoader;
    this.threadPool = paramExecutorService;
    if (paramAssetManager.log.getLevel() == 3);
    for (long l = TimeUtils.nanoTime(); ; l = 0L)
    {
      this.startTime = l;
      return;
    }
  }

  private void handleAsyncLoader()
  {
    AsynchronousAssetLoader localAsynchronousAssetLoader = (AsynchronousAssetLoader)this.loader;
    if (!this.dependenciesLoaded)
      if (this.depsFuture == null)
        this.depsFuture = this.threadPool.submit(this);
    do
    {
      while (true)
      {
        return;
        if (this.depsFuture.isDone())
          try
          {
            this.depsFuture.get();
            this.dependenciesLoaded = true;
            if (this.asyncDone)
            {
              this.asset = localAsynchronousAssetLoader.loadSync(this.manager, this.assetDesc.fileName, this.assetDesc.params);
              return;
            }
          }
          catch (Exception localException2)
          {
            throw new GdxRuntimeException("Couldn't load dependencies of asset '" + this.assetDesc.fileName + "'", localException2);
          }
      }
      if ((this.loadFuture == null) && (!this.asyncDone))
      {
        this.loadFuture = this.threadPool.submit(this);
        return;
      }
      if (this.asyncDone)
      {
        this.asset = localAsynchronousAssetLoader.loadSync(this.manager, this.assetDesc.fileName, this.assetDesc.params);
        return;
      }
    }
    while (!this.loadFuture.isDone());
    try
    {
      this.loadFuture.get();
      this.asset = localAsynchronousAssetLoader.loadSync(this.manager, this.assetDesc.fileName, this.assetDesc.params);
      return;
    }
    catch (Exception localException1)
    {
      throw new GdxRuntimeException("Couldn't load asset '" + this.assetDesc.fileName + "'", localException1);
    }
  }

  private void handleSyncLoader()
  {
    SynchronousAssetLoader localSynchronousAssetLoader = (SynchronousAssetLoader)this.loader;
    if (!this.dependenciesLoaded)
    {
      this.dependenciesLoaded = true;
      this.dependencies = localSynchronousAssetLoader.getDependencies(this.assetDesc.fileName, this.assetDesc.params);
      if (this.dependencies == null)
        this.asset = localSynchronousAssetLoader.load(this.manager, this.assetDesc.fileName, this.assetDesc.params);
      while (true)
      {
        return;
        Iterator localIterator = this.dependencies.iterator();
        while (localIterator.hasNext())
        {
          AssetDescriptor localAssetDescriptor = (AssetDescriptor)localIterator.next();
          this.manager.injectDependency(this.assetDesc.fileName, localAssetDescriptor);
        }
      }
    }
    this.asset = localSynchronousAssetLoader.load(this.manager, this.assetDesc.fileName, this.assetDesc.params);
  }

  public Void call()
  {
    AsynchronousAssetLoader localAsynchronousAssetLoader = (AsynchronousAssetLoader)this.loader;
    if (!this.dependenciesLoaded)
    {
      this.dependencies = localAsynchronousAssetLoader.getDependencies(this.assetDesc.fileName, this.assetDesc.params);
      if (this.dependencies != null)
      {
        Iterator localIterator = this.dependencies.iterator();
        while (localIterator.hasNext())
        {
          AssetDescriptor localAssetDescriptor = (AssetDescriptor)localIterator.next();
          this.manager.injectDependency(this.assetDesc.fileName, localAssetDescriptor);
        }
      }
      localAsynchronousAssetLoader.loadAsync(this.manager, this.assetDesc.fileName, this.assetDesc.params);
      this.asyncDone = true;
    }
    while (true)
    {
      return null;
      localAsynchronousAssetLoader.loadAsync(this.manager, this.assetDesc.fileName, this.assetDesc.params);
    }
  }

  public Object getAsset()
  {
    return this.asset;
  }

  public boolean update()
  {
    this.ticks = (1 + this.ticks);
    if ((this.loader instanceof SynchronousAssetLoader))
      handleSyncLoader();
    while (this.asset != null)
    {
      return true;
      handleAsyncLoader();
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.AssetLoadingTask
 * JD-Core Version:    0.6.2
 */