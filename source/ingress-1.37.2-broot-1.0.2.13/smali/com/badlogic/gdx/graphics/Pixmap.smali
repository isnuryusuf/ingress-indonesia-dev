.class public Lcom/badlogic/gdx/graphics/Pixmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;


# instance fields
.field color:I

.field private disposed:Z

.field final pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 114
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-static {p3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 115
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    .line 138
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Couldn\'t load file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 147
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 148
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 125
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v2, "Couldn\'t load pixmap from image data"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-object v0
.end method

.method public static setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    sput-object p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 99
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(I)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setScale(I)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Pixmap already disposed!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->dispose()V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    .line 299
    return-void
.end method

.method public drawCircle(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawCircle(IIII)V

    .line 264
    return-void
.end method

.method public drawLine(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawLine(IIIII)V

    .line 192
    return-void
.end method

.method public drawPixel(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    .line 307
    return-void
.end method

.method public drawPixel(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    .line 316
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 213
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    .line 226
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIIIII)V

    .line 244
    return-void
.end method

.method public drawRectangle(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawRect(IIIII)V

    .line 203
    return-void
.end method

.method public fill()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->clear(I)V

    .line 175
    return-void
.end method

.method public fillCircle(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(IIII)V

    .line 273
    return-void
.end method

.method public fillRectangle(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillRect(IIIII)V

    .line 255
    return-void
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    return-object v0
.end method

.method public getGLFormat()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLFormat()I

    move-result v0

    return v0
.end method

.method public getGLInternalFormat()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLInternalFormat()I

    move-result v0

    return v0
.end method

.method public getGLType()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLType()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPixel(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Pixmap already disposed"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 164
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 154
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .parameter

    .prologue
    .line 169
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 170
    return-void
.end method
