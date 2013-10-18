.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLOR_CODES_END:C = '\uf8ff'

.field public static final COLOR_CODES_START:C = '\ue000'

.field private static codeToColor:[Lcom/badlogic/gdx/graphics/Color;

.field private static colorCodesMaxChar:C


# instance fields
.field private color:F

.field private final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private final glyphColorChanges:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;",
            ">;"
        }
    .end annotation
.end field

.field private idx:I

.field private integer:Z

.field private final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field private final tmpColor:Lcom/badlogic/gdx/graphics/Color;

.field private vertices:[F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-array v0, v1, [Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->codeToColor:[Lcom/badlogic/gdx/graphics/Color;

    .line 36
    sput-char v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->colorCodesMaxChar:C

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    .line 52
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpColor:Lcom/badlogic/gdx/graphics/Color;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 76
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 77
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 78
    return-void
.end method

.method private addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFFF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    add-float v1, p2, p4

    .line 292
    add-float v0, p3, p5

    .line 293
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .line 294
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 295
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 296
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 298
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 300
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v7, :cond_0

    .line 301
    float-to-int v7, p2

    int-to-float p2, v7

    .line 302
    float-to-int v7, p3

    int-to-float p3, v7

    .line 303
    float-to-int v1, v1

    int-to-float v1, v1

    .line 304
    float-to-int v0, v0

    int-to-float v0, v0

    .line 307
    :cond_0
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p2, v6, v7

    .line 308
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p3, v6, v7

    .line 309
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p6, v6, v7

    .line 310
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v2, v6, v7

    .line 311
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v4, v6, v7

    .line 313
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p2, v6, v7

    .line 314
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v0, v6, v7

    .line 315
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p6, v6, v7

    .line 316
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v2, v6, v7

    .line 317
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v5, v6, v2

    .line 319
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v1, v6, v2

    .line 320
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v0, v6, v2

    .line 321
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p6, v6, v0

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v3, v6, v0

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v5, v6, v0

    .line 325
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v1, v6, v0

    .line 326
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p3, v6, v0

    .line 327
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p6, v6, v0

    .line 328
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v3, v6, v0

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v4, v6, v0

    .line 330
    return-void
.end method

.method private addToCache(Ljava/lang/CharSequence;FFII)F
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    .line 206
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 207
    const/4 v2, 0x0

    .line 208
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 209
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v3, 0x3f80

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/high16 v3, 0x3f80

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    move/from16 v1, p4

    .line 210
    :goto_0
    move/from16 v0, p5

    if-ge v1, v0, :cond_b

    .line 211
    add-int/lit8 v8, v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 212
    const v2, 0xe000

    if-lt v1, v2, :cond_0

    sget-char v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->colorCodesMaxChar:C

    if-ge v1, v2, :cond_0

    .line 213
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->doColorChange(C)F

    move-result v7

    .line 215
    :cond_0
    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_2

    .line 217
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    add-float v3, p2, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float v4, p3, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v5, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFFF)V

    .line 218
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float v3, p2, v1

    move-object v1, v2

    move v2, v8

    .line 222
    :goto_1
    move/from16 v0, p5

    if-ge v2, v0, :cond_7

    .line 223
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 224
    const v2, 0xe000

    if-lt v4, v2, :cond_1

    sget-char v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->colorCodesMaxChar:C

    if-ge v4, v2, :cond_1

    .line 225
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->doColorChange(C)F

    move-result v7

    .line 227
    :cond_1
    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_a

    .line 229
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v3, v1

    .line 231
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    add-float v3, v10, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float v4, p3, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v5, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFFF)V

    .line 232
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    :goto_2
    move v3, v1

    move-object v1, v2

    move v2, v8

    .line 234
    goto :goto_1

    :cond_2
    move v1, v8

    .line 221
    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    move/from16 v1, p4

    .line 237
    :goto_3
    move/from16 v0, p5

    if-ge v1, v0, :cond_9

    .line 238
    add-int/lit8 v8, v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 239
    const v2, 0xe000

    if-lt v1, v2, :cond_4

    sget-char v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->colorCodesMaxChar:C

    if-ge v1, v2, :cond_4

    .line 240
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->doColorChange(C)F

    move-result v7

    .line 242
    :cond_4
    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_6

    .line 244
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float v3, p2, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    add-float v4, p3, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float v5, v1, v10

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v6, v1, v11

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFFF)V

    .line 250
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float v3, p2, v1

    move-object v1, v2

    move v2, v8

    .line 254
    :goto_4
    move/from16 v0, p5

    if-ge v2, v0, :cond_7

    .line 255
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 256
    const v2, 0xe000

    if-lt v4, v2, :cond_5

    sget-char v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->colorCodesMaxChar:C

    if-ge v4, v2, :cond_5

    .line 257
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->doColorChange(C)F

    move-result v7

    .line 259
    :cond_5
    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_8

    .line 261
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float v12, v3, v1

    .line 263
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float v3, v12, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    add-float v4, p3, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float v5, v1, v10

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v6, v1, v11

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFFF)V

    .line 269
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v12

    :goto_5
    move v3, v1

    move-object v1, v2

    move v2, v8

    .line 271
    goto :goto_4

    :cond_6
    move v1, v8

    .line 253
    goto/16 :goto_3

    .line 273
    :cond_7
    sub-float v1, v3, p2

    return v1

    :cond_8
    move-object v2, v1

    move v1, v3

    goto :goto_5

    :cond_9
    move/from16 v3, p2

    move v13, v1

    move-object v1, v2

    move v2, v13

    goto :goto_4

    :cond_a
    move-object v2, v1

    move v1, v3

    goto/16 :goto_2

    :cond_b
    move/from16 v3, p2

    move v13, v1

    move-object v1, v2

    move v2, v13

    goto/16 :goto_1
.end method

.method private doColorChange(C)F
    .locals 4
    .parameter

    .prologue
    .line 277
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->codeToColor:[Lcom/badlogic/gdx/graphics/Color;

    const v1, 0xe000

    sub-int v1, p1, v1

    aget-object v1, v0, v1

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;->lastVertexIndex:I

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 283
    if-nez v1, :cond_1

    .line 284
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 286
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    goto :goto_0
.end method

.method private doSetColor()V
    .locals 6

    .prologue
    .line 112
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 113
    const/4 v1, 0x2

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2

    .line 115
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;

    .line 118
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;->color:Lcom/badlogic/gdx/graphics/Color;

    if-nez v3, :cond_0

    .line 119
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 123
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;->lastVertexIndex:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    :goto_2
    if-ge v2, v0, :cond_1

    .line 125
    aput v3, v4, v2

    .line 124
    add-int/lit8 v2, v2, 0x5

    goto :goto_2

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_2
    :goto_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    if-ge v1, v0, :cond_3

    .line 130
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v0, v4, v1

    .line 129
    add-int/lit8 v1, v1, 0x5

    goto :goto_3

    .line 133
    :cond_3
    return-void
.end method

.method public static enableMulticolor([Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x18ff

    .line 58
    array-length v0, p0

    if-le v0, v5, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Too many color codes (%d, max %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    sput-object p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->codeToColor:[Lcom/badlogic/gdx/graphics/Color;

    .line 65
    const v0, 0xe000

    array-length v1, p0

    add-int/2addr v0, v1

    int-to-char v0, v0

    sput-char v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->colorCodesMaxChar:C

    .line 66
    return-void
.end method

.method private reset(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 196
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    .line 199
    mul-int/lit8 v0, p1, 0x14

    .line 200
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphColorChanges:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 202
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 156
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 167
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 175
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 176
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 177
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 178
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 179
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 180
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    mul-int/lit8 v3, p2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 163
    return-void
.end method

.method public getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpColor:Lcom/badlogic/gdx/graphics/Color;

    .line 187
    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 188
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 189
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 190
    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 191
    return-object v1
.end method

.method public getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getGlyphCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    div-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    return v0
.end method

.method public setColor(F)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 108
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->doSetColor()V

    goto :goto_0
.end method

.method public setColor(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 143
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

    .line 144
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 145
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 147
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->doSetColor()V

    goto :goto_0
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 137
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 139
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->doSetColor()V

    goto :goto_0
.end method

.method public setMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    const/4 v4, 0x0

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 370
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 371
    invoke-direct {p0, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->reset(I)V

    .line 373
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float v4, p3, v1

    .line 374
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 376
    const/4 v2, 0x0

    .line 377
    const/4 v5, 0x0

    .line 379
    const/4 v1, 0x0

    move v7, v1

    move v8, v2

    .line 380
    :goto_0
    if-ge v5, v10, :cond_1

    .line 381
    const/16 v1, 0xa

    invoke-static {p1, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    .line 382
    const/4 v1, 0x0

    .line 383
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_0

    .line 384
    invoke-virtual {v9, p1, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 385
    sub-float v1, p4, v1

    .line 386
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_0

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 388
    :cond_0
    add-float v3, p2, v1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v1

    .line 389
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 390
    add-int/lit8 v5, v6, 0x1

    .line 391
    add-float/2addr v4, v11

    .line 392
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v8, v2

    .line 393
    goto :goto_0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v3, v7, -0x1

    int-to-float v3, v3

    iget-object v4, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 396
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v1
.end method

.method public setPosition(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    sub-int v0, p5, p4

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->reset(I)V

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float v3, p3, v0

    .line 349
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method public setUseIntegerPositions(Z)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 496
    return-void
.end method

.method public setWrappedText(Ljava/lang/CharSequence;FFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 416
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 417
    invoke-direct {p0, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->reset(I)V

    .line 419
    iget-object v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float v4, p3, v1

    .line 420
    iget-object v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 422
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_0

    const/high16 p4, 0x4f00

    .line 423
    :cond_0
    const/4 v7, 0x0

    .line 424
    const/4 v5, 0x0

    .line 425
    const/4 v1, 0x0

    move v9, v1

    .line 426
    :goto_0
    if-ge v5, v11, :cond_5

    .line 427
    const/16 v1, 0xa

    invoke-static {p1, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 429
    :goto_1
    if-ge v5, v2, :cond_1

    .line 430
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 433
    :cond_1
    move/from16 v0, p4

    invoke-virtual {v10, p1, v5, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v1

    add-int v6, v5, v1

    .line 434
    add-int/lit8 v1, v6, 0x1

    .line 435
    if-ge v6, v2, :cond_8

    move v2, v6

    .line 437
    :goto_2
    if-le v2, v5, :cond_2

    .line 438
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 439
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 441
    :cond_2
    if-ne v2, v5, :cond_4

    .line 442
    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move v6, v1

    .line 453
    :goto_3
    if-le v6, v5, :cond_6

    .line 454
    const/4 v1, 0x0

    .line 455
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_3

    .line 456
    invoke-virtual {v10, p1, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 457
    sub-float v1, p4, v1

    .line 458
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_3

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 460
    :cond_3
    add-float v3, p2, v1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v1

    .line 461
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 464
    :goto_4
    add-float/2addr v4, v12

    .line 465
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v5, v8

    move v7, v1

    .line 466
    goto :goto_0

    :cond_4
    move v6, v2

    .line 447
    :goto_5
    if-le v6, v5, :cond_7

    .line 448
    add-int/lit8 v1, v6, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 449
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 467
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 468
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v3, v9, -0x1

    int-to-float v3, v3

    iget-object v4, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 469
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v1

    :cond_6
    move v1, v7

    goto :goto_4

    :cond_7
    move v8, v2

    goto :goto_3

    :cond_8
    move v8, v1

    goto :goto_3
.end method

.method public translate(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    .line 103
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v0, :cond_2

    .line 93
    float-to-int v0, p1

    int-to-float p1, v0

    .line 94
    float-to-int v0, p2

    int-to-float p2, v0

    .line 96
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 98
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 99
    const/4 v0, 0x0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    :goto_0
    if-ge v0, v2, :cond_0

    .line 100
    aget v3, v1, v0

    add-float/2addr v3, p1

    aput v3, v1, v0

    .line 101
    add-int/lit8 v3, v0, 0x1

    aget v4, v1, v3

    add-float/2addr v4, p2

    aput v4, v1, v3

    .line 99
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public usesIntegerPositions()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    return v0
.end method
