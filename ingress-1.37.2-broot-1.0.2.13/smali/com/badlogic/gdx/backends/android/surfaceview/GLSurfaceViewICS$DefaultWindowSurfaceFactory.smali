.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$EGLWindowSurfaceFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$1;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$DefaultWindowSurfaceFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 797
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 798
    return-void
.end method
