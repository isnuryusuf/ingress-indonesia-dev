.class Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

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

.field mExited:Z

.field private mHasSurface:Z

.field private mHaveEgl:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    .line 682
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 683
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    .line 684
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    .line 685
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 686
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    .line 687
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 688
    return-void
.end method

.method private guardedRun()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 719
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    move-object v0, v9

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    move v6, v8

    move-object v10, v9

    .line 731
    :goto_0
    :try_start_0
    sget-object v11, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 733
    :goto_1
    :try_start_1
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v12, :cond_0

    .line 734
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 863
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 864
    :try_start_2
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 865
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 737
    :cond_0
    :try_start_3
    iget-object v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 738
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v13, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v13

    .line 820
    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 822
    if-eqz v1, :cond_b

    .line 823
    :try_start_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v0

    move-object v0, v9

    .line 825
    goto :goto_0

    .line 743
    :cond_1
    :try_start_5
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    if-eqz v12, :cond_2

    .line 747
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 751
    :cond_2
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    if-nez v12, :cond_4

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v12, :cond_4

    .line 755
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v12, :cond_3

    .line 756
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 758
    :cond_3
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 759
    sget-object v12, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 763
    :cond_4
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_5

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v12, :cond_5

    .line 767
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 768
    sget-object v12, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 771
    :cond_5
    if-eqz v3, :cond_6

    .line 774
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderComplete:Z

    .line 775
    sget-object v3, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    move v3, v8

    move v4, v8

    .line 779
    :cond_6
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    if-nez v12, :cond_a

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_a

    iget v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    if-lez v12, :cond_a

    iget v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    if-lez v12, :cond_a

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    if-nez v12, :cond_7

    iget v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    if-ne v12, v7, :cond_a

    .line 783
    :cond_7
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-nez v12, :cond_8

    sget-object v12, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v12, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 784
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    .line 785
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->start()V

    .line 788
    sget-object v5, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    move v5, v7

    move v6, v7

    .line 791
    :cond_8
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v12, :cond_a

    .line 792
    iget-object v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    iget-boolean v12, v12, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->mSizeChanged:Z

    if-eqz v12, :cond_9

    .line 794
    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    .line 795
    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    .line 805
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->mSizeChanged:Z

    move v4, v7

    move v5, v7

    .line 809
    :goto_3
    sget-object v12, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    move-object v13, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v13

    .line 810
    goto/16 :goto_2

    .line 807
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 820
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v11

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 863
    :catchall_2
    move-exception v0

    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 864
    :try_start_7
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 865
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 818
    :cond_a
    :try_start_8
    sget-object v12, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 828
    :cond_b
    if-eqz v0, :cond_c

    .line 829
    :try_start_9
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    invoke-virtual {v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 833
    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    iget-object v11, v11, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v0, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    move-object v10, v0

    move v0, v8

    .line 837
    :cond_c
    if-eqz v6, :cond_d

    .line 841
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v6, v10, v3, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    move v6, v8

    .line 848
    :cond_d
    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v11, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 849
    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v11}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->swap()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 855
    if-eqz v5, :cond_e

    move v4, v5

    move v5, v6

    move v6, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v7

    .line 856
    goto/16 :goto_0

    .line 865
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_e
    move-object v13, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v0

    move-object v0, v13

    goto/16 :goto_0
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    .line 712
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->destroySurface()V

    .line 713
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->finish()V

    .line 714
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    .line 716
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 880
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 881
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 920
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 921
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    .line 922
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 923
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 927
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 928
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 930
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 931
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 935
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 936
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    .line 937
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    .line 938
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->mSizeChanged:Z

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderComplete:Z

    .line 941
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 944
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 949
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 982
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 960
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 961
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mShouldExit:Z

    .line 962
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 963
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 965
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 967
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 886
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 887
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 888
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 889
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 698
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    .line 703
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 870
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 871
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 874
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    .line 875
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 876
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 893
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 897
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    .line 898
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 899
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 903
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 907
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    .line 908
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 909
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 911
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
