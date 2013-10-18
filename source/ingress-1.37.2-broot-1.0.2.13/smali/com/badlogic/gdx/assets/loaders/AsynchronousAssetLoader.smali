.class public abstract Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.super Lcom/badlogic/gdx/assets/loaders/AssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P:",
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<TT;>;>",
        "Lcom/badlogic/gdx/assets/loaders/AssetLoader",
        "<TT;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 36
    return-void
.end method


# virtual methods
.method public abstract loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/assets/AssetManager;",
            "Ljava/lang/String;",
            "TP;)V"
        }
    .end annotation
.end method

.method public abstract loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/assets/AssetManager;",
            "Ljava/lang/String;",
            "TP;)TT;"
        }
    .end annotation
.end method
