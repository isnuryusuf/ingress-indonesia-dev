.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kADRENO:Ljava/lang/String; = "Adreno"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1705
    const-string/jumbo v0, "GLThreadManager"

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1704
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x1

    .line 1788
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1794
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mGLESVersion:I

    .line 1795
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mGLESVersion:I

    if-lt v0, v2, :cond_0

    .line 1796
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1802
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1804
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1769
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v2, :cond_1

    .line 1770
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->checkGLESVersion()V

    .line 1771
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 1772
    iget v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1773
    const-string/jumbo v3, "Q3Dimension MSM7500 "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1775
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1777
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    .line 1773
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1777
    goto :goto_1

    .line 1769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V
    .locals 1
    .parameter

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-ne v0, p1, :cond_0

    .line 1751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    .line 1753
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1754
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1760
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1764
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->checkGLESVersion()V

    .line 1765
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1764
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)V
    .locals 1
    .parameter

    .prologue
    .line 1711
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #setter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->access$1202(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;Z)Z

    .line 1712
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-ne v0, p1, :cond_0

    .line 1713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    .line 1715
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1716
    monitor-exit p0

    return-void

    .line 1711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1726
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-nez v1, :cond_2

    .line 1727
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    .line 1728
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1742
    :cond_1
    :goto_0
    return v0

    .line 1731
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->checkGLESVersion()V

    .line 1732
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    if-eqz v0, :cond_3

    .line 1740
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$GLThread;->requestReleaseEglContextLocked()V

    .line 1742
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
