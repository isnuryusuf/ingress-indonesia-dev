.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final LOG2_PAGE_SIZE:I = 0x9

.field private static final PAGES:I = 0x80

.field private static final PAGE_SIZE:I = 0x200

.field public static final capChars:[C

.field public static final xChars:[C


# instance fields
.field private color:F

.field final data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

.field private flipped:Z

.field private integer:Z

.field private ownsTexture:Z

.field region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field private final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->xChars:[C

    .line 60
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->capChars:[C

    return-void

    .line 59
    nop

    :array_0
    .array-data 0x2
        0x78t 0x0t
        0x65t 0x0t
        0x61t 0x0t
        0x6ft 0x0t
        0x6et 0x0t
        0x73t 0x0t
        0x72t 0x0t
        0x63t 0x0t
        0x75t 0x0t
        0x6dt 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x7at 0x0t
    .end array-data

    .line 60
    nop

    :array_1
    .array-data 0x2
        0x4dt 0x0t
        0x4et 0x0t
        0x42t 0x0t
        0x44t 0x0t
        0x43t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x4bt 0x0t
        0x41t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4ct 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 261
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string/jumbo v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string/jumbo v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 295
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0, v1, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 304
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 281
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 287
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 288
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 66
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 68
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 313
    if-nez p2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 314
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    .line 315
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 316
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 317
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V

    .line 318
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 319
    return-void

    :cond_0
    move-object v0, p2

    .line 313
    goto :goto_0

    :cond_1
    move v0, v2

    .line 318
    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter

    .prologue
    .line 269
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string/jumbo v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string/jumbo v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 271
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 950
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v0, p2

    .line 951
    :goto_0
    if-ge v0, v1, :cond_1

    .line 952
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 953
    :goto_1
    return v0

    .line 951
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 953
    goto :goto_1
.end method

.method static isWhitespace(C)Z
    .locals 1
    .parameter

    .prologue
    .line 957
    sparse-switch p0, :sswitch_data_0

    .line 964
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 962
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 957
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V
    .locals 14
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v2, v0

    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v2, v0

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 327
    iget-object v7, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_3

    aget-object v9, v7, v2

    .line 328
    if-eqz v9, :cond_2

    .line 329
    array-length v10, v9

    move v0, v1

    :goto_1
    if-ge v0, v10, :cond_2

    aget-object v11, v9, v0

    .line 330
    if-eqz v11, :cond_0

    .line 331
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    int-to-float v12, v12

    mul-float/2addr v12, v3

    add-float/2addr v12, v5

    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .line 332
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v3

    add-float/2addr v12, v5

    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 333
    iget-boolean v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v12, :cond_1

    .line 334
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v6

    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 335
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v6

    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 329
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_1
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v6

    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 338
    iget v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget v13, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v6

    iput v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    goto :goto_2

    .line 327
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 342
    :cond_3
    return-void
.end method


# virtual methods
.method public computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 707
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 708
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 709
    const/4 v0, 0x0

    .line 710
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 712
    const/4 v1, 0x0

    .line 713
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v4, 0x3f80

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move v2, v3

    move v4, v0

    .line 714
    :goto_0
    if-ge v4, v5, :cond_1

    .line 715
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 716
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_6

    .line 718
    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 720
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 721
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 722
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    .line 714
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 726
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 744
    :goto_2
    return-void

    .line 728
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    move v2, v3

    move v4, v0

    .line 729
    :goto_3
    if-ge v4, v5, :cond_4

    .line 730
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 731
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_5

    .line 733
    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v2, v1

    .line 735
    :cond_3
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 736
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 737
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 738
    add-float/2addr v1, v2

    .line 729
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_3

    .line 741
    :cond_4
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 742
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_4

    :cond_6
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x3a83126f

    .line 750
    .line 751
    const/4 v2, 0x0

    .line 752
    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v3, 0x3f80

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    move v3, p2

    .line 755
    :goto_0
    if-ge v3, p3, :cond_3

    .line 756
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 757
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_5

    .line 759
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 760
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    sub-float/2addr v1, p4

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_3

    .line 761
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    .line 755
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    move v3, p2

    .line 767
    :goto_2
    if-ge v3, p3, :cond_3

    .line 768
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 769
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_4

    .line 771
    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    .line 772
    :cond_2
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    .line 773
    add-float v5, v2, v1

    sub-float/2addr v5, p4

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 774
    add-float/2addr v1, v2

    .line 767
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 779
    sub-int/2addr v0, p2

    return v0

    :cond_4
    move-object v0, v1

    move v1, v2

    goto :goto_3

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public containsCharacter(C)Z
    .locals 1
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 884
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    move-object/from16 v0, p1

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 362
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float v13, p4, v1

    .line 366
    const/4 v1, 0x0

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-eqz v3, :cond_b

    .line 369
    float-to-int v3, v13

    int-to-float v3, v3

    .line 370
    move/from16 v0, p3

    float-to-int v4, v0

    int-to-float v13, v4

    move v14, v3

    move/from16 v3, p5

    .line 372
    :goto_0
    move/from16 v0, p6

    if-ge v3, v0, :cond_a

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 v12, v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v11

    .line 374
    if-eqz v11, :cond_9

    .line 375
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    add-float v3, v13, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float v4, v14, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v5, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v1

    iget v7, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v8, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v10, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 379
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float/2addr v1, v13

    move-object v3, v11

    move v4, v12

    .line 380
    :goto_1
    move/from16 v0, p6

    if-ge v4, v0, :cond_3

    .line 384
    add-int/lit8 v13, v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v12

    .line 386
    if-eqz v12, :cond_8

    .line 387
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 388
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-eqz v3, :cond_7

    float-to-int v1, v1

    int-to-float v1, v1

    move v11, v1

    .line 390
    :goto_2
    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    add-float v3, v11, v1

    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float v4, v14, v1

    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v5, v1

    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v1

    iget v7, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v8, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v9, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v10, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 394
    iget v1, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    move-object v3, v12

    move v4, v13

    .line 395
    goto :goto_1

    .line 397
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v14, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    move/from16 v16, v0

    move/from16 v3, p5

    .line 398
    :goto_3
    move/from16 v0, p6

    if-ge v3, v0, :cond_6

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 v12, v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v11

    .line 400
    if-eqz v11, :cond_5

    .line 401
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-nez v1, :cond_1

    .line 402
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    add-float v3, p3, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float v4, v13, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float v5, v1, v14

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v6, v1, v16

    iget v7, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v8, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v10, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 416
    :goto_4
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    add-float v1, v1, p3

    move-object v3, v11

    move v4, v12

    .line 417
    :goto_5
    move/from16 v0, p6

    if-ge v4, v0, :cond_3

    .line 421
    add-int/lit8 v12, v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v11

    .line 423
    if-eqz v11, :cond_4

    .line 424
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float v17, v1, v3

    .line 426
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-nez v1, :cond_2

    .line 427
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    add-float v3, v17, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float v4, v13, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float v5, v1, v14

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v6, v1, v16

    iget v7, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v8, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v10, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 441
    :goto_6
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    add-float v1, v1, v17

    move-object v3, v11

    move v4, v12

    .line 442
    goto :goto_5

    .line 409
    :cond_1
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    add-float v1, v1, p3

    float-to-int v1, v1

    int-to-float v3, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v1, v13

    float-to-int v1, v1

    int-to-float v4, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    int-to-float v5, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    int-to-float v6, v1

    iget v7, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v8, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v10, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto/16 :goto_4

    .line 434
    :cond_2
    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    add-float v1, v1, v17

    float-to-int v1, v1

    int-to-float v3, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v1, v13

    float-to-int v1, v1

    int-to-float v4, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    int-to-float v5, v1

    iget v1, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    int-to-float v6, v1

    iget v7, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v8, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v9, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v10, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_6

    .line 444
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    sub-float v1, v1, p3

    iput v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v1

    :cond_4
    move v4, v12

    goto/16 :goto_5

    :cond_5
    move-object v1, v11

    move v3, v12

    goto/16 :goto_3

    :cond_6
    move v4, v3

    move-object v3, v1

    move/from16 v1, p3

    goto/16 :goto_5

    :cond_7
    move v11, v1

    goto/16 :goto_2

    :cond_8
    move v4, v13

    goto/16 :goto_1

    :cond_9
    move-object v1, v11

    move v3, v12

    goto/16 :goto_0

    :cond_a
    move v4, v3

    move-object v3, v1

    move v1, v13

    goto/16 :goto_1

    :cond_b
    move/from16 v3, p5

    move v14, v13

    move/from16 v13, p3

    goto/16 :goto_0
.end method

.method public drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    const/4 v5, 0x0

    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iget v10, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 468
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 469
    const/4 v6, 0x0

    .line 470
    const/4 v2, 0x0

    .line 471
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 472
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    move/from16 v5, p4

    .line 473
    :goto_0
    if-ge v6, v12, :cond_1

    .line 474
    const/16 v1, 0xa

    invoke-static {p2, v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    .line 475
    const/4 v1, 0x0

    .line 476
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-eq v0, v2, :cond_0

    .line 477
    invoke-virtual {p0, p2, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 478
    sub-float v1, p5, v1

    .line 479
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_0

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 481
    :cond_0
    add-float v4, p3, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 482
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 483
    add-int/lit8 v6, v7, 0x1

    .line 484
    add-float/2addr v5, v11

    .line 485
    add-int/lit8 v2, v9, 0x1

    move v8, v1

    move v9, v2

    .line 486
    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {p1, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 489
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 490
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v3, v9, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 491
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v1
.end method

.method public drawWrapped(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawWrapped(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public drawWrapped(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    const/4 v2, 0x0

    cmpg-float v2, p5, v2

    if-gtz v2, :cond_0

    const/high16 p5, 0x4f00

    .line 513
    :cond_0
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 514
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v13, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 515
    const/4 v7, 0x0

    .line 516
    const/4 v2, 0x0

    .line 517
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 518
    const/4 v9, 0x0

    move v11, v2

    move/from16 v6, p4

    .line 519
    :goto_0
    if-ge v7, v14, :cond_6

    .line 520
    const/16 v2, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v2, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 522
    :goto_1
    if-ge v7, v2, :cond_1

    .line 523
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 526
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {p0, v0, v7, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v3

    add-int v8, v7, v3

    .line 527
    add-int/lit8 v3, v8, 0x1

    .line 528
    if-ge v8, v2, :cond_5

    move v2, v8

    .line 530
    :goto_2
    if-le v2, v7, :cond_2

    .line 531
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 532
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 534
    :cond_2
    if-ne v2, v7, :cond_4

    .line 535
    add-int/lit8 v2, v3, -0x1

    move v10, v2

    move v8, v2

    .line 547
    :goto_3
    if-le v8, v7, :cond_7

    .line 548
    const/4 v2, 0x0

    .line 549
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-eq v0, v3, :cond_3

    .line 550
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 551
    sub-float v2, p5, v2

    .line 552
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-ne v0, v3, :cond_3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 554
    :cond_3
    add-float v5, p3, v2

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 555
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 558
    :goto_4
    add-float/2addr v6, v13

    .line 559
    add-int/lit8 v3, v11, 0x1

    move v9, v2

    move v11, v3

    move v7, v10

    .line 560
    goto :goto_0

    :cond_4
    move v8, v2

    .line 540
    :goto_5
    if-le v8, v7, :cond_8

    .line 541
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 542
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 546
    :cond_5
    add-int/lit8 v2, v8, 0x1

    move v10, v2

    goto :goto_3

    .line 561
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 562
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 563
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v4, v11, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 564
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v2

    :cond_7
    move v2, v9

    goto :goto_4

    :cond_8
    move v10, v2

    goto :goto_3
.end method

.method public getAscent()F
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    return v0
.end method

.method public getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 2
    .parameter

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    const/4 v2, 0x0

    .line 596
    const/4 v1, 0x0

    move v3, p2

    .line 597
    :goto_0
    if-ge v3, p3, :cond_3

    .line 598
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 v0, v3, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    .line 599
    if-eqz v1, :cond_2

    .line 600
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 601
    :goto_1
    if-ge v0, p3, :cond_0

    .line 605
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    add-int/2addr v1, v2

    .line 610
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    add-int/2addr v1, v2

    :goto_2
    move v2, v1

    move-object v1, v0

    move v0, v3

    .line 612
    goto :goto_1

    .line 613
    :cond_0
    int-to-float v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v0, v1

    iput v0, p4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v0, p4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 615
    return-object p4

    :cond_1
    move-object v0, v1

    move v1, v2

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public getBounds(Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getCapHeight()F
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f

    .line 798
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 799
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 800
    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 801
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 802
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 803
    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 804
    return-object v1
.end method

.method public getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    return-object v0
.end method

.method public getDescent()F
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    return v0
.end method

.method public getLineHeight()F
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    return v0
.end method

.method public getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .parameter

    .prologue
    .line 622
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getMultiLineBounds(Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 628
    .line 629
    const/4 v1, 0x0

    .line 631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, v0

    .line 632
    :goto_0
    if-ge v2, v3, :cond_0

    .line 633
    const/16 v4, 0xa

    invoke-static {p1, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    .line 634
    invoke-virtual {p0, p1, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 635
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 636
    add-int/lit8 v2, v4, 0x1

    .line 637
    add-int/lit8 v0, v0, 0x1

    .line 638
    goto :goto_0

    .line 639
    :cond_0
    iput v1, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 640
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 641
    return-object p2
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    return v0
.end method

.method public getSpaceWidth()F
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    return v0
.end method

.method public getWrappedBounds(Ljava/lang/CharSequence;F)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getWrappedBounds(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedBounds(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 656
    cmpg-float v2, p2, v0

    if-gtz v2, :cond_0

    const/high16 p2, 0x4f00

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 660
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v4, v1

    .line 662
    :goto_0
    if-ge v1, v5, :cond_6

    .line 663
    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    move v3, v1

    .line 665
    :goto_1
    if-ge v3, v6, :cond_1

    .line 666
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 669
    :cond_1
    invoke-virtual {p0, p1, v3, v6, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v1

    add-int v2, v3, v1

    .line 670
    add-int/lit8 v1, v2, 0x1

    .line 671
    if-ge v2, v6, :cond_3

    .line 673
    :goto_2
    if-le v2, v3, :cond_2

    .line 674
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 675
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 677
    :cond_2
    if-ne v2, v3, :cond_5

    .line 678
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 689
    :cond_3
    :goto_3
    if-le v2, v3, :cond_4

    .line 690
    invoke-virtual {p0, p1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 691
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 694
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    .line 695
    goto :goto_0

    :cond_5
    move v1, v2

    .line 683
    :goto_4
    if-le v1, v3, :cond_7

    .line 684
    add-int/lit8 v6, v1, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 685
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 696
    :cond_6
    iput v0, p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v1, v4, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 698
    return-object p3

    :cond_7
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_3
.end method

.method public getXHeight()F
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    return v0
.end method

.method public isFlipped()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    return v0
.end method

.method public scale(F)V
    .locals 2
    .parameter

    .prologue
    .line 829
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 830
    return-void
.end method

.method public setColor(F)V
    .locals 0
    .parameter

    .prologue
    .line 783
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 784
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 791
    mul-float v0, v2, p4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    or-int/2addr v0, v1

    .line 792
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 793
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 787
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 788
    return-void
.end method

.method public setFixedWidthGlyphs(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 889
    .line 890
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 891
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    .line 892
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    if-le v5, v0, :cond_0

    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 890
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 894
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 895
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    .line 896
    if-eqz v3, :cond_2

    .line 897
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 898
    iput v0, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 899
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    .line 894
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 901
    :cond_3
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 824
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 825
    return-void
.end method

.method public setScale(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 809
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    .line 810
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 812
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 814
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 815
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 816
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iput p2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 817
    return-void
.end method

.method public setUseIntegerPositions(Z)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 913
    return-void
.end method

.method public usesIntegerPositions()Z
    .locals 1

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    return v0
.end method
