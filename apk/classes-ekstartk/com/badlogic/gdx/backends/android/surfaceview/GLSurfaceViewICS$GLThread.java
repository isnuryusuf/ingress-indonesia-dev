package com.badlogic.gdx.backends.android.surfaceview;

import java.util.ArrayList;

class GLSurfaceViewICS$GLThread extends Thread
{
  private GLSurfaceViewICS.EglHelper mEglHelper;
  private ArrayList<Runnable> mEventQueue = new ArrayList();
  private boolean mExited;
  private boolean mHasSurface;
  private boolean mHaveEglContext;
  private boolean mHaveEglSurface;
  private int mHeight = 0;
  private boolean mPaused;
  private boolean mRenderComplete;
  private int mRenderMode = 1;
  private GLSurfaceViewICS.Renderer mRenderer;
  private boolean mRequestPaused;
  private boolean mRequestRender = true;
  private boolean mShouldExit;
  private boolean mShouldReleaseEglContext;
  private boolean mWaitingForSurface;
  private int mWidth = 0;

  GLSurfaceViewICS$GLThread(GLSurfaceViewICS paramGLSurfaceViewICS, GLSurfaceViewICS.Renderer paramRenderer)
  {
    this.mRenderer = paramRenderer;
  }

  // ERROR //
  private void guardedRun()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 60	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper
    //   4: dup
    //   5: aload_0
    //   6: getfield 33	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:this$0	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;
    //   9: invokespecial 63	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper:<init>	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)V
    //   12: putfield 65	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEglHelper	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;
    //   15: aload_0
    //   16: iconst_0
    //   17: putfield 67	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglContext	Z
    //   20: aload_0
    //   21: iconst_0
    //   22: putfield 69	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglSurface	Z
    //   25: aconst_null
    //   26: astore_1
    //   27: iconst_0
    //   28: istore_2
    //   29: iconst_0
    //   30: istore_3
    //   31: iconst_0
    //   32: istore 4
    //   34: iconst_0
    //   35: istore 5
    //   37: iconst_0
    //   38: istore 6
    //   40: iconst_0
    //   41: istore 7
    //   43: iconst_0
    //   44: istore 8
    //   46: iconst_0
    //   47: istore 9
    //   49: iconst_0
    //   50: istore 10
    //   52: aconst_null
    //   53: astore 11
    //   55: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   58: astore 15
    //   60: aload 15
    //   62: monitorenter
    //   63: aload_0
    //   64: getfield 77	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mShouldExit	Z
    //   67: ifeq +34 -> 101
    //   70: aload 15
    //   72: monitorexit
    //   73: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   76: astore 37
    //   78: aload 37
    //   80: monitorenter
    //   81: aload_0
    //   82: invokespecial 80	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglSurfaceLocked	()V
    //   85: aload_0
    //   86: invokespecial 83	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglContextLocked	()V
    //   89: aload 37
    //   91: monitorexit
    //   92: return
    //   93: astore 38
    //   95: aload 37
    //   97: monitorexit
    //   98: aload 38
    //   100: athrow
    //   101: aload_0
    //   102: getfield 41	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEventQueue	Ljava/util/ArrayList;
    //   105: invokevirtual 87	java/util/ArrayList:isEmpty	()Z
    //   108: ifne +103 -> 211
    //   111: aload_0
    //   112: getfield 41	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEventQueue	Ljava/util/ArrayList;
    //   115: iconst_0
    //   116: invokevirtual 91	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   119: checkcast 93	java/lang/Runnable
    //   122: astore 36
    //   124: iload 10
    //   126: istore 21
    //   128: iload 9
    //   130: istore 22
    //   132: iload 8
    //   134: istore 23
    //   136: iload 7
    //   138: istore 24
    //   140: iload 6
    //   142: istore 25
    //   144: iload 5
    //   146: istore 26
    //   148: iload 4
    //   150: istore 27
    //   152: iload_3
    //   153: istore 28
    //   155: aload 36
    //   157: astore 29
    //   159: aload 15
    //   161: monitorexit
    //   162: aload 29
    //   164: ifnull +487 -> 651
    //   167: aload 29
    //   169: invokeinterface 96 1 0
    //   174: iload 28
    //   176: istore_3
    //   177: iload 27
    //   179: istore 4
    //   181: iload 26
    //   183: istore 5
    //   185: iload 25
    //   187: istore 6
    //   189: iload 24
    //   191: istore 7
    //   193: iload 23
    //   195: istore 8
    //   197: iload 22
    //   199: istore 9
    //   201: iload 21
    //   203: istore 10
    //   205: aconst_null
    //   206: astore 11
    //   208: goto -153 -> 55
    //   211: aload_0
    //   212: getfield 98	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mPaused	Z
    //   215: aload_0
    //   216: getfield 100	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mRequestPaused	Z
    //   219: if_icmpeq +17 -> 236
    //   222: aload_0
    //   223: aload_0
    //   224: getfield 100	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mRequestPaused	Z
    //   227: putfield 98	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mPaused	Z
    //   230: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   233: invokevirtual 105	java/lang/Object:notifyAll	()V
    //   236: aload_0
    //   237: getfield 107	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mShouldReleaseEglContext	Z
    //   240: ifeq +19 -> 259
    //   243: aload_0
    //   244: invokespecial 80	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglSurfaceLocked	()V
    //   247: aload_0
    //   248: invokespecial 83	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglContextLocked	()V
    //   251: aload_0
    //   252: iconst_0
    //   253: putfield 107	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mShouldReleaseEglContext	Z
    //   256: iconst_1
    //   257: istore 5
    //   259: iload 9
    //   261: ifeq +14 -> 275
    //   264: aload_0
    //   265: invokespecial 80	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglSurfaceLocked	()V
    //   268: aload_0
    //   269: invokespecial 83	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglContextLocked	()V
    //   272: iconst_0
    //   273: istore 9
    //   275: aload_0
    //   276: getfield 69	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglSurface	Z
    //   279: ifeq +53 -> 332
    //   282: aload_0
    //   283: getfield 98	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mPaused	Z
    //   286: ifeq +46 -> 332
    //   289: aload_0
    //   290: invokespecial 80	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglSurfaceLocked	()V
    //   293: aload_0
    //   294: getfield 33	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:this$0	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;
    //   297: invokestatic 111	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$900	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Z
    //   300: ifeq +12 -> 312
    //   303: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   306: invokevirtual 116	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:shouldReleaseEGLContextWhenPausing	()Z
    //   309: ifeq +7 -> 316
    //   312: aload_0
    //   313: invokespecial 83	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglContextLocked	()V
    //   316: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   319: invokevirtual 119	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:shouldTerminateEGLWhenPausing	()Z
    //   322: ifeq +10 -> 332
    //   325: aload_0
    //   326: getfield 65	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEglHelper	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;
    //   329: invokevirtual 122	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper:finish	()V
    //   332: aload_0
    //   333: getfield 124	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHasSurface	Z
    //   336: ifne +32 -> 368
    //   339: aload_0
    //   340: getfield 126	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mWaitingForSurface	Z
    //   343: ifne +25 -> 368
    //   346: aload_0
    //   347: getfield 69	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglSurface	Z
    //   350: ifeq +7 -> 357
    //   353: aload_0
    //   354: invokespecial 80	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglSurfaceLocked	()V
    //   357: aload_0
    //   358: iconst_1
    //   359: putfield 126	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mWaitingForSurface	Z
    //   362: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   365: invokevirtual 105	java/lang/Object:notifyAll	()V
    //   368: aload_0
    //   369: getfield 124	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHasSurface	Z
    //   372: ifeq +21 -> 393
    //   375: aload_0
    //   376: getfield 126	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mWaitingForSurface	Z
    //   379: ifeq +14 -> 393
    //   382: aload_0
    //   383: iconst_0
    //   384: putfield 126	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mWaitingForSurface	Z
    //   387: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   390: invokevirtual 105	java/lang/Object:notifyAll	()V
    //   393: iload 6
    //   395: ifeq +20 -> 415
    //   398: iconst_0
    //   399: istore 7
    //   401: iconst_0
    //   402: istore 6
    //   404: aload_0
    //   405: iconst_1
    //   406: putfield 128	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mRenderComplete	Z
    //   409: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   412: invokevirtual 105	java/lang/Object:notifyAll	()V
    //   415: aload_0
    //   416: invokespecial 131	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:readyToDraw	()Z
    //   419: ifeq +223 -> 642
    //   422: aload_0
    //   423: getfield 67	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglContext	Z
    //   426: ifne +11 -> 437
    //   429: iload 5
    //   431: ifeq +122 -> 553
    //   434: iconst_0
    //   435: istore 5
    //   437: aload_0
    //   438: getfield 67	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglContext	Z
    //   441: ifeq +21 -> 462
    //   444: aload_0
    //   445: getfield 69	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglSurface	Z
    //   448: ifne +14 -> 462
    //   451: aload_0
    //   452: iconst_1
    //   453: putfield 69	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglSurface	Z
    //   456: iconst_1
    //   457: istore 10
    //   459: iconst_1
    //   460: istore 8
    //   462: aload_0
    //   463: getfield 69	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglSurface	Z
    //   466: ifeq +176 -> 642
    //   469: aload_0
    //   470: getfield 33	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:this$0	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;
    //   473: invokestatic 134	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$1000	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Z
    //   476: ifeq +158 -> 634
    //   479: iconst_1
    //   480: istore 8
    //   482: aload_0
    //   483: getfield 43	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mWidth	I
    //   486: istore 4
    //   488: aload_0
    //   489: getfield 45	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHeight	I
    //   492: istore_3
    //   493: iconst_1
    //   494: istore 7
    //   496: aload_0
    //   497: getfield 33	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:this$0	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;
    //   500: iconst_0
    //   501: invokestatic 138	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$1002	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Z)Z
    //   504: pop
    //   505: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   508: invokevirtual 105	java/lang/Object:notifyAll	()V
    //   511: aload 11
    //   513: astore 20
    //   515: iload 10
    //   517: istore 21
    //   519: iload 9
    //   521: istore 22
    //   523: iload 8
    //   525: istore 23
    //   527: iload 7
    //   529: istore 24
    //   531: iload 6
    //   533: istore 25
    //   535: iload 5
    //   537: istore 26
    //   539: iload 4
    //   541: istore 27
    //   543: iload_3
    //   544: istore 28
    //   546: aload 20
    //   548: astore 29
    //   550: goto -391 -> 159
    //   553: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   556: aload_0
    //   557: invokevirtual 142	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:tryAcquireEglContextLocked	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)Z
    //   560: istore 17
    //   562: iload 17
    //   564: ifeq -127 -> 437
    //   567: aload_0
    //   568: getfield 65	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEglHelper	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;
    //   571: invokevirtual 145	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper:start	()V
    //   574: aload_0
    //   575: iconst_1
    //   576: putfield 67	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mHaveEglContext	Z
    //   579: iconst_1
    //   580: istore_2
    //   581: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   584: invokevirtual 105	java/lang/Object:notifyAll	()V
    //   587: goto -150 -> 437
    //   590: astore 16
    //   592: aload 15
    //   594: monitorexit
    //   595: aload 16
    //   597: athrow
    //   598: astore 12
    //   600: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   603: astore 13
    //   605: aload 13
    //   607: monitorenter
    //   608: aload_0
    //   609: invokespecial 80	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglSurfaceLocked	()V
    //   612: aload_0
    //   613: invokespecial 83	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglContextLocked	()V
    //   616: aload 13
    //   618: monitorexit
    //   619: aload 12
    //   621: athrow
    //   622: astore 18
    //   624: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   627: aload_0
    //   628: invokevirtual 149	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:releaseEglContextLocked	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V
    //   631: aload 18
    //   633: athrow
    //   634: aload_0
    //   635: iconst_0
    //   636: putfield 47	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mRequestRender	Z
    //   639: goto -134 -> 505
    //   642: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   645: invokevirtual 152	java/lang/Object:wait	()V
    //   648: goto -585 -> 63
    //   651: iload 21
    //   653: ifeq +41 -> 694
    //   656: aload_0
    //   657: getfield 65	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEglHelper	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;
    //   660: aload_0
    //   661: getfield 33	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:this$0	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;
    //   664: invokevirtual 156	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:getHolder	()Landroid/view/SurfaceHolder;
    //   667: invokevirtual 160	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper:createSurface	(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    //   670: checkcast 162	javax/microedition/khronos/opengles/GL10
    //   673: astore 33
    //   675: aload 33
    //   677: ifnull +142 -> 819
    //   680: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   683: aload 33
    //   685: invokevirtual 166	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:checkGLDriver	(Ljavax/microedition/khronos/opengles/GL10;)V
    //   688: aload 33
    //   690: astore_1
    //   691: iconst_0
    //   692: istore 21
    //   694: iload_2
    //   695: ifeq +22 -> 717
    //   698: aload_0
    //   699: getfield 51	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mRenderer	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;
    //   702: aload_1
    //   703: aload_0
    //   704: getfield 65	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEglHelper	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;
    //   707: getfield 170	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper:mEglConfig	Ljavax/microedition/khronos/egl/EGLConfig;
    //   710: invokeinterface 176 3 0
    //   715: iconst_0
    //   716: istore_2
    //   717: iload 23
    //   719: ifeq +27 -> 746
    //   722: aload_0
    //   723: getfield 65	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEglHelper	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;
    //   726: invokevirtual 179	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper:purgeBuffers	()V
    //   729: aload_0
    //   730: getfield 51	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mRenderer	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;
    //   733: aload_1
    //   734: iload 27
    //   736: iload 28
    //   738: invokeinterface 183 4 0
    //   743: iconst_0
    //   744: istore 23
    //   746: aload_0
    //   747: getfield 51	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mRenderer	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;
    //   750: aload_1
    //   751: invokeinterface 186 2 0
    //   756: aload_0
    //   757: getfield 65	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:mEglHelper	Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;
    //   760: invokevirtual 189	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper:swap	()Z
    //   763: istore 30
    //   765: iload 30
    //   767: ifne +6 -> 773
    //   770: iconst_1
    //   771: istore 22
    //   773: iload 24
    //   775: ifeq +80 -> 855
    //   778: aload 29
    //   780: astore 32
    //   782: iload 28
    //   784: istore_3
    //   785: iload 27
    //   787: istore 4
    //   789: iload 26
    //   791: istore 5
    //   793: iconst_1
    //   794: istore 6
    //   796: iload 24
    //   798: istore 7
    //   800: iload 23
    //   802: istore 8
    //   804: iload 22
    //   806: istore 9
    //   808: iload 21
    //   810: istore 10
    //   812: aload 32
    //   814: astore 11
    //   816: goto -761 -> 55
    //   819: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   822: astore 34
    //   824: aload 34
    //   826: monitorenter
    //   827: aload_0
    //   828: invokespecial 80	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglSurfaceLocked	()V
    //   831: aload_0
    //   832: invokespecial 83	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:stopEglContextLocked	()V
    //   835: aload 34
    //   837: monitorexit
    //   838: return
    //   839: astore 35
    //   841: aload 34
    //   843: monitorexit
    //   844: aload 35
    //   846: athrow
    //   847: astore 14
    //   849: aload 13
    //   851: monitorexit
    //   852: aload 14
    //   854: athrow
    //   855: aload 29
    //   857: astore 31
    //   859: iload 28
    //   861: istore_3
    //   862: iload 27
    //   864: istore 4
    //   866: iload 26
    //   868: istore 5
    //   870: iload 25
    //   872: istore 6
    //   874: iload 24
    //   876: istore 7
    //   878: iload 23
    //   880: istore 8
    //   882: iload 22
    //   884: istore 9
    //   886: iload 21
    //   888: istore 10
    //   890: aload 31
    //   892: astore 11
    //   894: goto -839 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   81	92	93	finally
    //   63	73	590	finally
    //   101	124	590	finally
    //   159	162	590	finally
    //   211	236	590	finally
    //   236	256	590	finally
    //   264	272	590	finally
    //   275	312	590	finally
    //   312	316	590	finally
    //   316	332	590	finally
    //   332	357	590	finally
    //   357	368	590	finally
    //   368	393	590	finally
    //   404	415	590	finally
    //   415	429	590	finally
    //   437	456	590	finally
    //   462	479	590	finally
    //   482	493	590	finally
    //   496	505	590	finally
    //   505	511	590	finally
    //   553	562	590	finally
    //   567	574	590	finally
    //   574	579	590	finally
    //   581	587	590	finally
    //   624	634	590	finally
    //   634	639	590	finally
    //   642	648	590	finally
    //   55	63	598	finally
    //   167	174	598	finally
    //   592	598	598	finally
    //   656	675	598	finally
    //   680	688	598	finally
    //   698	715	598	finally
    //   722	743	598	finally
    //   746	765	598	finally
    //   567	574	622	java/lang/RuntimeException
    //   827	838	839	finally
    //   608	619	847	finally
  }

  private boolean readyToDraw()
  {
    return (!this.mPaused) && (this.mHasSurface) && (this.mWidth > 0) && (this.mHeight > 0) && ((this.mRequestRender) || (this.mRenderMode == 1));
  }

  private void stopEglContextLocked()
  {
    if (this.mHaveEglContext)
    {
      this.mEglHelper.finish();
      this.mHaveEglContext = false;
      GLSurfaceViewICS.access$800().releaseEglContextLocked(this);
    }
  }

  private void stopEglSurfaceLocked()
  {
    if (this.mHaveEglSurface)
    {
      this.mHaveEglSurface = false;
      this.mEglHelper.destroySurface();
    }
  }

  public boolean ableToDraw()
  {
    return (this.mHaveEglContext) && (this.mHaveEglSurface) && (readyToDraw());
  }

  public int getRenderMode()
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      int i = this.mRenderMode;
      return i;
    }
  }

  public void onPause()
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mRequestPaused = true;
      GLSurfaceViewICS.access$800().notifyAll();
      while (true)
        if (!this.mExited)
        {
          boolean bool = this.mPaused;
          if (!bool)
            try
            {
              GLSurfaceViewICS.access$800().wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
        }
    }
  }

  public void onResume()
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mRequestPaused = false;
      this.mRequestRender = true;
      this.mRenderComplete = false;
      GLSurfaceViewICS.access$800().notifyAll();
      while (true)
        if ((!this.mExited) && (this.mPaused))
        {
          boolean bool = this.mRenderComplete;
          if (!bool)
            try
            {
              GLSurfaceViewICS.access$800().wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
        }
    }
  }

  public void onWindowResize(int paramInt1, int paramInt2)
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mWidth = paramInt1;
      this.mHeight = paramInt2;
      GLSurfaceViewICS.access$1002(this.this$0, true);
      this.mRequestRender = true;
      this.mRenderComplete = false;
      GLSurfaceViewICS.access$800().notifyAll();
      while (true)
        if ((!this.mExited) && (!this.mPaused) && (!this.mRenderComplete) && (GLSurfaceViewICS.access$1100(this.this$0) != null))
        {
          boolean bool = GLSurfaceViewICS.access$1100(this.this$0).ableToDraw();
          if (bool)
            try
            {
              GLSurfaceViewICS.access$800().wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
        }
    }
  }

  public void queueEvent(Runnable paramRunnable)
  {
    if (paramRunnable == null)
      throw new IllegalArgumentException("r must not be null");
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mEventQueue.add(paramRunnable);
      GLSurfaceViewICS.access$800().notifyAll();
      return;
    }
  }

  public void requestExitAndWait()
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mShouldExit = true;
      GLSurfaceViewICS.access$800().notifyAll();
      while (true)
      {
        boolean bool = this.mExited;
        if (!bool)
          try
          {
            GLSurfaceViewICS.access$800().wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            Thread.currentThread().interrupt();
          }
      }
    }
  }

  public void requestReleaseEglContextLocked()
  {
    this.mShouldReleaseEglContext = true;
    GLSurfaceViewICS.access$800().notifyAll();
  }

  public void requestRender()
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mRequestRender = true;
      GLSurfaceViewICS.access$800().notifyAll();
      return;
    }
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 232	java/lang/StringBuilder
    //   4: dup
    //   5: ldc 234
    //   7: invokespecial 235	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   10: aload_0
    //   11: invokevirtual 239	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:getId	()J
    //   14: invokevirtual 243	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   17: invokevirtual 247	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   20: invokevirtual 250	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:setName	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: invokespecial 252	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread:guardedRun	()V
    //   27: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   30: aload_0
    //   31: invokevirtual 255	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:threadExiting	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V
    //   34: return
    //   35: astore_2
    //   36: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   39: aload_0
    //   40: invokevirtual 255	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:threadExiting	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V
    //   43: return
    //   44: astore_1
    //   45: invokestatic 75	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS:access$800	()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    //   48: aload_0
    //   49: invokevirtual 255	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager:threadExiting	(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V
    //   52: aload_1
    //   53: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   23	27	35	java/lang/InterruptedException
    //   23	27	44	finally
  }

  public void setRenderMode(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 1))
      throw new IllegalArgumentException("renderMode");
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mRenderMode = paramInt;
      GLSurfaceViewICS.access$800().notifyAll();
      return;
    }
  }

  public void surfaceCreated()
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mHasSurface = true;
      GLSurfaceViewICS.access$800().notifyAll();
      while (true)
        if (this.mWaitingForSurface)
        {
          boolean bool = this.mExited;
          if (!bool)
            try
            {
              GLSurfaceViewICS.access$800().wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
        }
    }
  }

  public void surfaceDestroyed()
  {
    synchronized (GLSurfaceViewICS.access$800())
    {
      this.mHasSurface = false;
      GLSurfaceViewICS.access$800().notifyAll();
      while (true)
        if (!this.mWaitingForSurface)
        {
          boolean bool = this.mExited;
          if (!bool)
            try
            {
              GLSurfaceViewICS.access$800().wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
        }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.GLThread
 * JD-Core Version:    0.6.2
 */