.class public Lcom/badlogic/gdx/assets/loaders/TileAtlasLoader$TileAtlasParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;",
        ">;"
    }
.end annotation


# instance fields
.field public inputDirectory:Ljava/lang/String;

.field public tileMapFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    return-void
.end method
