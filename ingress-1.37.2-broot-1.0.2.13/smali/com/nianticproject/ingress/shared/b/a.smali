.class public final Lcom/nianticproject/ingress/shared/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)D
    .locals 4
    .parameter

    .prologue
    .line 305
    const-wide v0, 0x40fb21d000000000L

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDDD)D
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    sub-double v0, p4, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 161
    sub-double v2, p6, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 162
    const-wide/high16 v4, 0x4000

    div-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 165
    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 166
    const-wide v2, 0x41584db080000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/google/a/d/ad;)D
    .locals 4
    .parameter

    .prologue
    const-wide v2, 0x41584db080000000L

    .line 320
    invoke-interface {p0}, Lcom/google/a/d/ad;->f()Lcom/google/a/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/h;->d()D

    move-result-wide v0

    .line 321
    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    .line 323
    return-wide v0
.end method

.method public static a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/a/d/u;->c()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/a/d/u;->f()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/shared/b/a;->a(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/LocationE6;Lcom/nianticproject/ingress/gameentity/components/LocationE6;)D
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x412e848000000000L

    .line 150
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v8

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLngE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v8

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatE6()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v8

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLngE6()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/shared/b/a;->a(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/google/a/d/u;)Lcom/google/a/d/u;
    .locals 15
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 80
    invoke-virtual {p0}, Lcom/google/a/d/u;->f()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v3, v0

    .line 81
    int-to-double v0, v7

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v0, v4

    const-wide v4, 0x3f91df46a2529d39L

    mul-double v5, v0, v4

    .line 82
    int-to-double v0, v3

    const-wide v8, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v0, v8

    const-wide v8, 0x3f91df46a2529d39L

    mul-double v1, v0, v8

    .line 83
    const-wide v8, 0x404ca5dc1a63c1f8L

    mul-double/2addr v8, v5

    const-wide v10, 0x412e848000000000L

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 84
    const-wide v8, 0x404ca5dc1a63c1f8L

    mul-double/2addr v8, v1

    const-wide v10, 0x412e848000000000L

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 86
    :goto_0
    if-eq v7, v4, :cond_0

    .line 87
    int-to-double v5, v4

    const-wide v7, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v5, v7

    const-wide v7, 0x3f91df46a2529d39L

    mul-double v6, v5, v7

    .line 89
    const-wide v8, 0x404ca5dc1a63c1f8L

    mul-double/2addr v8, v6

    const-wide v10, 0x412e848000000000L

    mul-double/2addr v8, v10

    double-to-int v5, v8

    move v12, v5

    move-wide v13, v6

    move-wide v5, v13

    move v7, v4

    move v4, v12

    goto :goto_0

    .line 92
    :cond_0
    :goto_1
    if-eq v3, v0, :cond_1

    .line 93
    int-to-double v1, v0

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v1, v3

    const-wide v3, 0x3f91df46a2529d39L

    mul-double v2, v1, v3

    .line 95
    const-wide v7, 0x404ca5dc1a63c1f8L

    mul-double/2addr v7, v2

    const-wide v9, 0x412e848000000000L

    mul-double/2addr v7, v9

    double-to-int v1, v7

    move v12, v1

    move-wide v13, v2

    move-wide v1, v13

    move v3, v0

    move v0, v12

    goto :goto_1

    .line 98
    :cond_1
    invoke-static {v5, v6, v1, v2}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/a/d/u;DD)Lcom/google/a/d/u;
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    const-wide v1, 0x408f400000000000L

    cmpg-double v1, p3, v1

    if-gez v1, :cond_0

    .line 269
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, p3

    const-wide v3, 0x40fb21d000000000L

    div-double/2addr v1, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/a/d/u;->c()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/nianticproject/ingress/shared/b/a;->a(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->b(Lcom/google/a/d/u;)Lcom/google/a/d/u;

    move-result-object v1

    .line 271
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/d/u;->b()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/a/d/u;->e()D

    move-result-wide v5

    const-wide v7, 0x41584db080000000L

    div-double v7, p3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v11, v3, v7

    mul-double v13, v1, v9

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v9, v13

    mul-double/2addr v1, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v3, v9

    sub-double v3, v7, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    add-double/2addr v1, v5

    invoke-static {v11, v12, v1, v2}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Lcom/google/a/d/u;Lcom/google/a/d/u;D)Lcom/google/a/d/u;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    .line 301
    invoke-static {p0, v0, v1, p2, p3}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;DD)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/a/d/u;Lcom/google/a/d/u;)D
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/a/d/u;->c()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/a/d/u;->f()D

    move-result-wide v6

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x4076800000000000L

    add-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static b(Lcom/google/a/d/u;DD)Lcom/google/a/d/u;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 281
    invoke-static {p0, v0, v1, p3, p4}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;DD)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;
    .locals 1
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;-><init>(Lcom/google/a/d/u;)V

    return-object v0
.end method

.method public static c(Lcom/google/a/d/u;)I
    .locals 5
    .parameter

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 434
    invoke-virtual {p0}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/a/d/u;->f()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
