.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLContextFactory;


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;


# direct methods
.method private constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)V
    .locals 1
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    const/16 v0, 0x3098

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 756
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$200(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 759
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultContextFactory;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;->access$200(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 765
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    const-string/jumbo v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "display:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "eglDestroyContext failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/surfaceview/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_0
    return-void
.end method
