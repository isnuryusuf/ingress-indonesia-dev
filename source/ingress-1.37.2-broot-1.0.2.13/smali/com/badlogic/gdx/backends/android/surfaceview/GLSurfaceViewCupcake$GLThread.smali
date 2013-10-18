.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private mDone:Z

.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSizeChanged:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 621
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;

    .line 622
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 623
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    .line 624
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    .line 625
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    .line 626
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    .line 627
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    .line 628
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 629
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 630
    const-string/jumbo v0, "GLThread"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->setName(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 828
    monitor-enter p0

    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :goto_0
    return-object v0

    .line 833
    :cond_0
    monitor-exit p0

    .line 834
    const/4 v0, 0x0

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private guardedRun()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 655
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    .line 656
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->start()V

    .line 658
    const/4 v0, 0x0

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 665
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    if-nez v4, :cond_3

    .line 673
    monitor-enter p0

    .line 675
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 676
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 678
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    if-eqz v4, :cond_8

    .line 679
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->finish()V

    move v5, v1

    .line 682
    :goto_2
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->needToWait()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 685
    :cond_2
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    if-eqz v4, :cond_4

    .line 686
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->finish()V

    .line 726
    return-void

    .line 688
    :cond_4
    :try_start_2
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 689
    iget v7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    .line 690
    iget v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    .line 691
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 692
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    .line 693
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    if-eqz v5, :cond_7

    .line 695
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->start()V

    move v2, v1

    move v4, v1

    .line 699
    :goto_3
    if-eqz v2, :cond_5

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v3, v0

    move v0, v1

    .line 703
    :cond_5
    if-eqz v4, :cond_9

    .line 704
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    move v2, v6

    .line 707
    :goto_4
    if-eqz v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, v3, v7, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    move v0, v6

    .line 711
    :cond_6
    if-lez v7, :cond_0

    if-lez v8, :cond_0

    .line 713
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v4, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 718
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->swap()Z

    goto :goto_0

    :cond_7
    move v10, v4

    move v4, v2

    move v2, v10

    goto :goto_3

    :cond_8
    move v5, v6

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_4
.end method

.method private needToWait()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 729
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    if-eqz v2, :cond_1

    .line 741
    :cond_0
    :goto_0
    return v0

    .line 733
    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHasSurface:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 734
    goto :goto_0

    .line 737
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    if-eq v2, v1, :cond_0

    :cond_4
    move v0, v1

    .line 741
    goto :goto_0
.end method


# virtual methods
.method public getRenderMode()I
    .locals 1

    .prologue
    .line 757
    monitor-enter p0

    .line 758
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 784
    monitor-enter p0

    .line 785
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    .line 786
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 790
    monitor-enter p0

    .line 791
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    .line 792
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 793
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 797
    monitor-enter p0

    .line 798
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    .line 799
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 801
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 802
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 822
    monitor-enter p0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 1

    .prologue
    .line 808
    monitor-enter p0

    .line 809
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    .line 810
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 811
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :try_start_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 817
    :goto_0
    return-void

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 815
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 763
    monitor-enter p0

    .line 764
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    .line 765
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 766
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 645
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :try_start_1
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->guardedRun()V

    .line 647
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    :goto_0
    return-void

    .line 647
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 651
    :catch_0
    move-exception v0

    goto :goto_0

    .line 650
    :catchall_1
    move-exception v0

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 745
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_1
    monitor-enter p0

    .line 749
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    .line 750
    if-ne p1, v0, :cond_2

    .line 751
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 753
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 1

    .prologue
    .line 770
    monitor-enter p0

    .line 771
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHasSurface:Z

    .line 772
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 773
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 1

    .prologue
    .line 777
    monitor-enter p0

    .line 778
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHasSurface:Z

    .line 779
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 780
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
