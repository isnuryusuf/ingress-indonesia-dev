package com.badlogic.gdx.assets;

import java.util.concurrent.ThreadFactory;

class AssetManager$1
  implements ThreadFactory
{
  AssetManager$1(AssetManager paramAssetManager)
  {
  }

  public Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable, "AssetManager-Loader-Thread");
    localThread.setDaemon(true);
    return localThread;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.AssetManager.1
 * JD-Core Version:    0.6.2
 */