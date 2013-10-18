.class public final Lcom/nianticproject/ingress/common/k/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 13
    sput v1, Lcom/nianticproject/ingress/common/k/aa;->b:I

    .line 14
    sput v0, Lcom/nianticproject/ingress/common/k/aa;->c:I

    .line 15
    sput v1, Lcom/nianticproject/ingress/common/k/aa;->d:I

    .line 16
    sput v0, Lcom/nianticproject/ingress/common/k/aa;->e:I

    .line 22
    const/16 v0, 0x20

    sput v0, Lcom/nianticproject/ingress/common/k/aa;->a:I

    return-void
.end method

.method private static a(F)F
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const v3, 0x38d1b717

    .line 218
    sub-float v2, p0, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move p0, v0

    .line 225
    :cond_0
    :goto_0
    return p0

    .line 220
    :cond_1
    sub-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    move p0, v1

    .line 221
    goto :goto_0

    .line 222
    :cond_2
    add-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 223
    const/high16 p0, -0x4080

    goto :goto_0
.end method

.method public static a()Lcom/nianticproject/ingress/common/j/c;
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/nianticproject/ingress/common/k/aa;->a:I

    add-int/lit8 v1, v0, -0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/k/aa;->a(II)Lcom/nianticproject/ingress/common/j/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(II)Lcom/nianticproject/ingress/common/j/c;
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 52
    :try_start_0
    const-string/jumbo v2, "SphereData.prepareMeshData"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 53
    mul-int v2, p0, p1

    sget v3, Lcom/nianticproject/ingress/common/k/aa;->b:I

    sget v4, Lcom/nianticproject/ingress/common/k/aa;->c:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    new-array v6, v2, [F

    .line 54
    add-int/lit8 v2, p1, -0x1

    mul-int v2, v2, p0

    sget v3, Lcom/nianticproject/ingress/common/k/aa;->d:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    new-array v7, v2, [S

    .line 55
    add-int/lit8 v2, p1, -0x1

    mul-int v2, v2, p0

    sget v3, Lcom/nianticproject/ingress/common/k/aa;->e:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    new-array v8, v2, [S

    .line 57
    mul-int v2, p0, p1

    sget v3, Lcom/nianticproject/ingress/common/k/aa;->b:I

    sget v4, Lcom/nianticproject/ingress/common/k/aa;->c:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    array-length v2, v6

    if-gt v3, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v4, "Unexpected index > then array length."

    invoke-static {v2, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const/16 v2, 0x7fff

    if-gt v3, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Unexpected index > max short value."

    invoke-static {v2, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    div-float v5, v2, v4

    const/high16 v2, 0x3f80

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    div-float v9, v2, v4

    const v2, 0x40c90fdb

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    div-float v10, v2, v4

    const v2, 0x40490fdb

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    div-float v11, v2, v4

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    move/from16 v0, p1

    if-ge v4, v0, :cond_3

    int-to-float v2, v4

    mul-float/2addr v2, v11

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    neg-double v12, v12

    double-to-float v12, v12

    invoke-static {v12}, Lcom/nianticproject/ingress/common/k/aa;->a(F)F

    move-result v12

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v2, v13

    invoke-static {v2}, Lcom/nianticproject/ingress/common/k/aa;->a(F)F

    move-result v13

    int-to-float v2, v4

    mul-float v14, v2, v9

    const/4 v2, 0x0

    :goto_3
    move/from16 v0, p0

    if-ge v2, v0, :cond_2

    int-to-float v15, v2

    mul-float/2addr v15, v10

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nianticproject/ingress/common/k/aa;->a(F)F

    move-result v16

    mul-float v16, v16, v13

    float-to-double v0, v15

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v15, v0

    invoke-static {v15}, Lcom/nianticproject/ingress/common/k/aa;->a(F)F

    move-result v15

    mul-float/2addr v15, v13

    int-to-float v0, v2

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-int/lit8 v18, v3, 0x0

    aput v16, v6, v18

    add-int/lit8 v16, v3, 0x1

    neg-float v0, v12

    move/from16 v18, v0

    aput v18, v6, v16

    add-int/lit8 v16, v3, 0x2

    aput v15, v6, v16

    sget v15, Lcom/nianticproject/ingress/common/k/aa;->b:I

    add-int/2addr v3, v15

    add-int/lit8 v15, v3, 0x0

    aput v17, v6, v15

    add-int/lit8 v15, v3, 0x1

    aput v14, v6, v15

    sget v15, Lcom/nianticproject/ingress/common/k/aa;->c:I

    add-int/2addr v3, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, p1, -0x1

    mul-int v2, v2, p0

    sget v3, Lcom/nianticproject/ingress/common/k/aa;->d:I

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0x2

    array-length v2, v7

    if-gt v3, v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    const-string/jumbo v4, "Unexpected index > then array length."

    invoke-static {v2, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const/16 v2, 0x7fff

    if-gt v3, v2, :cond_5

    const/4 v2, 0x1

    :goto_5
    const-string/jumbo v3, "Unexpected index > max short value."

    invoke-static {v2, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v4, p1, -0x1

    if-ge v2, v4, :cond_7

    mul-int v9, p0, v2

    add-int/lit8 v4, v2, 0x1

    mul-int v10, p0, v4

    const/4 v4, 0x0

    :goto_7
    move/from16 v0, p0

    if-ge v4, v0, :cond_6

    add-int/lit8 v5, v4, 0x1

    rem-int v5, v5, p0

    add-int v11, v9, v4

    int-to-short v11, v11

    add-int v12, v9, v5

    int-to-short v12, v12

    add-int v13, v10, v4

    int-to-short v13, v13

    add-int/2addr v5, v10

    int-to-short v5, v5

    add-int/lit8 v14, v3, 0x0

    aput-short v11, v7, v14

    add-int/lit8 v11, v3, 0x1

    aput-short v13, v7, v11

    add-int/lit8 v11, v3, 0x2

    aput-short v12, v7, v11

    add-int/lit8 v11, v3, 0x3

    aput-short v12, v7, v11

    add-int/lit8 v11, v3, 0x4

    aput-short v13, v7, v11

    add-int/lit8 v11, v3, 0x5

    aput-short v5, v7, v11

    sget v5, Lcom/nianticproject/ingress/common/k/aa;->d:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_7

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, p1, -0x1

    mul-int v2, v2, p0

    sget v3, Lcom/nianticproject/ingress/common/k/aa;->e:I

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0x2

    array-length v2, v8

    if-gt v3, v2, :cond_8

    const/4 v2, 0x1

    :goto_8
    const-string/jumbo v4, "Unexpected index > then array length."

    invoke-static {v2, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const/16 v2, 0x7fff

    if-gt v3, v2, :cond_9

    const/4 v2, 0x1

    :goto_9
    const-string/jumbo v3, "Unexpected index > max short value."

    invoke-static {v2, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_a
    add-int/lit8 v2, p1, -0x1

    if-ge v4, v2, :cond_b

    mul-int v5, p0, v4

    add-int/lit8 v2, v4, 0x1

    mul-int v9, p0, v2

    const/4 v2, 0x0

    :goto_b
    move/from16 v0, p0

    if-ge v2, v0, :cond_a

    add-int/lit8 v10, v2, 0x1

    rem-int v10, v10, p0

    add-int v11, v5, v2

    int-to-short v11, v11

    add-int/2addr v10, v5

    int-to-short v10, v10

    add-int v12, v9, v2

    int-to-short v12, v12

    add-int/lit8 v13, v3, 0x2

    aput-short v11, v8, v13

    add-int/lit8 v13, v3, 0x3

    aput-short v10, v8, v13

    add-int/lit8 v10, v3, 0x0

    aput-short v11, v8, v10

    add-int/lit8 v10, v3, 0x1

    aput-short v12, v8, v10

    sget v10, Lcom/nianticproject/ingress/common/k/aa;->e:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_a

    .line 59
    :cond_b
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x0

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v5, 0x0

    const/4 v9, 0x3

    const-string/jumbo v10, "a_position"

    invoke-direct {v4, v5, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v5, 0x3

    const/4 v9, 0x2

    const-string/jumbo v10, "a_texCoord0"

    invoke-direct {v4, v5, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    .line 63
    invoke-static {v6, v7, v8, v2}, Lcom/nianticproject/ingress/common/j/a;->a([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/nianticproject/ingress/common/j/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 71
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v2
.end method
