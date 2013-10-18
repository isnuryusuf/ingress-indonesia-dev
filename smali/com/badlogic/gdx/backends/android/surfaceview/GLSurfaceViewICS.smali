.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

.field private mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1818
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$1;)V

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mSizeChanged:Z

    .line 215
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->init()V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mSizeChanged:Z

    .line 224
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->init()V

    .line 225
    return-void
.end method

.method static synthetic access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLWrapper;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-eqz v0, :cond_0

    .line 1699
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1702
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 231
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 239
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 568
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 572
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mDetached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->getRenderMode()I

    move-result v0

    .line 577
    :goto_0
    new-instance v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

    invoke-direct {v2, p0, v3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    .line 578
    if-eq v0, v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->setRenderMode(I)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->start()V

    .line 583
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mDetached:Z

    .line 584
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->requestExitAndWait()V

    .line 599
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mDetached:Z

    .line 600
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 601
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->onPause()V

    .line 539
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->onResume()V

    .line 550
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->requestRender()V

    .line 504
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mDebugFlags:I

    .line 269
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$ComponentSizeChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->setEGLConfigChooser(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;)V

    .line 431
    return-void
.end method

.method public setEGLConfigChooser(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->checkRenderThreadState()V

    .line 393
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;

    .line 394
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter

    .prologue
    .line 411
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$SimpleEGLConfigChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->setEGLConfigChooser(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;)V

    .line 412
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->checkRenderThreadState()V

    .line 461
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextClientVersion:I

    .line 462
    return-void
.end method

.method public setEGLContextFactory(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->checkRenderThreadState()V

    .line 362
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;

    .line 363
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->checkRenderThreadState()V

    .line 376
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;

    .line 377
    return-void
.end method

.method public setGLWrapper(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLWrapper;

    .line 256
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mPreserveEGLContextOnPause:Z

    .line 299
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->setRenderMode(I)V

    .line 482
    return-void
.end method

.method public setRenderer(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->checkRenderThreadState()V

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$SimpleEGLConfigChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLConfigChooser;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$1;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 343
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultWindowSurfaceFactory;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$1;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;

    .line 345
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

    .line 346
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->start()V

    .line 348
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->onWindowResize(II)V

    .line 529
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->surfaceCreated()V

    .line 512
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->surfaceDestroyed()V

    .line 521
    return-void
.end method
