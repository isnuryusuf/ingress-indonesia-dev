.class public final La/a/a/a/b/bl;
.super La/a/a/a/b/h;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/b/h",
        "<TV;>;",
        "La/a/a/a/c;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected transient b:[J

.field protected transient c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field protected transient d:[Z

.field protected final e:F

.field protected transient f:I

.field protected transient g:I

.field protected transient h:I

.field protected i:I

.field protected volatile transient j:La/a/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bk",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected volatile transient k:La/a/a/a/b/cl;

.field protected volatile transient l:La/a/a/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/c/j",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f40

    .line 103
    invoke-direct {p0}, La/a/a/a/b/h;-><init>()V

    .line 104
    iput v1, p0, La/a/a/a/b/bl;->e:F

    .line 107
    const/16 v0, 0x10

    invoke-static {v0, v1}, La/a/a/a/e;->b(IF)I

    move-result v0

    iput v0, p0, La/a/a/a/b/bl;->f:I

    .line 108
    iget v0, p0, La/a/a/a/b/bl;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/bl;->h:I

    .line 109
    iget v0, p0, La/a/a/a/b/bl;->f:I

    invoke-static {v0, v1}, La/a/a/a/e;->a(IF)I

    move-result v0

    iput v0, p0, La/a/a/a/b/bl;->g:I

    .line 110
    iget v0, p0, La/a/a/a/b/bl;->f:I

    new-array v0, v0, [J

    iput-object v0, p0, La/a/a/a/b/bl;->b:[J

    .line 111
    iget v0, p0, La/a/a/a/b/bl;->f:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    .line 112
    iget v0, p0, La/a/a/a/b/bl;->f:I

    new-array v0, v0, [Z

    iput-object v0, p0, La/a/a/a/b/bl;->d:[Z

    .line 113
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, La/a/a/a/b/bl;-><init>()V

    .line 126
    return-void
.end method

.method private b(I)V
    .locals 17
    .parameter

    .prologue
    .line 639
    const/4 v4, 0x0

    .line 640
    move-object/from16 v0, p0

    iget-object v6, v0, La/a/a/a/b/bl;->d:[Z

    .line 642
    move-object/from16 v0, p0

    iget-object v7, v0, La/a/a/a/b/bl;->b:[J

    .line 643
    move-object/from16 v0, p0

    iget-object v8, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    .line 644
    add-int/lit8 v9, p1, -0x1

    .line 645
    move/from16 v0, p1

    new-array v10, v0, [J

    .line 646
    move/from16 v0, p1

    new-array v2, v0, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 647
    move/from16 v0, p1

    new-array v11, v0, [Z

    .line 648
    move-object/from16 v0, p0

    iget v3, v0, La/a/a/a/b/bl;->i:I

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_2

    .line 649
    :goto_1
    aget-boolean v4, v6, v3

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 650
    :cond_0
    aget-wide v12, v7, v3

    .line 651
    invoke-static {v12, v13}, La/a/a/a/e;->a(J)J

    move-result-wide v14

    long-to-int v4, v14

    and-int/2addr v4, v9

    .line 652
    :goto_2
    aget-boolean v14, v11, v4

    if-eqz v14, :cond_1

    add-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v9

    goto :goto_2

    .line 653
    :cond_1
    const/4 v14, 0x1

    aput-boolean v14, v11, v4

    .line 654
    aput-wide v12, v10, v4

    .line 655
    aget-object v12, v8, v3

    aput-object v12, v2, v4

    .line 656
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 658
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, La/a/a/a/b/bl;->f:I

    .line 659
    move-object/from16 v0, p0

    iput v9, v0, La/a/a/a/b/bl;->h:I

    .line 660
    move-object/from16 v0, p0

    iget v3, v0, La/a/a/a/b/bl;->f:I

    move-object/from16 v0, p0

    iget v4, v0, La/a/a/a/b/bl;->e:F

    invoke-static {v3, v4}, La/a/a/a/e;->a(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, La/a/a/a/b/bl;->g:I

    .line 661
    move-object/from16 v0, p0

    iput-object v10, v0, La/a/a/a/b/bl;->b:[J

    .line 662
    move-object/from16 v0, p0

    iput-object v2, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    .line 663
    move-object/from16 v0, p0

    iput-object v11, v0, La/a/a/a/b/bl;->d:[Z

    .line 664
    return-void
.end method

.method private e()La/a/a/a/b/bl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/bl",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 676
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/bl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    iput-object v1, v0, La/a/a/a/b/bl;->k:La/a/a/a/b/cl;

    .line 682
    iput-object v1, v0, La/a/a/a/b/bl;->l:La/a/a/a/c/j;

    .line 683
    iput-object v1, v0, La/a/a/a/b/bl;->j:La/a/a/a/b/bk;

    .line 684
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, La/a/a/a/b/bl;->b:[J

    .line 685
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    .line 686
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, La/a/a/a/b/bl;->d:[Z

    .line 687
    return-object v0

    .line 679
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
    .line 234
    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    .line 235
    :goto_1
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, La/a/a/a/e;->a(J)J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v1, v2

    .line 237
    if-gt p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    if-le v1, v0, :cond_2

    .line 240
    :cond_0
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    iget-object v2, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, p1

    .line 242
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    iget-object v2, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    move p1, v0

    goto :goto_0

    .line 237
    :cond_1
    if-lt p1, v1, :cond_2

    if-gt v1, v0, :cond_0

    .line 238
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    goto :goto_1

    .line 244
    :cond_3
    iget-object v0, p0, La/a/a/a/b/bl;->d:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 245
    iget-object v0, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 246
    return p1
.end method

.method public final a()La/a/a/a/b/cl;
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, La/a/a/a/b/bl;->k:La/a/a/a/b/cl;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/bq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/b/bq;-><init>(La/a/a/a/b/bl;B)V

    iput-object v0, p0, La/a/a/a/b/bl;->k:La/a/a/a/b/cl;

    .line 537
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bl;->k:La/a/a/a/b/cl;

    return-object v0
.end method

.method public final a(J)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    .line 253
    :goto_0
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 255
    iget v1, p0, La/a/a/a/b/bl;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/bl;->i:I

    .line 256
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 257
    invoke-virtual {p0, v0}, La/a/a/a/b/bl;->a(I)I

    move-object v0, v1

    .line 262
    :goto_1
    return-object v0

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, La/a/a/a/b/bl;->b_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    .line 188
    :goto_0
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 191
    iget-object v2, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aput-object p3, v2, v0

    move-object v0, v1

    .line 201
    :goto_1
    return-object v0

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 197
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    aput-wide p1, v1, v0

    .line 198
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 199
    iget v0, p0, La/a/a/a/b/bl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/bl;->i:I

    iget v1, p0, La/a/a/a/b/bl;->g:I

    if-lt v0, v1, :cond_2

    iget v0, p0, La/a/a/a/b/bl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/bl;->e:F

    invoke-static {v0, v1}, La/a/a/a/e;->b(IF)I

    move-result v0

    invoke-direct {p0, v0}, La/a/a/a/b/bl;->b(I)V

    .line 201
    :cond_2
    iget-object v0, p0, La/a/a/a/b/bl;->b_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 284
    invoke-static {v1, v2}, La/a/a/a/e;->a(J)J

    move-result-wide v3

    long-to-int v0, v3

    iget v3, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v3

    .line 286
    :goto_0
    iget-object v3, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 290
    :goto_1
    return-object v0

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v3

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, La/a/a/a/b/bl;->b_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 207
    invoke-static {v1, v2}, La/a/a/a/e;->a(J)J

    move-result-wide v3

    long-to-int v0, v3

    iget v3, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v3

    .line 209
    :goto_0
    iget-object v3, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 211
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 212
    iget-object v2, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aput-object p2, v2, v0

    move-object v0, v1

    .line 222
    :goto_1
    return-object v0

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v3

    goto :goto_0

    .line 217
    :cond_1
    iget-object v3, p0, La/a/a/a/b/bl;->d:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 218
    iget-object v3, p0, La/a/a/a/b/bl;->b:[J

    aput-wide v1, v3, v0

    .line 219
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 220
    iget v0, p0, La/a/a/a/b/bl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/bl;->i:I

    iget v1, p0, La/a/a/a/b/bl;->g:I

    if-lt v0, v1, :cond_2

    iget v0, p0, La/a/a/a/b/bl;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/bl;->e:F

    invoke-static {v0, v1}, La/a/a/a/e;->b(IF)I

    move-result v0

    invoke-direct {p0, v0}, La/a/a/a/b/bl;->b(I)V

    .line 222
    :cond_2
    iget-object v0, p0, La/a/a/a/b/bl;->b_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final b()La/a/a/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/j",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, La/a/a/a/b/bl;->l:La/a/a/a/c/j;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/bm;

    invoke-direct {v0, p0}, La/a/a/a/b/bm;-><init>(La/a/a/a/b/bl;)V

    iput-object v0, p0, La/a/a/a/b/bl;->l:La/a/a/a/c/j;

    .line 564
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bl;->l:La/a/a/a/c/j;

    return-object v0
.end method

.method public final b(J)Z
    .locals 3
    .parameter

    .prologue
    .line 306
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    .line 308
    :goto_0
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 312
    :goto_1
    return v0

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 327
    iget v0, p0, La/a/a/a/b/bl;->i:I

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/bl;->i:I

    .line 329
    iget-object v0, p0, La/a/a/a/b/bl;->d:[Z

    invoke-static {v0}, La/a/a/a/a/a;->a([Z)V

    .line 331
    iget-object v0, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    invoke-static {v0}, La/a/a/a/c/g;->a([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, La/a/a/a/b/bl;->e()La/a/a/a/b/bl;

    move-result-object v0

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 315
    iget-object v2, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    .line 316
    iget-object v3, p0, La/a/a/a/b/bl;->d:[Z

    .line 317
    iget v0, p0, La/a/a/a/b/bl;->f:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_3

    aget-boolean v0, v3, v1

    if-eqz v0, :cond_2

    aget-object v0, v2, v1

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 318
    :goto_1
    return v0

    .line 317
    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 318
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d()La/a/a/a/b/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/bk",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, La/a/a/a/b/bl;->j:La/a/a/a/b/bk;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/bs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/b/bs;-><init>(La/a/a/a/b/bl;B)V

    iput-object v0, p0, La/a/a/a/b/bl;->j:La/a/a/a/b/bk;

    .line 503
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bl;->j:La/a/a/a/b/bk;

    return-object v0
.end method

.method public final e(J)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    .line 297
    :goto_0
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 301
    :goto_1
    return-object v0

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, La/a/a/a/b/bl;->b_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 699
    .line 700
    iget v0, p0, La/a/a/a/b/bl;->i:I

    move v1, v0

    move v5, v2

    move v0, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_2

    .line 701
    :goto_1
    iget-object v1, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 702
    :cond_0
    iget-object v1, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v6, v1, v0

    invoke-static {v6, v7}, La/a/a/a/e;->b(J)I

    move-result v3

    .line 703
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq p0, v1, :cond_3

    .line 704
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    move v1, v2

    :goto_2
    xor-int/2addr v1, v3

    .line 705
    :goto_3
    add-int/2addr v1, v5

    .line 706
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v4

    goto :goto_0

    .line 704
    :cond_1
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    .line 708
    :cond_2
    return v5

    :cond_3
    move v1, v3

    goto :goto_3
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 337
    iget v0, p0, La/a/a/a/b/bl;->i:I

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
    .line 70
    invoke-virtual {p0}, La/a/a/a/b/bl;->a()La/a/a/a/b/cl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()La/a/a/a/c/p;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, La/a/a/a/b/bl;->d()La/a/a/a/b/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/bl;->a(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 266
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 268
    invoke-static {v1, v2}, La/a/a/a/e;->a(J)J

    move-result-wide v3

    long-to-int v0, v3

    iget v3, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v3

    .line 270
    :goto_0
    iget-object v3, p0, La/a/a/a/b/bl;->d:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 271
    iget-object v3, p0, La/a/a/a/b/bl;->b:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 272
    iget v1, p0, La/a/a/a/b/bl;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/bl;->i:I

    .line 273
    iget-object v1, p0, La/a/a/a/b/bl;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 274
    invoke-virtual {p0, v0}, La/a/a/a/b/bl;->a(I)I

    move-object v0, v1

    .line 279
    :goto_1
    return-object v0

    .line 277
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, La/a/a/a/b/bl;->h:I

    and-int/2addr v0, v3

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, La/a/a/a/b/bl;->b_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, La/a/a/a/b/bl;->i:I

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, La/a/a/a/b/bl;->b()La/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method
