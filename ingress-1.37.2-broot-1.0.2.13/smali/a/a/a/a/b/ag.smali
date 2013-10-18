.class public final La/a/a/a/b/ag;
.super La/a/a/a/b/b;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected transient b:[J

.field protected transient c:[J

.field protected transient d:[Z

.field protected final e:F

.field protected transient f:I

.field protected transient g:I

.field protected transient h:I

.field protected i:I

.field protected volatile transient j:La/a/a/a/b/af;

.field protected volatile transient k:La/a/a/a/b/cl;

.field protected volatile transient l:La/a/a/a/b/cb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, La/a/a/a/b/ag;-><init>(I)V

    .line 121
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 126
    const/16 v0, 0x10

    invoke-direct {p0, v0}, La/a/a/a/b/ag;-><init>(I)V

    .line 127
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f40

    .line 104
    invoke-direct {p0}, La/a/a/a/b/b;-><init>()V

    .line 105
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The expected number of elements must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput v1, p0, La/a/a/a/b/ag;->e:F

    .line 108
    invoke-static {p1, v1}, La/a/a/a/e;->b(IF)I

    move-result v0

    iput v0, p0, La/a/a/a/b/ag;->f:I

    .line 109
    iget v0, p0, La/a/a/a/b/ag;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/ag;->h:I

    .line 110
    iget v0, p0, La/a/a/a/b/ag;->f:I

    invoke-static {v0, v1}, La/a/a/a/e;->a(IF)I

    move-result v0

    iput v0, p0, La/a/a/a/b/ag;->g:I

    .line 111
    iget v0, p0, La/a/a/a/b/ag;->f:I

    new-array v0, v0, [J

    iput-object v0, p0, La/a/a/a/b/ag;->b:[J

    .line 112
    iget v0, p0, La/a/a/a/b/ag;->f:I

    new-array v0, v0, [J

    iput-object v0, p0, La/a/a/a/b/ag;->c:[J

    .line 113
    iget v0, p0, La/a/a/a/b/ag;->f:I

    new-array v0, v0, [Z

    iput-object v0, p0, La/a/a/a/b/ag;->d:[Z

    .line 114
    return-void
.end method

.method private b(I)V
    .locals 17
    .parameter

    .prologue
    .line 675
    const/4 v3, 0x0

    .line 676
    move-object/from16 v0, p0

    iget-object v5, v0, La/a/a/a/b/ag;->d:[Z

    .line 678
    move-object/from16 v0, p0

    iget-object v6, v0, La/a/a/a/b/ag;->b:[J

    .line 679
    move-object/from16 v0, p0

    iget-object v7, v0, La/a/a/a/b/ag;->c:[J

    .line 680
    add-int/lit8 v8, p1, -0x1

    .line 681
    move/from16 v0, p1

    new-array v9, v0, [J

    .line 682
    move/from16 v0, p1

    new-array v10, v0, [J

    .line 683
    move/from16 v0, p1

    new-array v11, v0, [Z

    .line 684
    move-object/from16 v0, p0

    iget v2, v0, La/a/a/a/b/ag;->i:I

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_2

    .line 685
    :goto_1
    aget-boolean v3, v5, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 686
    :cond_0
    aget-wide v12, v6, v2

    .line 687
    invoke-static {v12, v13}, La/a/a/a/e;->a(J)J

    move-result-wide v14

    long-to-int v3, v14

    and-int/2addr v3, v8

    .line 688
    :goto_2
    aget-boolean v14, v11, v3

    if-eqz v14, :cond_1

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v8

    goto :goto_2

    .line 689
    :cond_1
    const/4 v14, 0x1

    aput-boolean v14, v11, v3

    .line 690
    aput-wide v12, v9, v3

    .line 691
    aget-wide v12, v7, v2

    aput-wide v12, v10, v3

    .line 692
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 694
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, La/a/a/a/b/ag;->f:I

    .line 695
    move-object/from16 v0, p0

    iput v8, v0, La/a/a/a/b/ag;->h:I

    .line 696
    move-object/from16 v0, p0

    iget v2, v0, La/a/a/a/b/ag;->f:I

    move-object/from16 v0, p0

    iget v3, v0, La/a/a/a/b/ag;->e:F

    invoke-static {v2, v3}, La/a/a/a/e;->a(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, La/a/a/a/b/ag;->g:I

    .line 697
    move-object/from16 v0, p0

    iput-object v9, v0, La/a/a/a/b/ag;->b:[J

    .line 698
    move-object/from16 v0, p0

    iput-object v10, v0, La/a/a/a/b/ag;->c:[J

    .line 699
    move-object/from16 v0, p0

    iput-object v11, v0, La/a/a/a/b/ag;->d:[Z

    .line 700
    return-void
.end method

.method private f()La/a/a/a/b/ag;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 712
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/ag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    iput-object v1, v0, La/a/a/a/b/ag;->k:La/a/a/a/b/cl;

    .line 718
    iput-object v1, v0, La/a/a/a/b/ag;->l:La/a/a/a/b/cb;

    .line 719
    iput-object v1, v0, La/a/a/a/b/ag;->j:La/a/a/a/b/af;

    .line 720
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, La/a/a/a/b/ag;->b:[J

    .line 721
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, La/a/a/a/b/ag;->c:[J

    .line 722
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, La/a/a/a/b/ag;->d:[Z

    .line 723
    return-object v0

    .line 715
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final a(I)I
    .locals 4
    .parameter

    .prologue
    .line 265
    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    .line 266
    :goto_1
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, La/a/a/a/e;->a(J)J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v1, v2

    .line 268
    if-gt p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    if-le v1, v0, :cond_2

    .line 271
    :cond_0
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    iget-object v2, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, p1

    .line 273
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    iget-object v2, p0, La/a/a/a/b/ag;->c:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, p1

    move p1, v0

    goto :goto_0

    .line 268
    :cond_1
    if-lt p1, v1, :cond_2

    if-gt v1, v0, :cond_0

    .line 269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    goto :goto_1

    .line 275
    :cond_3
    iget-object v0, p0, La/a/a/a/b/ag;->d:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 276
    return p1
.end method

.method public final a(J)J
    .locals 3
    .parameter

    .prologue
    .line 281
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    .line 283
    :goto_0
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 285
    iget v1, p0, La/a/a/a/b/ag;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/ag;->i:I

    .line 286
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    aget-wide v1, v1, v0

    .line 287
    invoke-virtual {p0, v0}, La/a/a/a/b/ag;->a(I)I

    move-wide v0, v1

    .line 292
    :goto_1
    return-wide v0

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 292
    :cond_1
    iget-wide v0, p0, La/a/a/a/b/ag;->a_:J

    goto :goto_1
.end method

.method public final a(JJ)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    .line 189
    :goto_0
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    aget-wide v1, v1, v0

    .line 192
    iget-object v3, p0, La/a/a/a/b/ag;->c:[J

    aput-wide p3, v3, v0

    move-wide v0, v1

    .line 202
    :goto_1
    return-wide v0

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 198
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aput-wide p1, v1, v0

    .line 199
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    aput-wide p3, v1, v0

    .line 200
    iget v0, p0, La/a/a/a/b/ag;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/ag;->i:I

    iget v1, p0, La/a/a/a/b/ag;->g:I

    if-lt v0, v1, :cond_2

    iget v0, p0, La/a/a/a/b/ag;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->e:F

    invoke-static {v0, v1}, La/a/a/a/e;->b(IF)I

    move-result v0

    invoke-direct {p0, v0}, La/a/a/a/b/ag;->b(I)V

    .line 202
    :cond_2
    iget-wide v0, p0, La/a/a/a/b/ag;->a_:J

    goto :goto_1
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 206
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 208
    invoke-static {v4, v5}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    .line 210
    :goto_0
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v6, v1, v0

    cmp-long v1, v6, v4

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 213
    iget-object v4, p0, La/a/a/a/b/ag;->c:[J

    aput-wide v2, v4, v0

    move-object v0, v1

    .line 223
    :goto_1
    return-object v0

    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    const/4 v6, 0x1

    aput-boolean v6, v1, v0

    .line 219
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aput-wide v4, v1, v0

    .line 220
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    aput-wide v2, v1, v0

    .line 221
    iget v0, p0, La/a/a/a/b/ag;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/ag;->i:I

    iget v1, p0, La/a/a/a/b/ag;->g:I

    if-lt v0, v1, :cond_2

    iget v0, p0, La/a/a/a/b/ag;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->e:F

    invoke-static {v0, v1}, La/a/a/a/e;->b(IF)I

    move-result v0

    invoke-direct {p0, v0}, La/a/a/a/b/ag;->b(I)V

    .line 223
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5
    .parameter

    .prologue
    .line 296
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 298
    invoke-static {v1, v2}, La/a/a/a/e;->a(J)J

    move-result-wide v3

    long-to-int v0, v3

    iget v3, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v3

    .line 300
    :goto_0
    iget-object v3, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 301
    iget-object v3, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 302
    iget v1, p0, La/a/a/a/b/ag;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/ag;->i:I

    .line 303
    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    aget-wide v1, v1, v0

    .line 304
    invoke-virtual {p0, v0}, La/a/a/a/b/ag;->a(I)I

    .line 305
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 309
    :goto_1
    return-object v0

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v3

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()La/a/a/a/b/cl;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, La/a/a/a/b/ag;->k:La/a/a/a/b/cl;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/b/ak;-><init>(La/a/a/a/b/ag;B)V

    iput-object v0, p0, La/a/a/a/b/ag;->k:La/a/a/a/b/cl;

    .line 572
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ag;->k:La/a/a/a/b/cl;

    return-object v0
.end method

.method public final b(J)Z
    .locals 6
    .parameter

    .prologue
    .line 345
    iget-object v2, p0, La/a/a/a/b/ag;->c:[J

    .line 346
    iget-object v3, p0, La/a/a/a/b/ag;->d:[Z

    .line 347
    iget v0, p0, La/a/a/a/b/ag;->f:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    aget-boolean v0, v3, v1

    if-eqz v0, :cond_1

    aget-wide v4, v2, v1

    cmp-long v0, v4, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 348
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final c()La/a/a/a/b/cb;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, La/a/a/a/b/ag;->l:La/a/a/a/b/cb;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/ah;

    invoke-direct {v0, p0}, La/a/a/a/b/ah;-><init>(La/a/a/a/b/ag;)V

    iput-object v0, p0, La/a/a/a/b/ag;->l:La/a/a/a/b/cb;

    .line 600
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ag;->l:La/a/a/a/b/cb;

    return-object v0
.end method

.method public final c(J)Z
    .locals 3
    .parameter

    .prologue
    .line 336
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    .line 338
    :goto_0
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 342
    :goto_1
    return v0

    .line 340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 342
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 357
    iget v0, p0, La/a/a/a/b/ag;->i:I

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/ag;->i:I

    .line 359
    iget-object v0, p0, La/a/a/a/b/ag;->d:[Z

    invoke-static {v0}, La/a/a/a/a/a;->a([Z)V

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, La/a/a/a/b/ag;->f()La/a/a/a/b/ag;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)J
    .locals 3
    .parameter

    .prologue
    .line 325
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    .line 327
    :goto_0
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, La/a/a/a/b/ag;->c:[J

    aget-wide v0, v1, v0

    .line 331
    :goto_1
    return-wide v0

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/ag;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 331
    :cond_1
    iget-wide v0, p0, La/a/a/a/b/ag;->a_:J

    goto :goto_1
.end method

.method public final synthetic e()La/a/a/a/c/p;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, La/a/a/a/b/ag;->j:La/a/a/a/b/af;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/b/am;-><init>(La/a/a/a/b/ag;B)V

    iput-object v0, p0, La/a/a/a/b/ag;->j:La/a/a/a/b/af;

    :cond_0
    iget-object v0, p0, La/a/a/a/b/ag;->j:La/a/a/a/b/af;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 735
    .line 736
    iget v1, p0, La/a/a/a/b/ag;->i:I

    move v3, v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    .line 737
    :goto_1
    iget-object v1, p0, La/a/a/a/b/ag;->d:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 738
    :cond_0
    iget-object v1, p0, La/a/a/a/b/ag;->b:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, La/a/a/a/e;->b(J)I

    move-result v1

    .line 739
    iget-object v4, p0, La/a/a/a/b/ag;->c:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, La/a/a/a/e;->b(J)I

    move-result v4

    xor-int/2addr v1, v4

    .line 740
    add-int/2addr v1, v3

    .line 741
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    goto :goto_0

    .line 743
    :cond_1
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 366
    iget v0, p0, La/a/a/a/b/ag;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, La/a/a/a/b/ag;->b()La/a/a/a/b/cl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ag;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, La/a/a/a/b/ag;->a(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, La/a/a/a/b/ag;->i:I

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, La/a/a/a/b/ag;->c()La/a/a/a/b/cb;

    move-result-object v0

    return-object v0
.end method
