.class final Lcom/nianticproject/ingress/common/scanner/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    const v0, 0x3e991687

    mul-float/2addr v0, p0

    const v1, 0x3f1645a2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const v1, 0x3de978d5

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method static a(I)F
    .locals 4
    .parameter

    .prologue
    const v3, 0x3b808081

    .line 19
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 21
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 22
    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 23
    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(FFF)F

    move-result v0

    return v0
.end method

.method static b(FFF)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x437f

    .line 32
    invoke-static {p0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 33
    invoke-static {p1}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 34
    invoke-static {p2}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 35
    const/high16 v3, 0x3f80

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 36
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    .line 37
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method
