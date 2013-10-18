.class final Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;
.super Lcom/badlogic/gdx/utils/XmlReader;
.source "SourceFile"


# instance fields
.field awaitingData:Z

.field col:I

.field compression:Ljava/lang/String;

.field currBranch:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

.field currLayerHeight:I

.field currLayerWidth:I

.field currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

.field currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

.field currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

.field currTile:I

.field currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

.field data:[B

.field dataCounter:I

.field dataString:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

.field polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

.field row:I

.field final synthetic val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    .line 60
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    .line 62
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    .line 91
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    return-void
.end method

.method private arrangeData()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 473
    move v0, v1

    move v2, v1

    .line 474
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 475
    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v3, v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v4, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v4, v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v4, v6

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v4, v4, v7

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, v7, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v2, v6

    aput v2, v5, v3

    .line 475
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    return-void
.end method

.method private fromCSV()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 464
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-direct {v3, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 465
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 466
    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v2, v4, :cond_0

    .line 467
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v4, v4, v0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 465
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_1
    return-void
.end method

.method private putPolyLine(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;)V
    .locals 2
    .parameter

    .prologue
    .line 419
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    const-string/jumbo v0, "polyline"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->polyline:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_2
    const-string/jumbo v0, "polygon"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->polygon:Ljava/lang/String;

    goto :goto_0
.end method

.method private putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V
    .locals 4
    .parameter

    .prologue
    .line 437
    const-string/jumbo v0, "tile"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTile:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->setTileProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string/jumbo v0, "map"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    :cond_2
    const-string/jumbo v0, "layer"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 452
    :cond_3
    const-string/jumbo v0, "objectgroup"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    :cond_4
    const-string/jumbo v0, "object"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private unGZip()V
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 503
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    array-length v2, v2

    invoke-direct {v3, v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    new-array v4, v4, [B

    move v0, v1

    .line 512
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 513
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v2, v5, :cond_0

    .line 515
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_1
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    .line 516
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error Reading TMX Layer Data - IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :catch_1
    move-exception v0

    .line 519
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v2, "Error Reading TMX Layer Data."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 512
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    return-void
.end method

.method private unZlib()V
    .locals 8

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 484
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 485
    new-array v4, v0, [B

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    array-length v2, v2

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    move v0, v1

    .line 489
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 490
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v2, v5, :cond_0

    .line 492
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 493
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v2
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v2, "Error Reading TMX Layer Data."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 489
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    return-void
.end method


# virtual methods
.method protected final attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "layer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    const-string/jumbo v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    .line 151
    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    .line 154
    :cond_1
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->name:Ljava/lang/String;

    .line 327
    :cond_2
    :goto_1
    return-void

    .line 147
    :cond_3
    const-string/jumbo v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    goto :goto_0

    .line 160
    :cond_4
    const-string/jumbo v1, "tileset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 161
    const-string/jumbo v0, "firstgid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    goto :goto_1

    .line 165
    :cond_5
    const-string/jumbo v0, "tilewidth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    goto :goto_1

    .line 169
    :cond_6
    const-string/jumbo v0, "tileheight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    goto :goto_1

    .line 173
    :cond_7
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->name:Ljava/lang/String;

    goto :goto_1

    .line 177
    :cond_8
    const-string/jumbo v0, "spacing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    goto :goto_1

    .line 181
    :cond_9
    const-string/jumbo v0, "margin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    goto/16 :goto_1

    .line 188
    :cond_a
    const-string/jumbo v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 189
    const-string/jumbo v0, "source"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 196
    :cond_b
    const-string/jumbo v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 197
    const-string/jumbo v0, "encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 198
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 201
    :cond_c
    const-string/jumbo v0, "compression"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    goto/16 :goto_1

    .line 208
    :cond_d
    const-string/jumbo v1, "objectgroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 209
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 213
    :cond_e
    const-string/jumbo v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->height:I

    goto/16 :goto_1

    .line 217
    :cond_f
    const-string/jumbo v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->width:I

    goto/16 :goto_1

    .line 224
    :cond_10
    const-string/jumbo v1, "object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 225
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 229
    :cond_11
    const-string/jumbo v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    :cond_12
    const-string/jumbo v0, "x"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->x:I

    goto/16 :goto_1

    .line 237
    :cond_13
    const-string/jumbo v0, "y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->y:I

    goto/16 :goto_1

    .line 241
    :cond_14
    const-string/jumbo v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->width:I

    goto/16 :goto_1

    .line 245
    :cond_15
    const-string/jumbo v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->height:I

    goto/16 :goto_1

    .line 249
    :cond_16
    const-string/jumbo v0, "gid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->gid:I

    goto/16 :goto_1

    .line 256
    :cond_17
    const-string/jumbo v1, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 257
    const-string/jumbo v0, "orientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->orientation:Ljava/lang/String;

    goto/16 :goto_1

    .line 261
    :cond_18
    const-string/jumbo v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->width:I

    goto/16 :goto_1

    .line 265
    :cond_19
    const-string/jumbo v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->height:I

    goto/16 :goto_1

    .line 269
    :cond_1a
    const-string/jumbo v0, "tilewidth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    goto/16 :goto_1

    .line 273
    :cond_1b
    const-string/jumbo v0, "tileheight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    goto/16 :goto_1

    .line 280
    :cond_1c
    const-string/jumbo v1, "tile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 281
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    if-eqz v0, :cond_1e

    .line 282
    const-string/jumbo v0, "gid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->col:I

    .line 284
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v0, v1, :cond_1d

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->col:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 290
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    goto/16 :goto_1

    .line 288
    :cond_1d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string/jumbo v1, "TiledLoader"

    const-string/jumbo v2, "Warning: extra XML gid values ignored! Your map is likely corrupt!"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 293
    :cond_1e
    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTile:I

    goto/16 :goto_1

    .line 300
    :cond_1f
    const-string/jumbo v1, "property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 301
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 305
    :cond_20
    const-string/jumbo v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    goto/16 :goto_1

    .line 312
    :cond_21
    const-string/jumbo v1, "polyline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 313
    const-string/jumbo v0, "points"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    goto/16 :goto_1

    .line 320
    :cond_22
    const-string/jumbo v1, "polygon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    const-string/jumbo v0, "points"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected final close()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    const-string/jumbo v2, "layer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->layers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const-string/jumbo v2, "tileset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    goto :goto_0

    .line 352
    :cond_2
    const-string/jumbo v2, "object"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    goto :goto_0

    .line 358
    :cond_3
    const-string/jumbo v2, "objectgroup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->objectGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    goto :goto_0

    .line 364
    :cond_4
    const-string/jumbo v2, "property"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V

    .line 366
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    goto :goto_0

    .line 370
    :cond_5
    const-string/jumbo v2, "polyline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putPolyLine(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;)V

    .line 372
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto :goto_0

    .line 376
    :cond_6
    const-string/jumbo v2, "polygon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putPolyLine(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;)V

    .line 378
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto :goto_0

    .line 382
    :cond_7
    const-string/jumbo v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 385
    const-string/jumbo v0, "base64"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 386
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    .line 390
    const-string/jumbo v0, "gzip"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 391
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->unGZip()V

    .line 408
    :cond_8
    :goto_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 386
    goto :goto_1

    .line 392
    :cond_a
    const-string/jumbo v0, "zlib"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 393
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->unZlib()V

    goto :goto_2

    .line 394
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 395
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->arrangeData()V

    goto :goto_2

    .line 398
    :cond_c
    const-string/jumbo v0, "csv"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 399
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->fromCSV()V

    goto :goto_2

    .line 401
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 403
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    goto :goto_2

    .line 405
    :cond_e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Unsupported encoding and/or compression format"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_f
    const-string/jumbo v1, "property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V

    .line 414
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    goto/16 :goto_0
.end method

.method protected final open(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "layer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v0, "tileset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    goto :goto_0

    .line 107
    :cond_2
    const-string/jumbo v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    goto :goto_0

    .line 113
    :cond_3
    const-string/jumbo v0, "objectgroup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    goto :goto_0

    .line 118
    :cond_4
    const-string/jumbo v0, "object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    goto :goto_0

    .line 123
    :cond_5
    const-string/jumbo v0, "property"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    .line 125
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_6
    const-string/jumbo v0, "polyline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    const-string/jumbo v1, "polyline"

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto :goto_0

    .line 134
    :cond_7
    const-string/jumbo v0, "polygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    const-string/jumbo v1, "polygon"

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto/16 :goto_0
.end method

.method protected final text(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    .line 334
    :cond_0
    return-void
.end method
