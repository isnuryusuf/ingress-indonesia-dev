.class public Lcom/badlogic/gdx/graphics/glutils/FileTextureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# static fields
.field public static copyToPOT:Z


# instance fields
.field final file:Lcom/badlogic/gdx/files/FileHandle;

.field format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field height:I

.field isPrepared:Z

.field pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field useMipMaps:Z

.field width:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    .line 37
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 41
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 42
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 43
    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->useMipMaps:Z

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->ensurePot(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    .line 48
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 50
    :cond_0
    return-void
.end method

.method private ensurePot(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->copyToPOT:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    .line 75
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    .line 76
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    .line 77
    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 78
    if-ne v6, v1, :cond_0

    if-eq v7, v3, :cond_1

    .line 79
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 80
    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 81
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 85
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public consumeCompressedData()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "This TextureData implementation does not upload data itself"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Call prepare() before calling getPixmap()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 94
    return-object v0
.end method

.method public disposePixmap()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public getFileHandle()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    return v0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->extension()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 69
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    .line 70
    return-void

    .line 64
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->ensurePot(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    goto :goto_0
.end method

.method public useMipMaps()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->useMipMaps:Z

    return v0
.end method
