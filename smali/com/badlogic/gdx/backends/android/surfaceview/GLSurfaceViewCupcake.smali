.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field static final sEglLock:Ljava/lang/Object;


# instance fields
.field private mDebugFlags:I

.field mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

.field mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;

.field private mHasSurface:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field final resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 884
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 171
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->init()V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 163
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 164
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->init()V

    .line 165
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 184
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 185
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    .line 187
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;->calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    move-result-object v0

    .line 177
    iget v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->width:I

    iget v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setMeasuredDimension(II)V

    .line 178
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onPause()V

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->requestExitAndWait()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    .line 357
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 366
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->start()V

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->setRenderMode(I)V

    .line 369
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mHasSurface:Z

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->surfaceCreated()V

    .line 372
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceHeight:I

    if-lez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceWidth:I

    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onWindowResize(II)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onResume()V

    .line 376
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 385
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->requestRender()V

    .line 320
    :cond_0
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mDebugFlags:I

    .line 208
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 283
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 2
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 259
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter

    .prologue
    .line 271
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 272
    return-void
.end method

.method public setGLWrapper(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;

    .line 199
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 298
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->setRenderMode(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 245
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onWindowResize(II)V

    .line 347
    :cond_0
    iput p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceWidth:I

    .line 348
    iput p4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceHeight:I

    .line 349
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->surfaceCreated()V

    .line 328
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mHasSurface:Z

    .line 329
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->surfaceDestroyed()V

    .line 338
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mHasSurface:Z

    .line 339
    return-void
.end method
