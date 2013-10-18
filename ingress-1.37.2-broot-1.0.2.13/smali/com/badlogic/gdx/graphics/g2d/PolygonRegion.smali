.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private localVertices:[F

.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private texCoords:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 36
    if-nez p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "region cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->loadPolygonDefinition(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private calculateAtlasTexCoords([F)[F
    .locals 6
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float v1, v0, v1

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float v2, v0, v2

    .line 117
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    aget v4, p1, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, p1, v0

    .line 119
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, p1, v3

    .line 117
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 122
    :cond_0
    return-object p1
.end method

.method private loadPolygonDefinition(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x40

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 72
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    const-string/jumbo v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    array-length v0, v3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->localVertices:[F

    move v0, v1

    .line 80
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->localVertices:[F

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v4, v0

    .line 82
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->localVertices:[F

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 80
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 85
    :cond_1
    const-string/jumbo v3, "u"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 88
    array-length v0, v3

    new-array v4, v0, [F

    move v0, v1

    .line 89
    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 90
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v4, v0

    .line 91
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 89
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 94
    :cond_2
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->calculateAtlasTexCoords([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->texCoords:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error reading polygon shape file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 104
    :goto_3
    throw v0

    .line 102
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    :goto_4
    return-void

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public getLocalVertices()[F
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->localVertices:[F

    return-object v0
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTextureCoords()[F
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->texCoords:[F

    return-object v0
.end method
