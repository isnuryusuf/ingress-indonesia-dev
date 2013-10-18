.class public Lcom/badlogic/gdx/assets/loaders/MusicLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/audio/Music;",
        "Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p2, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/audio/Music;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    return-object v0
.end method
