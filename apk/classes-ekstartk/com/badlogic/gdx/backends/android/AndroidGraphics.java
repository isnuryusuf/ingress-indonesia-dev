package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Graphics.BufferFormat;
import com.badlogic.gdx.Graphics.DisplayMode;
import com.badlogic.gdx.Graphics.GraphicsType;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewCupcake;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.EGLConfigChooser;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.Renderer;
import com.badlogic.gdx.backends.android.surfaceview.GdxEglConfigChooser;
import com.badlogic.gdx.backends.android.surfaceview.GdxEglConfigChooser20;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.GLU;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.WindowedMean;
import com.badlogic.gdx.utils.Array;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

public final class AndroidGraphics
  implements Graphics, GLSurfaceViewICS.Renderer
{
  AndroidApplication app;
  private Graphics.BufferFormat bufferFormat = new Graphics.BufferFormat(5, 6, 5, 0, 16, 0, 0, false);
  private final AndroidApplicationConfiguration config;
  volatile boolean created = false;
  private float deltaTime = 0.0F;
  private float density = 1.0F;
  volatile boolean destroy = false;
  EGLContext eglContext;
  String extensions;
  private int fps;
  private long frameStart = System.nanoTime();
  private int frames = 0;
  GLCommon gl;
  com.badlogic.gdx.graphics.GL10 gl10;
  com.badlogic.gdx.graphics.GL11 gl11;
  GL20 gl20;
  GLU glu;
  int height;
  private boolean isContextPreserved = false;
  private boolean isContinuous = true;
  private long lastFrameTime = System.nanoTime();
  private WindowedMean mean = new WindowedMean(5);
  volatile boolean pause = false;
  private float ppcX = 0.0F;
  private float ppcY = 0.0F;
  private float ppiX = 0.0F;
  private float ppiY = 0.0F;
  volatile boolean resume = false;
  volatile boolean running = false;
  Object synch = new Object();
  int[] value = new int[1];
  final View view;
  int width;

  public AndroidGraphics(AndroidApplication paramAndroidApplication, AndroidApplicationConfiguration paramAndroidApplicationConfiguration, ResolutionStrategy paramResolutionStrategy)
  {
    this.config = paramAndroidApplicationConfiguration;
    this.view = createGLSurfaceView(paramAndroidApplication, paramAndroidApplicationConfiguration.useGL20, paramResolutionStrategy);
    setPreserveContext(this.view);
    this.view.setFocusable(true);
    this.view.setFocusableInTouchMode(true);
    this.app = paramAndroidApplication;
  }

  private boolean checkGL20()
  {
    EGL10 localEGL10 = (EGL10)EGLContext.getEGL();
    EGLDisplay localEGLDisplay = localEGL10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
    localEGL10.eglInitialize(localEGLDisplay, new int[2]);
    int[] arrayOfInt1 = { 12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344 };
    EGLConfig[] arrayOfEGLConfig = new EGLConfig[10];
    int[] arrayOfInt2 = new int[1];
    localEGL10.eglChooseConfig(localEGLDisplay, arrayOfInt1, arrayOfEGLConfig, 10, arrayOfInt2);
    localEGL10.eglTerminate(localEGLDisplay);
    return arrayOfInt2[0] > 0;
  }

  private View createGLSurfaceView(Activity paramActivity, boolean paramBoolean, ResolutionStrategy paramResolutionStrategy)
  {
    if ((paramBoolean) && (checkGL20()))
    {
      GdxEglConfigChooser20 localGdxEglConfigChooser20 = getEglConfigChooser20();
      GLSurfaceView20 localGLSurfaceView20 = new GLSurfaceView20(paramActivity, paramResolutionStrategy);
      if (localGdxEglConfigChooser20 != null)
        localGLSurfaceView20.setEGLConfigChooser(localGdxEglConfigChooser20);
      while (true)
      {
        localGLSurfaceView20.setRenderer(this);
        return localGLSurfaceView20;
        localGLSurfaceView20.setEGLConfigChooser(this.config.r, this.config.g, this.config.b, this.config.a, this.config.depth, this.config.stencil);
      }
    }
    return null;
  }

  private int getAttrib(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt1, int paramInt2)
  {
    if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt1, this.value))
      paramInt2 = this.value[0];
    return paramInt2;
  }

  private GLSurfaceViewICS.EGLConfigChooser getEglConfigChooser()
  {
    return new GdxEglConfigChooser(this.config.r, this.config.g, this.config.b, this.config.a, this.config.depth, this.config.stencil, this.config.numSamples, this.config.useGL20);
  }

  private GdxEglConfigChooser20 getEglConfigChooser20()
  {
    return new GdxEglConfigChooser20(this.config.r, this.config.g, this.config.b, this.config.a, this.config.depth, this.config.stencil, this.config.numSamples, this.config.useGL20);
  }

  private static boolean isPowerOfTwo(int paramInt)
  {
    return (paramInt != 0) && ((paramInt & paramInt - 1) == 0);
  }

  private void logConfig(EGLConfig paramEGLConfig)
  {
    EGL10 localEGL10 = (EGL10)EGLContext.getEGL();
    EGLDisplay localEGLDisplay = localEGL10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
    int i = getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12324, 0);
    int j = getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12323, 0);
    int k = getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12322, 0);
    int m = getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12321, 0);
    int n = getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12325, 0);
    int i1 = getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12326, 0);
    int i2 = Math.max(getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12337, 0), getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12513, 0));
    if (getAttrib(localEGL10, localEGLDisplay, paramEGLConfig, 12513, 0) != 0);
    for (boolean bool = true; ; bool = false)
    {
      Gdx.app.log("AndroidGraphics", "framebuffer: (" + i + ", " + j + ", " + k + ", " + m + ")");
      Gdx.app.log("AndroidGraphics", "depthbuffer: (" + n + ")");
      Gdx.app.log("AndroidGraphics", "stencilbuffer: (" + i1 + ")");
      Gdx.app.log("AndroidGraphics", "samples: (" + i2 + ")");
      Gdx.app.log("AndroidGraphics", "coverage sampling: (" + bool + ")");
      this.bufferFormat = new Graphics.BufferFormat(i, j, k, m, n, i1, i2, bool);
      return;
    }
  }

  private void setPreserveContext(View paramView)
  {
    if ((paramView instanceof GLSurfaceViewICS))
    {
      ((GLSurfaceViewICS)paramView).setPreserveEGLContextOnPause(true);
      this.isContextPreserved = true;
    }
  }

  private void setupGL(javax.microedition.khronos.opengles.GL10 paramGL10)
  {
    if ((this.gl10 != null) || (this.gl20 != null))
      return;
    if ((this.view instanceof GLSurfaceView20))
    {
      this.gl20 = new AndroidGL20();
      this.gl = this.gl20;
    }
    while (true)
    {
      this.glu = new AndroidGLU();
      Gdx.gl = this.gl;
      Gdx.gl10 = this.gl10;
      Gdx.gl11 = this.gl11;
      Gdx.gl20 = this.gl20;
      Gdx.glu = this.glu;
      Gdx.app.log("AndroidGraphics", "OGL renderer: " + paramGL10.glGetString(7937));
      Gdx.app.log("AndroidGraphics", "OGL vendor: " + paramGL10.glGetString(7936));
      Gdx.app.log("AndroidGraphics", "OGL version: " + paramGL10.glGetString(7938));
      Gdx.app.log("AndroidGraphics", "OGL extensions: " + paramGL10.glGetString(7939));
      return;
      this.gl10 = new AndroidGL10(paramGL10);
      this.gl = this.gl10;
      if ((paramGL10 instanceof javax.microedition.khronos.opengles.GL11))
      {
        String str = paramGL10.glGetString(7937);
        if ((str != null) && (!str.toLowerCase().contains("pixelflinger")) && (!Build.MODEL.equals("MB200")) && (!Build.MODEL.equals("MB220")) && (!Build.MODEL.contains("Behold")))
        {
          this.gl11 = new AndroidGL11((javax.microedition.khronos.opengles.GL11)paramGL10);
          this.gl10 = this.gl11;
        }
      }
    }
  }

  private void updatePpi()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.app.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.ppiX = localDisplayMetrics.xdpi;
    this.ppiY = localDisplayMetrics.ydpi;
    this.ppcX = (localDisplayMetrics.xdpi / 2.54F);
    this.ppcY = (localDisplayMetrics.ydpi / 2.54F);
    this.density = localDisplayMetrics.density;
  }

  public final void clearManagedCaches()
  {
    Mesh.clearAllMeshes(this.app);
    Texture.clearAllTextures(this.app);
    ShaderProgram.clearAllShaderPrograms(this.app);
    FrameBuffer.clearAllFrameBuffers(this.app);
    Gdx.app.log("AndroidGraphics", Mesh.getManagedStatus());
    Gdx.app.log("AndroidGraphics", Texture.getManagedStatus());
    Gdx.app.log("AndroidGraphics", ShaderProgram.getManagedStatus());
    Gdx.app.log("AndroidGraphics", FrameBuffer.getManagedStatus());
  }

  final void destroy()
  {
    synchronized (this.synch)
    {
      this.running = false;
      this.destroy = true;
      while (true)
      {
        boolean bool = this.destroy;
        if (bool)
          try
          {
            this.synch.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            Gdx.app.log("AndroidGraphics", "waiting for destroy synchronization failed!");
          }
      }
    }
  }

  public final Graphics.BufferFormat getBufferFormat()
  {
    return this.bufferFormat;
  }

  public final float getDeltaTime()
  {
    if (this.mean.getMean() == 0.0F)
      return this.deltaTime;
    return this.mean.getMean();
  }

  public final float getDensity()
  {
    return this.density;
  }

  public final Graphics.DisplayMode getDesktopDisplayMode()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.app.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return new AndroidGraphics.AndroidDisplayMode(this, localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels, 0, 0);
  }

  public final Graphics.DisplayMode[] getDisplayModes()
  {
    Graphics.DisplayMode[] arrayOfDisplayMode = new Graphics.DisplayMode[1];
    arrayOfDisplayMode[0] = getDesktopDisplayMode();
    return arrayOfDisplayMode;
  }

  public final int getFramesPerSecond()
  {
    return this.fps;
  }

  public final com.badlogic.gdx.graphics.GL10 getGL10()
  {
    return this.gl10;
  }

  public final com.badlogic.gdx.graphics.GL11 getGL11()
  {
    return this.gl11;
  }

  public final GL20 getGL20()
  {
    return Gdx.gl20;
  }

  public final GLCommon getGLCommon()
  {
    return Gdx.gl;
  }

  public final GLU getGLU()
  {
    return this.glu;
  }

  public final int getHeight()
  {
    return this.height;
  }

  public final float getPpcX()
  {
    return this.ppcX;
  }

  public final float getPpcY()
  {
    return this.ppcY;
  }

  public final float getPpiX()
  {
    return this.ppiX;
  }

  public final float getPpiY()
  {
    return this.ppiY;
  }

  public final float getRawDeltaTime()
  {
    return this.deltaTime;
  }

  public final Graphics.GraphicsType getType()
  {
    return Graphics.GraphicsType.AndroidGL;
  }

  public final View getView()
  {
    return this.view;
  }

  public final int getWidth()
  {
    return this.width;
  }

  public final boolean isContinuousRendering()
  {
    return this.isContinuous;
  }

  public final boolean isFullscreen()
  {
    return true;
  }

  public final boolean isGL11Available()
  {
    return this.gl11 != null;
  }

  public final boolean isGL20Available()
  {
    return this.gl20 != null;
  }

  public final void onDrawFrame(javax.microedition.khronos.opengles.GL10 paramGL10)
  {
    long l = System.nanoTime();
    this.deltaTime = ((float)(l - this.lastFrameTime) / 1.0E+09F);
    this.lastFrameTime = l;
    this.mean.addValue(this.deltaTime);
    boolean bool2;
    boolean bool3;
    synchronized (this.synch)
    {
      boolean bool1 = this.running;
      bool2 = this.pause;
      bool3 = this.destroy;
      boolean bool4 = this.resume;
      if (this.resume)
        this.resume = false;
      if (this.pause)
      {
        this.pause = false;
        this.synch.notifyAll();
      }
      if (this.destroy)
      {
        this.destroy = false;
        this.synch.notifyAll();
      }
      if (bool4)
      {
        this.app.audio.resume();
        this.app.listener.resume();
        Gdx.app.log("AndroidGraphics", "resumed");
      }
      if (!bool1)
        break label314;
    }
    synchronized (this.app.runnables)
    {
      this.app.executedRunnables.clear();
      this.app.executedRunnables.addAll(this.app.runnables);
      this.app.runnables.clear();
      int i = 0;
      while (true)
      {
        int j = this.app.executedRunnables.size;
        if (i < j)
          try
          {
            ((Runnable)this.app.executedRunnables.get(i)).run();
            i++;
            continue;
            localObject2 = finally;
            throw localObject2;
          }
          catch (Throwable localThrowable)
          {
            while (true)
              localThrowable.printStackTrace();
          }
      }
    }
    this.app.input.processEvents();
    this.app.listener.render();
    label314: if (bool2)
    {
      this.app.listener.pause();
      this.app.audio.pause();
      Gdx.app.log("AndroidGraphics", "paused");
    }
    if (bool3)
    {
      this.app.listener.dispose();
      this.app.audio.dispose();
      this.app.audio = null;
      Gdx.app.log("AndroidGraphics", "destroyed");
    }
    if (l - this.frameStart > 1000000000L)
    {
      this.fps = this.frames;
      this.frames = 0;
      this.frameStart = l;
    }
    this.frames = (1 + this.frames);
  }

  public final void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 paramGL10, int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
    updatePpi();
    paramGL10.glViewport(0, 0, this.width, this.height);
    if (!this.created)
    {
      this.app.listener.create();
      this.created = true;
    }
    try
    {
      this.running = true;
      this.app.listener.resize(paramInt1, paramInt2);
      return;
    }
    finally
    {
    }
  }

  public final void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 paramGL10, EGLConfig paramEGLConfig)
  {
    this.eglContext = ((EGL10)EGLContext.getEGL()).eglGetCurrentContext();
    setupGL(paramGL10);
    logConfig(paramEGLConfig);
    updatePpi();
    if (!this.isContextPreserved)
    {
      Mesh.invalidateAllMeshes(this.app);
      Texture.invalidateAllTextures(this.app);
      ShaderProgram.invalidateAllShaderPrograms(this.app);
      FrameBuffer.invalidateAllFrameBuffers(this.app);
      SpriteBatch.invalidateAllSpriteBatches(this.app);
    }
    Gdx.app.log("AndroidGraphics", Mesh.getManagedStatus());
    Gdx.app.log("AndroidGraphics", Texture.getManagedStatus());
    Gdx.app.log("AndroidGraphics", ShaderProgram.getManagedStatus());
    Gdx.app.log("AndroidGraphics", FrameBuffer.getManagedStatus());
    Display localDisplay = this.app.getWindowManager().getDefaultDisplay();
    this.width = localDisplay.getWidth();
    this.height = localDisplay.getHeight();
    this.mean = new WindowedMean(5);
    this.lastFrameTime = System.nanoTime();
    paramGL10.glViewport(0, 0, this.width, this.height);
  }

  final void pause()
  {
    synchronized (this.synch)
    {
      if (!this.running)
        return;
      this.running = false;
      this.pause = true;
      while (true)
      {
        boolean bool = this.pause;
        if (bool)
          try
          {
            this.synch.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            Gdx.app.log("AndroidGraphics", "waiting for pause synchronization failed!");
          }
      }
    }
  }

  public final void requestRendering()
  {
    if (this.view != null)
    {
      if ((this.view instanceof GLSurfaceViewCupcake))
        ((GLSurfaceViewCupcake)this.view).requestRender();
      if ((this.view instanceof GLSurfaceViewICS))
        ((GLSurfaceViewICS)this.view).requestRender();
    }
  }

  final void resume()
  {
    synchronized (this.synch)
    {
      this.running = true;
      this.resume = true;
      return;
    }
  }

  public final void setContinuousRendering(boolean paramBoolean)
  {
    if (this.view != null)
    {
      this.isContinuous = paramBoolean;
      if (!paramBoolean)
        break label68;
    }
    label68: for (int i = 1; ; i = 0)
    {
      if ((this.view instanceof GLSurfaceViewCupcake))
        ((GLSurfaceViewCupcake)this.view).setRenderMode(i);
      if ((this.view instanceof GLSurfaceViewICS))
        ((GLSurfaceViewICS)this.view).setRenderMode(i);
      this.mean.clear();
      return;
    }
  }

  public final boolean setDisplayMode(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return false;
  }

  public final boolean setDisplayMode(Graphics.DisplayMode paramDisplayMode)
  {
    return false;
  }

  public final void setTitle(String paramString)
  {
  }

  public final void setVSync(boolean paramBoolean)
  {
  }

  public final boolean supportsDisplayModeChange()
  {
    return false;
  }

  public final boolean supportsExtension(String paramString)
  {
    if (this.extensions == null)
      this.extensions = Gdx.gl.glGetString(7939);
    return this.extensions.contains(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidGraphics
 * JD-Core Version:    0.6.2
 */