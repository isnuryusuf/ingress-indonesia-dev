.class public Lcom/badlogic/gdx/graphics/Color;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLACK:Lcom/badlogic/gdx/graphics/Color;

.field public static final BLUE:Lcom/badlogic/gdx/graphics/Color;

.field public static final CLEAR:Lcom/badlogic/gdx/graphics/Color;

.field public static final CYAN:Lcom/badlogic/gdx/graphics/Color;

.field public static final DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static final LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final MAGENTA:Lcom/badlogic/gdx/graphics/Color;

.field public static final ORANGE:Lcom/badlogic/gdx/graphics/Color;

.field public static final PINK:Lcom/badlogic/gdx/graphics/Color;

.field public static final RED:Lcom/badlogic/gdx/graphics/Color;

.field public static final WHITE:Lcom/badlogic/gdx/graphics/Color;

.field public static final YELLOW:Lcom/badlogic/gdx/graphics/Color;

.field public static tmp:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f40

    const/high16 v2, 0x3f00

    const/high16 v1, 0x3e80

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v3, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2e147b

    const v2, 0x3f2e147b

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->PINK:Lcom/badlogic/gdx/graphics/Color;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f47ae14

    invoke-direct {v0, v3, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v3, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v4, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->MAGENTA:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 59
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 60
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 61
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 62
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 70
    return-void
.end method

.method public static alpha(F)I
    .locals 1
    .parameter

    .prologue
    .line 240
    const/high16 v0, 0x437f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static luminanceAlpha(FF)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x437f

    .line 244
    mul-float v0, p0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x8

    mul-float/2addr v1, p1

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565(FFF)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x41f8

    .line 248
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xb

    const/high16 v1, 0x427c

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x41f8

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v2, 0x427c

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x41f8

    .line 285
    const v0, 0xf800

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 286
    and-int/lit16 v0, p1, 0x7e0

    ushr-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/high16 v1, 0x427c

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 287
    and-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 288
    return-void
.end method

.method public static rgb888(FFF)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 256
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 272
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x437f

    .line 308
    const/high16 v0, 0xff

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 309
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 310
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 311
    return-void
.end method

.method public static rgba4444(FFFF)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4170

    .line 252
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xc

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    mul-float v1, p3, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba4444(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4170

    .line 268
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba4444ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4170

    .line 296
    const v0, 0xf000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 297
    and-int/lit16 v0, p1, 0xf00

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 298
    and-int/lit16 v0, p1, 0xf0

    ushr-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 299
    and-int/lit8 v0, p1, 0xf

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 300
    return-void
.end method

.method public static rgba8888(FFFF)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 260
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p3, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba8888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x437f

    .line 319
    const/high16 v0, -0x100

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 320
    const/high16 v0, 0xff

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 321
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 322
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 323
    return-void
.end method

.method public static toFloatBits(FFFF)F
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 235
    mul-float v0, v2, p3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p0

    float-to-int v1, v1

    or-int/2addr v0, v1

    .line 236
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    return v0
.end method

.method public static toFloatBits(IIII)F
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    .line 199
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 200
    return v0
.end method

.method public static toIntBits(IIII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 116
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 117
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 120
    return-object p0
.end method

.method public clamp()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 138
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 141
    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 142
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 145
    :cond_1
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 146
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 149
    :cond_2
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 150
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 152
    :cond_3
    :goto_3
    return-void

    .line 139
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    goto :goto_0

    .line 143
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    goto :goto_1

    .line 147
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_2

    .line 151
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_3
.end method

.method public cpy()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    if-ne p0, p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 166
    :cond_3
    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    .line 168
    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 169
    :cond_4
    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 170
    :cond_5
    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 171
    :cond_6
    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    .line 179
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 182
    return v0

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_1

    :cond_3
    move v0, v1

    .line 180
    goto :goto_2
.end method

.method public mul(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 104
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 106
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 107
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 94
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 77
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 78
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 79
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 81
    return-object p0
.end method

.method public set(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 156
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 157
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 158
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 159
    return-void
.end method

.method public sub(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 129
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 130
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 133
    return-object p0
.end method

.method public tmp()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public toFloatBits()F
    .locals 3

    .prologue
    const/high16 v2, 0x437f

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    .line 220
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    return v0
.end method

.method public toIntBits()I
    .locals 3

    .prologue
    const/high16 v2, 0x437f

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    .line 228
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
