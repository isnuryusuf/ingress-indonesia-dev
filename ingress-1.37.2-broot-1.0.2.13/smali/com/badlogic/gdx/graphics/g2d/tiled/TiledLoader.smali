.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMap(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->createMap(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method private static createMap(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;-><init>()V

    .line 53
    iput-object p0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tmxFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 56
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V

    .line 526
    if-eqz p0, :cond_0

    .line 527
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 535
    :goto_0
    return-object v0

    .line 529
    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v2, "Error Parsing TMX file"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createMap(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->createMap(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method static unsignedByteToInt(B)I
    .locals 1
    .parameter

    .prologue
    .line 539
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
