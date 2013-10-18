.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 500
    if-eqz p1, :cond_0

    const/16 v5, 0x10

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;-><init>(IIIIII)V

    .line 503
    iput v7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;->mRedSize:I

    .line 504
    const/4 v0, 0x6

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;->mGreenSize:I

    .line 505
    iput v7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;->mBlueSize:I

    .line 506
    return-void

    :cond_0
    move v5, v4

    .line 500
    goto :goto_0
.end method
