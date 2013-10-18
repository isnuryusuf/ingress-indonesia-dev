.class public final Lcom/google/a/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D

.field private static final b:[I

.field private static final c:[[I

.field private static final d:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 52
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/a/d/f;->a:D

    .line 90
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/a/d/f;->b:[I

    .line 111
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/a/d/f;->c:[[I

    .line 137
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/a/d/f;->d:[[I

    return-void

    .line 90
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 111
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 137
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static strictfp a(D)I
    .locals 4
    .parameter

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 86
    const-wide/high16 v2, 0x7ff0

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3fe

    goto :goto_0
.end method

.method public static strictfp a(I)I
    .locals 1
    .parameter

    .prologue
    .line 106
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 107
    sget-object v0, Lcom/google/a/d/f;->b:[I

    aget v0, v0, p0

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static strictfp a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-ltz p0, :cond_0

    if-ge p0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 132
    if-ltz p1, :cond_1

    if-ge p1, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 133
    sget-object v0, Lcom/google/a/d/f;->c:[[I

    aget-object v0, v0, p0

    aget v0, v0, p1

    return v0

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v1, v2

    .line 132
    goto :goto_1
.end method

.method private static strictfp a(Lcom/google/a/d/c;Lcom/google/a/d/c;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 700
    invoke-virtual {p0, p1}, Lcom/google/a/d/c;->a(Lcom/google/a/d/c;)D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1

    const-wide/high16 v0, -0x4010

    .line 701
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/google/a/d/c;->a(Lcom/google/a/d/c;D)Lcom/google/a/d/c;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/a/d/c;->a(Lcom/google/a/d/c;Lcom/google/a/d/c;)Lcom/google/a/d/c;

    move-result-object v2

    .line 702
    invoke-virtual {p0}, Lcom/google/a/d/c;->c()D

    move-result-wide v3

    .line 703
    invoke-virtual {p1}, Lcom/google/a/d/c;->c()D

    move-result-wide v5

    .line 705
    cmpg-double v7, v3, v5

    if-ltz v7, :cond_0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/a/d/c;->c(Lcom/google/a/d/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/a/d/c;->b(Lcom/google/a/d/c;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 710
    :goto_1
    cmpl-double v2, v0, v8

    if-lez v2, :cond_3

    .line 711
    const/4 v0, 0x1

    .line 716
    :goto_2
    return v0

    .line 700
    :cond_1
    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/a/d/c;->b(Lcom/google/a/d/c;)D

    move-result-wide v0

    goto :goto_1

    .line 713
    :cond_3
    cmpg-double v0, v0, v8

    if-gez v0, :cond_4

    .line 714
    const/4 v0, -0x1

    goto :goto_2

    .line 716
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static strictfp a(Lcom/google/a/d/c;Lcom/google/a/d/c;Lcom/google/a/d/c;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 720
    invoke-static {p0, p1}, Lcom/google/a/d/f;->a(Lcom/google/a/d/c;Lcom/google/a/d/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 722
    invoke-static {p1, p2}, Lcom/google/a/d/f;->a(Lcom/google/a/d/c;Lcom/google/a/d/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 723
    invoke-static {p2, p0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/c;Lcom/google/a/d/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 724
    if-lez v0, :cond_0

    .line 725
    const/4 v0, 0x1

    .line 730
    :goto_0
    return v0

    .line 727
    :cond_0
    if-gez v0, :cond_1

    .line 728
    const/4 v0, -0x1

    goto :goto_0

    .line 730
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    invoke-static {p0, p1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v0

    return v0
.end method

.method public static strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v2

    .line 584
    const-wide v4, 0x3cdcd2b297d889bcL

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 585
    const/4 v2, 0x1

    .line 592
    :cond_0
    :goto_0
    return v2

    .line 588
    :cond_1
    const-wide v4, -0x43232d4d68277644L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 589
    const/4 v2, -0x1

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p2}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    const-wide/high16 v2, -0x4010

    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    const-wide/high16 v4, -0x4010

    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_9

    const-wide/high16 v6, -0x4010

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/a/d/y;->a()D

    move-result-wide v11

    invoke-virtual {v9}, Lcom/google/a/d/y;->a()D

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/a/d/y;->a()D

    move-result-wide v15

    cmpg-double v17, v15, v13

    if-ltz v17, :cond_5

    cmpl-double v17, v15, v13

    if-nez v17, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/google/a/d/y;->g(Lcom/google/a/d/y;)Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_5
    cmpg-double v4, v11, v13

    if-ltz v4, :cond_6

    cmpl-double v4, v11, v13

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->g(Lcom/google/a/d/y;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v8, v10}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    :goto_4
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_e

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v2, 0x3ff0

    goto :goto_1

    :cond_8
    const-wide/high16 v4, 0x3ff0

    goto :goto_2

    :cond_9
    const-wide/high16 v6, 0x3ff0

    goto :goto_3

    :cond_a
    move-object/from16 v0, p2

    invoke-static {v0, v10, v9}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    goto :goto_4

    :cond_b
    cmpg-double v2, v11, v15

    if-ltz v2, :cond_c

    cmpl-double v2, v11, v15

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p2}, Lcom/google/a/d/y;->g(Lcom/google/a/d/y;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    move-object/from16 v0, p1

    invoke-static {v0, v9, v8}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v2

    mul-double/2addr v2, v4

    goto :goto_4

    :cond_d
    move-object/from16 v0, p2

    invoke-static {v0, v10, v9}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    goto :goto_4

    :cond_e
    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_f

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_f
    new-instance v2, Lcom/google/a/d/c;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/a/d/y;->i:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/a/d/y;->j:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/c;-><init>(DD)V

    new-instance v3, Lcom/google/a/d/c;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/a/d/y;->i:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/a/d/y;->j:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/a/d/c;-><init>(DD)V

    new-instance v4, Lcom/google/a/d/c;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/google/a/d/y;->i:D

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/google/a/d/y;->j:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/a/d/c;-><init>(DD)V

    invoke-static {v2, v3, v4}, Lcom/google/a/d/f;->a(Lcom/google/a/d/c;Lcom/google/a/d/c;Lcom/google/a/d/c;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/a/d/c;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/a/d/y;->j:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/a/d/y;->h:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/c;-><init>(DD)V

    new-instance v3, Lcom/google/a/d/c;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/a/d/y;->j:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/a/d/y;->h:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/a/d/c;-><init>(DD)V

    new-instance v4, Lcom/google/a/d/c;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/google/a/d/y;->j:D

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/google/a/d/y;->h:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/a/d/c;-><init>(DD)V

    invoke-static {v2, v3, v4}, Lcom/google/a/d/f;->a(Lcom/google/a/d/c;Lcom/google/a/d/c;Lcom/google/a/d/c;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/a/d/c;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/a/d/y;->h:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/a/d/y;->i:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/c;-><init>(DD)V

    new-instance v3, Lcom/google/a/d/c;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/a/d/y;->h:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/a/d/y;->i:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/a/d/c;-><init>(DD)V

    new-instance v4, Lcom/google/a/d/c;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/google/a/d/y;->h:D

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/google/a/d/y;->i:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/a/d/c;-><init>(DD)V

    invoke-static {v2, v3, v4}, Lcom/google/a/d/f;->a(Lcom/google/a/d/c;Lcom/google/a/d/c;Lcom/google/a/d/c;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public static strictfp a()Lcom/google/a/d/y;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/google/a/d/y;->d:Lcom/google/a/d/y;

    return-object v0
.end method

.method public static strictfp a(Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 1
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/a/d/y;->c()Lcom/google/a/d/y;

    move-result-object v0

    return-object v0
.end method

.method public static strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-static {p1, p0}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {p1, p0}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/google/a/d/y;->a:Lcom/google/a/d/y;

    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/d/y;->c()Lcom/google/a/d/y;

    move-result-object v0

    goto :goto_0
.end method

.method public static strictfp b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 752
    .line 753
    invoke-static {p1, p3, p0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v0

    if-ltz v0, :cond_3

    move v0, v1

    .line 756
    :goto_0
    invoke-static {p2, p3, p1}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 757
    add-int/lit8 v0, v0, 0x1

    .line 759
    :cond_0
    invoke-static {p0, p3, p2}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)I

    move-result v3

    if-lez v3, :cond_1

    .line 760
    add-int/lit8 v0, v0, 0x1

    .line 762
    :cond_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method
