.class public final Lcom/nianticproject/ingress/common/w/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(F)F
    .locals 4
    .parameter

    .prologue
    .line 31
    const/high16 v0, 0x3f80

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(FF)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 121
    sub-float v0, p1, p0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static a(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    return v0
.end method

.method public static a(DDDDDD)[D
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const/16 v0, 0x16

    new-array v1, v0, [D

    .line 105
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 106
    int-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v2, v4

    .line 109
    mul-int/lit8 v4, v0, 0x2

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v5, v2

    const-wide/high16 v7, 0x3ff0

    sub-double/2addr v7, v2

    mul-double/2addr v5, v7

    mul-double/2addr v5, p0

    const-wide/high16 v7, 0x4000

    const-wide/high16 v9, 0x3ff0

    sub-double/2addr v9, v2

    mul-double/2addr v7, v9

    mul-double/2addr v7, v2

    mul-double/2addr v7, p4

    add-double/2addr v5, v7

    mul-double v7, v2, v2

    mul-double v7, v7, p8

    add-double/2addr v5, v7

    aput-wide v5, v1, v4

    .line 112
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v5, v2

    const-wide/high16 v7, 0x3ff0

    sub-double/2addr v7, v2

    mul-double/2addr v5, v7

    mul-double/2addr v5, p2

    const-wide/high16 v7, 0x4000

    const-wide/high16 v9, 0x3ff0

    sub-double/2addr v9, v2

    mul-double/2addr v7, v9

    mul-double/2addr v7, v2

    mul-double v7, v7, p6

    add-double/2addr v5, v7

    mul-double/2addr v2, v2

    mul-double v2, v2, p10

    add-double/2addr v2, v5

    aput-wide v2, v1, v4

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object v1
.end method

.method public static b(F)F
    .locals 2
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static c(F)F
    .locals 3
    .parameter

    .prologue
    const v2, 0x40c90fdb

    .line 62
    move v0, p0

    :goto_0
    const v1, 0x40490fdb

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sub-float/2addr v0, v2

    goto :goto_0

    .line 63
    :cond_0
    :goto_1
    const v1, -0x3fb6f025

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    add-float/2addr v0, v2

    goto :goto_1

    .line 64
    :cond_1
    return v0
.end method

.method public static d(F)F
    .locals 3
    .parameter

    .prologue
    const v2, 0x40c90fdb

    .line 80
    move v0, p0

    :goto_0
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    sub-float/2addr v0, v2

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    goto :goto_1

    .line 82
    :cond_1
    return v0
.end method
