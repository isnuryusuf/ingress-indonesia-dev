.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$SimpleEGLConfigChooser;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$ComponentSizeChooser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 950
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$SimpleEGLConfigChooser;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;

    .line 951
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS$ComponentSizeChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewICS;IIIIII)V

    .line 952
    return-void

    :cond_0
    move v6, v5

    .line 951
    goto :goto_0
.end method
