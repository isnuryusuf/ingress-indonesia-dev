.class Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private flushBuilder()V
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1034
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->flushBuilder()V

    .line 1010
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->flushBuilder()V

    .line 1015
    return-void
.end method

.method public write([CII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1019
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1020
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1021
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->flushBuilder()V

    .line 1019
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1027
    :cond_1
    return-void
.end method
