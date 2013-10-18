.class public final Lcom/badlogic/gdx/backends/android/AndroidAudio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Audio;


# instance fields
.field private final manager:Landroid/media/AudioManager;

.field protected final musics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidMusic;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    .line 50
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->manager:Landroid/media/AudioManager;

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v1

    .line 156
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    .line 158
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 164
    :cond_1
    return-void
.end method

.method public final newAudioDevice(IZ)Lcom/badlogic/gdx/audio/AudioDevice;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;-><init>(IZ)V

    return-object v0
.end method

.method public final newAudioRecorder(IZ)Lcom/badlogic/gdx/audio/AudioRecorder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;-><init>(IZ)V

    return-object v0
.end method

.method public final newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;
    .locals 7
    .parameter

    .prologue
    .line 84
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    .line 86
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 88
    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_0

    .line 90
    :try_start_0
    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 91
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 92
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 93
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 94
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {v1, p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    .line 95
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 111
    :goto_0
    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error loading audio file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 105
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 107
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {v1, p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;-><init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V

    .line 108
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 109
    :try_start_4
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    .line 111
    goto :goto_0

    .line 110
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 112
    :catch_1
    move-exception v0

    .line 113
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error loading audio file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;
    .locals 6
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    .line 127
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_1

    .line 129
    :try_start_0
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 130
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidSound;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->manager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->soundPool:Landroid/media/SoundPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/backends/android/AndroidSound;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V

    .line 131
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error loading audio file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_1
    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidSound;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->manager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/backends/android/AndroidSound;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error loading audio file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final pause()V
    .locals 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    .line 57
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    .line 59
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 62
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    goto :goto_0

    .line 64
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected final resume()V
    .locals 4

    .prologue
    .line 68
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidMusic;->play()V

    .line 69
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
