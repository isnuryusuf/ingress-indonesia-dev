.class public Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATAN2_BITS:I = 0x7

.field private static final ATAN2_BITS2:I = 0xe

.field private static final ATAN2_COUNT:I = 0x4000

#the value of this static final field might be set in the static constructor
.field static final ATAN2_DIM:I = 0x0

.field private static final ATAN2_MASK:I = 0x3fff

#the value of this static final field might be set in the static constructor
.field private static final BIG_ENOUGH_CEIL:D = 0.0

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

#the value of this static final field might be set in the static constructor
.field private static final INV_ATAN2_DIM_MINUS_1:F = 0.0f

.field public static final PI:F = 3.1415927f

.field private static final SIN_BITS:I = 0xd

.field private static final SIN_COUNT:I = 0x2000

.field private static final SIN_MASK:I = 0x1fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 22.755556f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 1303.7972f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 86
    const-wide/high16 v0, 0x40d0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    .line 87
    const/high16 v0, 0x3f80

    sget v1, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    .line 129
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    .line 202
    const-wide v0, 0x40d0004000000000L

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/NumberUtils;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/NumberUtils;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static final atan2(FF)F
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 105
    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    .line 106
    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    .line 107
    neg-float p0, p0

    move v0, v1

    .line 111
    :cond_0
    neg-float v3, p1

    .line 112
    const v2, -0x3fb6f025

    move v4, v0

    move v5, v2

    move v2, p0

    .line 121
    :goto_0
    cmpg-float v0, v3, v2

    if-gez v0, :cond_3

    move v0, v2

    :goto_1
    sget v6, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    mul-float/2addr v0, v6

    div-float v0, v1, v0

    .line 122
    mul-float v1, v3, v0

    float-to-int v1, v1

    .line 123
    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 124
    sget-object v2, Lcom/badlogic/gdx/math/MathUtils$Atan2;->table:[F

    sget v3, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    aget v0, v2, v0

    add-float/2addr v0, v5

    mul-float/2addr v0, v4

    return v0

    .line 114
    :cond_1
    cmpg-float v3, p0, v2

    if-gez v3, :cond_2

    .line 115
    neg-float p0, p0

    :goto_2
    move v4, v0

    move v5, v2

    move v3, p1

    move v2, p0

    .line 119
    goto :goto_0

    :cond_2
    move v0, v1

    .line 118
    goto :goto_2

    :cond_3
    move v0, v3

    .line 121
    goto :goto_1
.end method

.method public static ceil(F)I
    .locals 4
    .parameter

    .prologue
    .line 221
    float-to-double v0, p0

    sget-wide v2, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static ceilPositive(F)I
    .locals 4
    .parameter

    .prologue
    .line 227
    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 194
    :goto_0
    return p1

    .line 193
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 194
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    if-ge p0, p1, :cond_0

    .line 182
    :goto_0
    return p1

    .line 181
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 182
    goto :goto_0
.end method

.method public static clamp(SSS)S
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    if-ge p0, p1, :cond_0

    .line 188
    :goto_0
    return p1

    .line 187
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 188
    goto :goto_0
.end method

.method public static final cos(F)F
    .locals 2
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Cos;->table:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final cosDeg(F)F
    .locals 2
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Cos;->table:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static floor(F)I
    .locals 4
    .parameter

    .prologue
    .line 209
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floorPositive(F)I
    .locals 1
    .parameter

    .prologue
    .line 215
    float-to-int v0, p0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 2
    .parameter

    .prologue
    .line 163
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 164
    :cond_0
    add-int/lit8 v0, p0, -0x1

    .line 165
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 166
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 167
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 168
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 169
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final random()F
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static final random(F)F
    .locals 1
    .parameter

    .prologue
    .line 151
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final random(FF)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 156
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final random(I)I
    .locals 2
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static final random(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final randomBoolean()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static round(F)I
    .locals 4
    .parameter

    .prologue
    .line 233
    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static roundPositive(F)I
    .locals 1
    .parameter

    .prologue
    .line 238
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static final sin(F)F
    .locals 2
    .parameter

    .prologue
    .line 65
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final sinDeg(F)F
    .locals 2
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method
