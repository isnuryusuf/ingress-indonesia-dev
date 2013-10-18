.class final Lcom/badlogic/gdx/backends/android/AndroidSound;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/audio/Sound;


# instance fields
.field final manager:Landroid/media/AudioManager;

.field final soundId:I

.field final soundPool:Landroid/media/SoundPool;

.field final streamIds:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    .line 33
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->manager:Landroid/media/AudioManager;

    .line 34
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    .line 35
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 40
    return-void
.end method

.method public final loop()J
    .locals 2

    .prologue
    .line 77
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidSound;->loop(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public final loop(F)J
    .locals 7
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 85
    int-to-long v0, v0

    return-wide v0
.end method

.method public final loop(FFF)J
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 127
    :cond_0
    cmpg-float v0, p3, v2

    if-gez v0, :cond_1

    .line 128
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v3, v0

    mul-float v3, p1, v0

    move v2, p1

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 134
    int-to-long v0, v0

    return-wide v0

    .line 129
    :cond_1
    cmpl-float v0, p3, v2

    if-lez v0, :cond_2

    .line 130
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v3, v0

    mul-float v2, p1, v0

    move v3, p1

    goto :goto_0

    :cond_2
    move v3, p1

    move v2, p1

    goto :goto_0
.end method

.method public final play()J
    .locals 2

    .prologue
    .line 44
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidSound;->play(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public final play(F)J
    .locals 7
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 52
    int-to-long v0, v0

    return-wide v0
.end method

.method public final play(FFF)J
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 112
    :cond_0
    cmpg-float v0, p3, v2

    if-gez v0, :cond_1

    .line 113
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v3, v0

    mul-float v3, p1, v0

    move v2, p1

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 119
    int-to-long v0, v0

    return-wide v0

    .line 114
    :cond_1
    cmpl-float v0, p3, v2

    if-lez v0, :cond_2

    .line 115
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v3, v0

    mul-float v2, p1, v0

    move v3, p1

    goto :goto_0

    :cond_2
    move v3, p1

    move v2, p1

    goto :goto_0
.end method

.method public final setLooping(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v2, p1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/media/SoundPool;->setLoop(II)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPan(JFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 95
    .line 98
    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    .line 99
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v2, v0

    mul-float/2addr v0, p4

    move v3, v0

    move v0, p4

    move p4, v3

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v2, p1

    invoke-virtual {v1, v2, v0, p4}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 105
    return-void

    .line 100
    :cond_0
    cmpl-float v0, p3, v1

    if-lez v0, :cond_1

    .line 101
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v2, v0

    mul-float/2addr v0, p4

    goto :goto_0

    :cond_1
    move v0, p4

    goto :goto_0
.end method

.method public final setPitch(JF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/media/SoundPool;->setRate(IF)V

    .line 68
    return-void
.end method

.method public final setVolume(JF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 73
    return-void
.end method

.method public final stop()V
    .locals 4

    .prologue
    .line 56
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public final stop(J)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 63
    return-void
.end method
