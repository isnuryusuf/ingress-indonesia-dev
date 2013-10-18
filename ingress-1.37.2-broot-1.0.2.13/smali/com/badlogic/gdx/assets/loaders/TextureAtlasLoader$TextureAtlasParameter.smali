.class public Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
        ">;"
    }
.end annotation


# instance fields
.field public flip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;->flip:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;->flip:Z

    .line 86
    iput-boolean p1, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;->flip:Z

    .line 87
    return-void
.end method
