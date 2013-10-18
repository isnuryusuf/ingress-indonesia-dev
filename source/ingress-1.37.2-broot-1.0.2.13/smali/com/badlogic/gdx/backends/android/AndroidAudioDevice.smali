.class Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/audio/AudioDevice;


# instance fields
.field private buffer:[S

.field private final isMono:Z

.field private final latency:I

.field private final track:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x3

    const/4 v4, 0x2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x400

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    .line 42
    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->isMono:Z

    .line 43
    if-eqz p2, :cond_0

    move v0, v4

    :goto_0
    invoke-static {p1, v0, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 45
    new-instance v0, Landroid/media/AudioTrack;

    if-eqz p2, :cond_1

    move v3, v4

    :goto_1
    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 48
    if-eqz p2, :cond_2

    :goto_2
    div-int v0, v5, v6

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->latency:I

    .line 49
    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0

    :cond_1
    move v3, v1

    .line 45
    goto :goto_1

    :cond_2
    move v6, v4

    .line 48
    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 55
    return-void
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->latency:I

    return v0
.end method

.method public isMono()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->isMono:Z

    return v0
.end method

.method public setVolume(F)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 95
    return-void
.end method

.method public writeSamples([FII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    const/high16 v1, -0x4080

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    array-length v0, v0

    array-length v3, p1

    if-ge v0, v3, :cond_0

    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    .line 73
    :cond_0
    add-int v5, p2, p3

    move v3, v4

    .line 74
    :goto_0
    if-ge p2, v5, :cond_3

    .line 75
    aget v0, p1, p2

    .line 76
    cmpl-float v6, v0, v2

    if-lez v6, :cond_1

    move v0, v2

    .line 77
    :cond_1
    cmpg-float v6, v0, v1

    if-gez v6, :cond_2

    move v0, v1

    .line 78
    :cond_2
    const v6, 0x46fffe00

    mul-float/2addr v0, v6

    float-to-int v0, v0

    int-to-short v0, v0

    .line 79
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    aput-short v0, v6, v3

    .line 74
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    invoke-virtual {v0, v1, v4, p3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    .line 83
    :goto_1
    if-eq v0, p3, :cond_4

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    sub-int v3, p3, v0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 85
    :cond_4
    return-void
.end method

.method public writeSamples([SII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    .line 65
    :goto_0
    if-eq v0, p3, :cond_0

    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
