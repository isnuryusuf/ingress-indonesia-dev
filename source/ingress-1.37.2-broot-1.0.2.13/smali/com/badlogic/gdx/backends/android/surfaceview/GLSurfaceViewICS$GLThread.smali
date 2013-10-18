.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

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

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1184
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    .line 1185
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1186
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWidth:I

    .line 1187
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHeight:I

    .line 1188
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestRender:Z

    .line 1189
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderMode:I

    .line 1190
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

    .line 1191
    return-void
.end method

.method static synthetic access$1202(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1183
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 15

    .prologue
    .line 1233
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglContext:Z

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    .line 1237
    const/4 v10, 0x0

    .line 1238
    const/4 v9, 0x0

    .line 1239
    const/4 v0, 0x0

    .line 1240
    const/4 v8, 0x0

    .line 1241
    const/4 v7, 0x0

    .line 1242
    const/4 v6, 0x0

    .line 1243
    const/4 v5, 0x0

    .line 1244
    const/4 v4, 0x0

    .line 1245
    const/4 v3, 0x0

    .line 1246
    const/4 v2, 0x0

    .line 1247
    const/4 v1, 0x0

    move-object v14, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v0

    move-object v0, v14

    .line 1250
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1252
    :goto_1
    :try_start_1
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mShouldExit:Z

    if-eqz v12, :cond_0

    .line 1253
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1465
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1466
    :try_start_2
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglSurfaceLocked()V

    .line 1467
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglContextLocked()V

    .line 1468
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1256
    :cond_0
    :try_start_3
    iget-object v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v14, v0

    move v0, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v14

    .line 1407
    :goto_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1409
    if-eqz v1, :cond_11

    .line 1410
    :try_start_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1411
    const/4 v1, 0x0

    move-object v14, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v0

    move-object v0, v14

    .line 1412
    goto :goto_0

    .line 1262
    :cond_1
    :try_start_5
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mPaused:Z

    iget-boolean v13, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestPaused:Z

    if-eq v12, v13, :cond_2

    .line 1263
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestPaused:Z

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mPaused:Z

    .line 1264
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1271
    :cond_2
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v12, :cond_3

    .line 1275
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglSurfaceLocked()V

    .line 1276
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglContextLocked()V

    .line 1277
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mShouldReleaseEglContext:Z

    .line 1278
    const/4 v3, 0x1

    .line 1282
    :cond_3
    if-eqz v7, :cond_4

    .line 1283
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglSurfaceLocked()V

    .line 1284
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglContextLocked()V

    .line 1285
    const/4 v7, 0x0

    .line 1289
    :cond_4
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_7

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mPaused:Z

    if-eqz v12, :cond_7

    .line 1293
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglSurfaceLocked()V

    .line 1294
    iget-object v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mPreserveEGLContextOnPause:Z
    invoke-static {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$900(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1295
    :cond_5
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglContextLocked()V

    .line 1300
    :cond_6
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1301
    iget-object v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    invoke-virtual {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->finish()V

    .line 1309
    :cond_7
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHasSurface:Z

    if-nez v12, :cond_9

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWaitingForSurface:Z

    if-nez v12, :cond_9

    .line 1313
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_8

    .line 1314
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglSurfaceLocked()V

    .line 1316
    :cond_8
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWaitingForSurface:Z

    .line 1317
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1321
    :cond_9
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_a

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWaitingForSurface:Z

    if-eqz v12, :cond_a

    .line 1325
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWaitingForSurface:Z

    .line 1326
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1329
    :cond_a
    if-eqz v4, :cond_b

    .line 1333
    const/4 v5, 0x0

    .line 1334
    const/4 v4, 0x0

    .line 1335
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderComplete:Z

    .line 1336
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1340
    :cond_b
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->readyToDraw()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1343
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglContext:Z

    if-nez v12, :cond_c

    .line 1344
    if-eqz v3, :cond_e

    .line 1345
    const/4 v3, 0x0

    .line 1360
    :cond_c
    :goto_4
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglContext:Z

    if-eqz v12, :cond_d

    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    if-nez v12, :cond_d

    .line 1361
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    .line 1362
    const/4 v8, 0x1

    .line 1363
    const/4 v6, 0x1

    .line 1366
    :cond_d
    iget-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_10

    .line 1367
    iget-object v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mSizeChanged:Z
    invoke-static {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1368
    const/4 v6, 0x1

    .line 1369
    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWidth:I

    .line 1370
    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHeight:I

    .line 1371
    const/4 v5, 0x1

    .line 1383
    iget-object v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    const/4 v13, 0x0

    #setter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mSizeChanged:Z
    invoke-static {v12, v13}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$1002(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Z)Z

    .line 1387
    :goto_5
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    move-object v14, v0

    move v0, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v14

    .line 1388
    goto/16 :goto_3

    .line 1346
    :cond_e
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v12

    if-eqz v12, :cond_c

    .line 1348
    :try_start_6
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    invoke-virtual {v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1353
    const/4 v9, 0x1

    :try_start_7
    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglContext:Z

    .line 1354
    const/4 v9, 0x1

    .line 1356
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 1407
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v11

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1469
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1466
    :try_start_9
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglSurfaceLocked()V

    .line 1467
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglContextLocked()V

    .line 1468
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    :try_start_a
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V

    .line 1351
    throw v0

    .line 1385
    :cond_f
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestRender:Z

    goto :goto_5

    .line 1405
    :cond_10
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1415
    :cond_11
    if-eqz v0, :cond_12

    .line 1419
    :try_start_b
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    invoke-virtual {v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1420
    if-eqz v0, :cond_16

    .line 1422
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1425
    const/4 v10, 0x0

    move v14, v10

    move-object v10, v0

    move v0, v14

    .line 1428
    :cond_12
    if-eqz v9, :cond_13

    .line 1432
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    iget-object v11, v11, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v9, v10, v11}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1433
    const/4 v9, 0x0

    .line 1436
    :cond_13
    if-eqz v7, :cond_14

    .line 1440
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    invoke-virtual {v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->purgeBuffers()V

    .line 1441
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

    invoke-interface {v7, v10, v3, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1442
    const/4 v7, 0x0

    .line 1448
    :cond_14
    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;

    invoke-interface {v11, v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1449
    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    invoke-virtual {v11}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->swap()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v11

    if-nez v11, :cond_15

    .line 1453
    const/4 v8, 0x1

    .line 1456
    :cond_15
    if-eqz v6, :cond_17

    .line 1457
    const/4 v5, 0x1

    move-object v14, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v0

    move-object v0, v14

    goto/16 :goto_0

    .line 1465
    :cond_16
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1466
    :try_start_c
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglSurfaceLocked()V

    .line 1467
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->stopEglContextLocked()V

    .line 1468
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_17
    move-object v14, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v0

    move-object v0, v14

    goto/16 :goto_0
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1477
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->finish()V

    .line 1228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglContext:Z

    .line 1229
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V

    .line 1231
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    .line 1217
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EglHelper;->destroySurface()V

    .line 1219
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1493
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1494
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderMode:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1495
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1540
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1544
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestPaused:Z

    .line 1545
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1546
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1551
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1556
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

.method public onResume()V
    .locals 2

    .prologue
    .line 1560
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1564
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestPaused:Z

    .line 1565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestRender:Z

    .line 1566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderComplete:Z

    .line 1567
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1568
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1573
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1575
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1578
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

.method public onWindowResize(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1582
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1583
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWidth:I

    .line 1584
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHeight:I

    .line 1585
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    const/4 v2, 0x1

    #setter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mSizeChanged:Z
    invoke-static {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$1002(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Z)Z

    .line 1586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestRender:Z

    .line 1587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderComplete:Z

    .line 1588
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1592
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$1100(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$1100(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1599
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1602
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
    .line 1631
    if-nez p1, :cond_0

    .line 1632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1635
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1637
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
    .line 1608
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1609
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mShouldExit:Z

    .line 1610
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1611
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1613
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1615
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1618
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

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mShouldReleaseEglContext:Z

    .line 1623
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1624
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1499
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1500
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRequestRender:Z

    .line 1501
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1502
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
    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->setName(Ljava/lang/String;)V

    .line 1201
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V

    .line 1207
    :goto_0
    return-void

    .line 1206
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 1483
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1484
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1486
    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1487
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mRenderMode:I

    .line 1488
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1489
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
    .line 1506
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1510
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHasSurface:Z

    .line 1511
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1512
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1514
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1516
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1519
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

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 1523
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1527
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mHasSurface:Z

    .line 1528
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1529
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1531
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1533
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1536
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
