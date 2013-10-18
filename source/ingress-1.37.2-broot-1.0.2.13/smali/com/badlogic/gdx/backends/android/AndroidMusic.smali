.class public Lcom/badlogic/gdx/backends/android/AndroidMusic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music;


# instance fields
.field private final audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field private isPrepared:Z

.field private player:Landroid/media/MediaPlayer;

.field protected wasPlaying:Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    .line 33
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 34
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 35
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v1

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 44
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string/jumbo v1, "AndroidMusic"

    const-string/jumbo v2, "error while disposing AndroidMusic instance, non-fatal"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v1

    .line 48
    :try_start_3
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 50
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v1

    .line 48
    :try_start_4
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPosition()F
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 66
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 88
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 93
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 101
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 102
    return-void
.end method
