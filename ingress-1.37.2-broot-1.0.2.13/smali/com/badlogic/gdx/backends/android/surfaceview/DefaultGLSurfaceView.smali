.class public Lcom/badlogic/gdx/backends/android/surfaceview/DefaultGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field final resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/DefaultGLSurfaceView;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/DefaultGLSurfaceView;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/DefaultGLSurfaceView;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;->calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    move-result-object v0

    .line 40
    iget v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->width:I

    iget v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/DefaultGLSurfaceView;->setMeasuredDimension(II)V

    .line 41
    return-void
.end method
