package com.badlogic.gdx.backends.android;

import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Debug;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout.LayoutParams;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Application.ApplicationType;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.Audio;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.backends.android.surfaceview.FillResolutionStrategy;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewCupcake;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxNativesLoader;
import java.io.File;

public class AndroidApplication extends FragmentActivity
  implements Application
{
  protected AndroidAudio audio;
  protected final Array<Runnable> executedRunnables = new Array();
  protected AndroidFiles files;
  protected boolean firstResume = true;
  protected AndroidGraphics graphics;
  protected Handler handler;
  protected AndroidInput input;
  protected ApplicationListener listener;
  protected int logLevel = 2;
  protected final Array<Runnable> runnables = new Array();
  protected PowerManager.WakeLock wakeLock = null;

  static
  {
    GdxNativesLoader.load();
  }

  protected FrameLayout.LayoutParams createLayoutParams()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    localLayoutParams.gravity = 17;
    return localLayoutParams;
  }

  protected void createWakeLock(AndroidApplicationConfiguration paramAndroidApplicationConfiguration)
  {
    if (paramAndroidApplicationConfiguration.useWakelock)
      this.wakeLock = ((PowerManager)getSystemService("power")).newWakeLock(26, "libgdx wakelock");
  }

  public void debug(String paramString1, String paramString2)
  {
  }

  public void debug(String paramString1, String paramString2, Throwable paramThrowable)
  {
  }

  public void error(String paramString1, String paramString2)
  {
    if (this.logLevel > 0)
      Log.e(paramString1, paramString2);
  }

  public void error(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (this.logLevel > 0)
      Log.e(paramString1, paramString2, paramThrowable);
  }

  public void exit()
  {
    this.handler.post(new AndroidApplication.1(this));
  }

  public Audio getAudio()
  {
    return this.audio;
  }

  public Files getFiles()
  {
    return this.files;
  }

  public Graphics getGraphics()
  {
    return this.graphics;
  }

  public Input getInput()
  {
    return this.input;
  }

  public long getJavaHeap()
  {
    return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
  }

  public long getNativeHeap()
  {
    return Debug.getNativeHeapAllocatedSize();
  }

  public Preferences getPreferences(String paramString)
  {
    return new AndroidPreferences(getSharedPreferences(paramString, 0));
  }

  public Application.ApplicationType getType()
  {
    return Application.ApplicationType.Android;
  }

  public int getVersion()
  {
    return Integer.parseInt(Build.VERSION.SDK);
  }

  public void initialize(ApplicationListener paramApplicationListener, AndroidApplicationConfiguration paramAndroidApplicationConfiguration)
  {
    Object localObject;
    if (paramAndroidApplicationConfiguration.resolutionStrategy == null)
      localObject = new FillResolutionStrategy();
    while (true)
    {
      this.graphics = new AndroidGraphics(this, paramAndroidApplicationConfiguration, (ResolutionStrategy)localObject);
      this.input = new AndroidInput(this, this.graphics.view, paramAndroidApplicationConfiguration);
      this.audio = new AndroidAudio(this, paramAndroidApplicationConfiguration);
      this.files = new AndroidFiles(getAssets(), getFilesDir().getAbsolutePath());
      this.listener = paramApplicationListener;
      this.handler = new Handler();
      Gdx.app = this;
      Gdx.input = getInput();
      Gdx.audio = getAudio();
      Gdx.files = getFiles();
      Gdx.graphics = getGraphics();
      try
      {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().clearFlags(2048);
        setContentView(this.graphics.getView(), createLayoutParams());
        createWakeLock(paramAndroidApplicationConfiguration);
        return;
        localObject = paramAndroidApplicationConfiguration.resolutionStrategy;
      }
      catch (Exception localException)
      {
        while (true)
          log("AndroidApplication", "Content already displayed, cannot request FEATURE_NO_TITLE", localException);
      }
    }
  }

  public void initialize(ApplicationListener paramApplicationListener, boolean paramBoolean)
  {
    AndroidApplicationConfiguration localAndroidApplicationConfiguration = new AndroidApplicationConfiguration();
    localAndroidApplicationConfiguration.useGL20 = paramBoolean;
    initialize(paramApplicationListener, localAndroidApplicationConfiguration);
  }

  public View initializeForView(ApplicationListener paramApplicationListener, AndroidApplicationConfiguration paramAndroidApplicationConfiguration)
  {
    if (paramAndroidApplicationConfiguration.resolutionStrategy == null);
    for (Object localObject = new FillResolutionStrategy(); ; localObject = paramAndroidApplicationConfiguration.resolutionStrategy)
    {
      this.graphics = new AndroidGraphics(this, paramAndroidApplicationConfiguration, (ResolutionStrategy)localObject);
      this.input = new AndroidInput(this, this.graphics.view, paramAndroidApplicationConfiguration);
      this.audio = new AndroidAudio(this, paramAndroidApplicationConfiguration);
      this.files = new AndroidFiles(getAssets(), getFilesDir().getAbsolutePath());
      this.listener = paramApplicationListener;
      this.handler = new Handler();
      Gdx.app = this;
      Gdx.input = getInput();
      Gdx.audio = getAudio();
      Gdx.files = getFiles();
      Gdx.graphics = getGraphics();
      createWakeLock(paramAndroidApplicationConfiguration);
      return this.graphics.getView();
    }
  }

  public View initializeForView(ApplicationListener paramApplicationListener, boolean paramBoolean)
  {
    AndroidApplicationConfiguration localAndroidApplicationConfiguration = new AndroidApplicationConfiguration();
    localAndroidApplicationConfiguration.useGL20 = paramBoolean;
    return initializeForView(paramApplicationListener, localAndroidApplicationConfiguration);
  }

  public void log(String paramString1, String paramString2)
  {
    if (this.logLevel >= 2)
      Log.i(paramString1, paramString2);
  }

  public void log(String paramString1, String paramString2, Exception paramException)
  {
    if (this.logLevel >= 2)
      Log.i(paramString1, paramString2, paramException);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    int i = 1;
    super.onConfigurationChanged(paramConfiguration);
    if (paramConfiguration.hardKeyboardHidden == i);
    while (true)
    {
      this.input.keyboardAvailable = i;
      return;
      i = 0;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onPause()
  {
    if (this.wakeLock != null)
      this.wakeLock.release();
    boolean bool = this.graphics.isContinuousRendering();
    this.graphics.setContinuousRendering(true);
    this.graphics.pause();
    this.input.unregisterSensorListeners();
    int[] arrayOfInt = this.input.realId;
    for (int i = 0; i < arrayOfInt.length; i++)
      arrayOfInt[i] = -1;
    if (isFinishing())
    {
      this.graphics.clearManagedCaches();
      this.graphics.destroy();
    }
    this.graphics.setContinuousRendering(bool);
    if ((this.graphics != null) && (this.graphics.view != null))
    {
      if ((this.graphics.view instanceof GLSurfaceViewCupcake))
        ((GLSurfaceViewCupcake)this.graphics.view).onPause();
      if ((this.graphics.view instanceof GLSurfaceViewICS))
        ((GLSurfaceViewICS)this.graphics.view).onPause();
    }
    super.onPause();
  }

  protected void onResume()
  {
    if (this.wakeLock != null)
      this.wakeLock.acquire();
    Gdx.app = this;
    Gdx.input = getInput();
    Gdx.audio = getAudio();
    Gdx.files = getFiles();
    Gdx.graphics = getGraphics();
    ((AndroidInput)getInput()).registerSensorListeners();
    if ((this.graphics != null) && (this.graphics.view != null))
    {
      if ((this.graphics.view instanceof GLSurfaceViewCupcake))
        ((GLSurfaceViewCupcake)this.graphics.view).onResume();
      if ((this.graphics.view instanceof GLSurfaceViewICS))
        ((GLSurfaceViewICS)this.graphics.view).onResume();
    }
    if (!this.firstResume)
      this.graphics.resume();
    while (true)
    {
      super.onResume();
      return;
      this.firstResume = false;
    }
  }

  public void postRunnable(Runnable paramRunnable)
  {
    synchronized (this.runnables)
    {
      this.runnables.add(paramRunnable);
      Gdx.graphics.requestRendering();
      return;
    }
  }

  public void setLogLevel(int paramInt)
  {
    this.logLevel = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidApplication
 * JD-Core Version:    0.6.2
 */