.class public final Lcom/nianticproject/ingress/common/q/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)D
    .locals 6
    .parameter

    .prologue
    .line 56
    const-wide/high16 v0, 0x41c0

    const-wide v2, 0x4173136d86ce76bfL

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(D)D
    .locals 7
    .parameter

    .prologue
    const-wide v5, 0x401921fb54442d18L

    const-wide v3, 0x400921fb54442d18L

    .line 60
    const-wide v0, 0x3e3921fb54442d18L

    mul-double/2addr v0, p0

    add-double/2addr v0, v3

    :goto_0
    cmpl-double v2, v0, v3

    if-lez v2, :cond_0

    sub-double/2addr v0, v5

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    add-double/2addr v0, v5

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public static c(D)D
    .locals 4
    .parameter

    .prologue
    .line 64
    const-wide v0, 0x400921fb54442d18L

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 65
    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3ff921fb54442d18L

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static d(D)I
    .locals 4
    .parameter

    .prologue
    .line 69
    const-wide v0, 0x400921fb54442d18L

    add-double/2addr v0, p0

    const-wide v2, 0x41a45f306dc9c883L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static e(D)I
    .locals 8
    .parameter

    .prologue
    const-wide/high16 v6, 0x3ff0

    .line 78
    const-wide v0, 0x3fefd70a3d70a3d7L

    const-wide v2, -0x401028f5c28f5c29L

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 79
    const-wide/high16 v2, 0x3fe0

    add-double v4, v6, v0

    sub-double v0, v6, v0

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 80
    const-wide v2, 0x400921fb54442d18L

    sub-double v0, v2, v0

    const-wide v2, 0x41a45f306dc9c883L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
