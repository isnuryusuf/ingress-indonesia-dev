.class final Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const v1, 0x7fffffff

    const/4 v3, -0x1

    .line 426
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    .line 427
    if-ne v0, v3, :cond_0

    move v0, v1

    .line 428
    :cond_0
    iget v2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    .line 429
    if-ne v2, v3, :cond_1

    .line 430
    :goto_0
    sub-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 424
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;->compare(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)I

    move-result v0

    return v0
.end method
