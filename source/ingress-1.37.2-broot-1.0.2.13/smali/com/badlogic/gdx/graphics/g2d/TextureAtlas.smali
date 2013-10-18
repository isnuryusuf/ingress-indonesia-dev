.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field static final indexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation
.end field

.field static final tuple:[Ljava/lang/String;


# instance fields
.field private final regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final textures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    .line 424
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->indexComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Ljava/util/HashSet;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 204
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Ljava/util/HashSet;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 234
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->load(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    .line 235
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 210
    return-void
.end method

.method private load(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V
    .locals 11
    .parameter

    .prologue
    .line 238
    new-instance v8, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 239
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 240
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->useMipMaps:Z

    invoke-direct {v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 243
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 244
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 250
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v8, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 247
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 248
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    goto :goto_1

    .line 254
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    .line 255
    iget v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->width:I

    .line 256
    iget v5, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->height:I

    .line 257
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->left:I

    iget v3, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->top:I

    iget-boolean v4, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    iget-boolean v10, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    if-eqz v10, :cond_2

    move v5, v7

    :cond_2
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 259
    iget v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 260
    iget-object v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 261
    iget v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetX:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 262
    iget v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetY:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 263
    iget v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 264
    iget v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 265
    iget-boolean v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    .line 266
    iget-object v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->splits:[I

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 267
    iget-object v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->pads:[I

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->pads:[I

    .line 268
    iget-boolean v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->flip:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v4, v7

    .line 257
    goto :goto_3

    .line 271
    :cond_5
    return-void
.end method

.method private newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 377
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-ne v0, v1, :cond_1

    .line 378
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 380
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    .line 381
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    .line 386
    :goto_0
    return-object v0

    .line 384
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_0

    .line 386
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    goto :goto_0
.end method

.method static readTuple(Ljava/io/BufferedReader;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 443
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 444
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 445
    if-ne v0, v5, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid line: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 447
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 448
    const/16 v3, 0x2c

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 449
    if-ne v3, v5, :cond_1

    .line 450
    if-nez v1, :cond_2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid line: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_1
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 454
    add-int/lit8 v0, v3, 0x1

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_2
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 457
    add-int/lit8 v0, v1, 0x1

    return v0
.end method

.method static readValue(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 436
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 437
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid line: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;IIII)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 277
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 278
    iput p5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 279
    iput p6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 280
    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 281
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 282
    return-object v0
.end method

.method public addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 287
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v4

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;IIII)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    return-object v0
.end method

.method public createPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_2

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 396
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 398
    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Region does not have ninepatch splits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    aget v2, v5, v2

    const/4 v3, 0x1

    aget v3, v5, v3

    const/4 v4, 0x2

    aget v4, v5, v4

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 408
    :goto_1
    return-object v0

    .line 394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 3
    .parameter

    .prologue
    .line 344
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    .line 346
    :goto_1
    return-object v0

    .line 344
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createSprite(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 354
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 356
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    if-ne v0, p2, :cond_0

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    .line 360
    :goto_1
    return-object v0

    .line 354
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createSprites()Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 334
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 336
    :cond_0
    return-object v2
.end method

.method public createSprites(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 369
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 371
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->newSprite(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 369
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 373
    :cond_1
    return-object v2
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    .line 420
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 422
    return-void
.end method

.method public findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 3
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 302
    :goto_1
    return-object v0

    .line 300
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findRegion(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 309
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 311
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    if-ne v3, p2, :cond_0

    .line 315
    :goto_1
    return-object v0

    .line 309
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 322
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 324
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 322
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 326
    :cond_1
    return-object v2
.end method

.method public getRegions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->regions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getTextures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->textures:Ljava/util/HashSet;

    return-object v0
.end method
