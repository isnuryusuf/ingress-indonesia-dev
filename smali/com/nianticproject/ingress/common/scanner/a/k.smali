.class public final Lcom/nianticproject/ingress/common/scanner/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[[D

.field private final c:Lcom/nianticproject/ingress/common/scanner/a/a;

.field private d:I

.field private e:I

.field private f:I

.field private g:[I

.field private h:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 38
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 39
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->a:I

    .line 41
    const/16 v0, 0x18

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->b:[[D

    .line 42
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/a/a;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->c:Lcom/nianticproject/ingress/common/scanner/a/a;

    .line 43
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->h:[I

    .line 45
    return-void
.end method

.method private static a([D[F)D
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 187
    aget-wide v0, p0, v2

    aget v2, p1, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    aget-wide v2, p0, v4

    aget v4, p1, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aget-wide v2, p0, v6

    aget v4, p1, v6

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static a([D[DD[D)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 202
    aget-wide v1, p0, v0

    .line 203
    aget-wide v3, p1, v0

    sub-double/2addr v3, v1

    mul-double/2addr v3, p2

    add-double/2addr v1, v3

    aput-wide v1, p4, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->d:I

    .line 52
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    .line 53
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 16
    .parameter

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->d:I

    if-gtz v1, :cond_1

    .line 112
    :cond_0
    return-void

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->d:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->e:I

    .line 103
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    .line 104
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->e:I

    if-ge v1, v2, :cond_2

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    aput v1, v2, v3

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->c:Lcom/nianticproject/ingress/common/scanner/a/a;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/a/a;->a(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 109
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    const/4 v1, 0x6

    if-ge v12, v1, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->c:Lcom/nianticproject/ingress/common/scanner/a/a;

    invoke-virtual {v1, v12}, Lcom/nianticproject/ingress/common/scanner/a/a;->a(I)[F

    move-result-object v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    const/4 v2, 0x0

    aget v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->b:[[D

    aget-object v4, v1, v5

    invoke-static {v4, v13}, Lcom/nianticproject/ingress/common/scanner/a/k;->a([D[F)D

    move-result-wide v2

    const/4 v1, 0x1

    move v8, v5

    move v10, v6

    move-object v6, v4

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    if-ge v1, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    aget v9, v4, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->b:[[D

    aget-object v7, v4, v9

    invoke-static {v7, v13}, Lcom/nianticproject/ingress/common/scanner/a/k;->a([D[F)D

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmpl-double v11, v2, v14

    if-ltz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->h:[I

    add-int/lit8 v11, v10, 0x1

    aput v8, v14, v10

    move v8, v11

    :goto_3
    const-wide/16 v10, 0x0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_3

    const/4 v10, 0x1

    move v11, v10

    :goto_4
    const-wide/16 v14, 0x0

    cmpg-double v10, v4, v14

    if-gez v10, :cond_4

    const/4 v10, 0x1

    :goto_5
    if-eq v11, v10, :cond_9

    const-wide/high16 v10, 0x3ff0

    sub-double v14, v4, v2

    div-double/2addr v10, v14

    const-wide/16 v14, 0x0

    cmpg-double v14, v4, v14

    if-gez v14, :cond_5

    mul-double v2, v10, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->b:[[D

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->e:I

    aget-object v10, v10, v11

    invoke-static {v7, v6, v2, v3, v10}, Lcom/nianticproject/ingress/common/scanner/a/k;->a([D[DD[D)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->h:[I

    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->e:I

    aput v6, v3, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->e:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->e:I

    :goto_7
    add-int/lit8 v1, v1, 0x1

    move-object v6, v7

    move v8, v9

    move v10, v2

    move-wide v2, v4

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    move v11, v10

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    neg-double v2, v2

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->b:[[D

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->e:I

    aget-object v10, v10, v11

    invoke-static {v6, v7, v2, v3, v10}, Lcom/nianticproject/ingress/common/scanner/a/k;->a([D[DD[D)V

    goto :goto_6

    :cond_6
    const/4 v1, 0x3

    if-lt v10, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->h:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->h:[I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    .line 109
    :cond_7
    :goto_8
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_1

    .line 110
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    goto :goto_8

    :cond_9
    move v2, v8

    goto :goto_7

    :cond_a
    move v8, v10

    goto/16 :goto_3
.end method

.method public final varargs a([D)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    array-length v0, p1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->b:[[D

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->d:I

    aget-object v0, v0, v2

    .line 63
    :goto_1
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->a:I

    if-ge v1, v2, :cond_1

    .line 64
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    aput v2, v0, v1

    .line 68
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    .line 69
    return-void
.end method

.method public final a(I)[D
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->b:[[D

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->g:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a/k;->f:I

    return v0
.end method
