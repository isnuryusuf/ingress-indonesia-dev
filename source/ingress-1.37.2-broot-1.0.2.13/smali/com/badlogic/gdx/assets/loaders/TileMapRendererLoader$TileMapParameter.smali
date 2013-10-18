.class public Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;",
        ">;"
    }
.end annotation


# instance fields
.field public final imageDirectory:Ljava/lang/String;

.field public final tilesPerBlockX:I

.field public final tilesPerBlockY:I

.field public final unitsPerTileX:F

.field public final unitsPerTileY:F


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->imageDirectory:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->tilesPerBlockX:I

    .line 43
    iput p3, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->tilesPerBlockY:I

    .line 44
    iput v0, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->unitsPerTileX:F

    .line 45
    iput v0, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->unitsPerTileY:F

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->imageDirectory:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->tilesPerBlockX:I

    .line 52
    iput p3, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->tilesPerBlockY:I

    .line 53
    iput p4, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->unitsPerTileX:F

    .line 54
    iput p5, p0, Lcom/badlogic/gdx/assets/loaders/TileMapRendererLoader$TileMapParameter;->unitsPerTileY:F

    .line 55
    return-void
.end method
