.class public final La/a/a/a/b/cj;
.super La/a/a/a/b/aa;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected transient b:[J

.field protected transient c:[Z

.field protected final d:F

.field protected transient e:I

.field protected transient f:I

.field protected transient g:I

.field protected h:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f40

    .line 91
    invoke-direct {p0}, La/a/a/a/b/aa;-><init>()V

    .line 92
    iput v1, p0, La/a/a/a/b/cj;->d:F

    .line 95
    const/16 v0, 0x10

    invoke-static {v0, v1}, La/a/a/a/e;->b(IF)I

    move-result v0

    iput v0, p0, La/a/a/a/b/cj;->e:I

    .line 96
    iget v0, p0, La/a/a/a/b/cj;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/cj;->g:I

    .line 97
    iget v0, p0, La/a/a/a/b/cj;->e:I

    invoke-static {v0, v1}, La/a/a/a/e;->a(IF)I

    move-result v0

    iput v0, p0, La/a/a/a/b/cj;->f:I

    .line 98
    iget v0, p0, La/a/a/a/b/cj;->e:I

    new-array v0, v0, [J

    iput-object v0, p0, La/a/a/a/b/cj;->b:[J

    .line 99
    iget v0, p0, La/a/a/a/b/cj;->e:I

    new-array v0, v0, [Z

    iput-object v0, p0, La/a/a/a/b/cj;->c:[Z

    .line 100
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, La/a/a/a/b/cj;-><init>()V

    .line 113
    return-void
.end method

.method private b()La/a/a/a/b/cj;
    .locals 2

    .prologue
    .line 464
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/cj;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, La/a/a/a/b/cj;->b:[J

    .line 470
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, La/a/a/a/b/cj;->c:[Z

    .line 471
    return-object v0

    .line 467
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
    .line 244
    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    .line 245
    :goto_1
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, La/a/a/a/e;->a(J)J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v1, v2

    .line 247
    if-gt p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    if-le v1, v0, :cond_2

    .line 250
    :cond_0
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    iget-object v2, p0, La/a/a/a/b/cj;->b:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, p1

    move p1, v0

    goto :goto_0

    .line 247
    :cond_1
    if-lt p1, v1, :cond_2

    if-gt v1, v0, :cond_0

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    goto :goto_1

    .line 253
    :cond_3
    iget-object v0, p0, La/a/a/a/b/cj;->c:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 254
    return p1
.end method

.method public final a()La/a/a/a/b/ce;
    .locals 2

    .prologue
    .line 356
    new-instance v0, La/a/a/a/b/ck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/b/ck;-><init>(La/a/a/a/b/cj;B)V

    return-object v0
.end method

.method public final a(J)Z
    .locals 3
    .parameter

    .prologue
    .line 275
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    .line 277
    :goto_0
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 281
    :goto_1
    return v0

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 290
    iget v0, p0, La/a/a/a/b/cj;->h:I

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/cj;->h:I

    .line 292
    iget-object v0, p0, La/a/a/a/b/cj;->c:[Z

    invoke-static {v0}, La/a/a/a/a/a;->a([Z)V

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, La/a/a/a/b/cj;->b()La/a/a/a/b/cj;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Z
    .locals 14
    .parameter

    .prologue
    .line 222
    invoke-static/range {p1 .. p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    .line 224
    :goto_0
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 232
    :goto_1
    return v0

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 229
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    aput-wide p1, v1, v0

    .line 230
    iget v0, p0, La/a/a/a/b/cj;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/cj;->h:I

    iget v1, p0, La/a/a/a/b/cj;->f:I

    if-lt v0, v1, :cond_5

    iget v0, p0, La/a/a/a/b/cj;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/cj;->d:F

    invoke-static {v0, v1}, La/a/a/a/e;->b(IF)I

    move-result v3

    const/4 v1, 0x0

    iget-object v4, p0, La/a/a/a/b/cj;->c:[Z

    iget-object v5, p0, La/a/a/a/b/cj;->b:[J

    add-int/lit8 v6, v3, -0x1

    new-array v7, v3, [J

    new-array v8, v3, [Z

    iget v0, p0, La/a/a/a/b/cj;->h:I

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_4

    :goto_3
    aget-boolean v1, v4, v0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    aget-wide v9, v5, v0

    invoke-static {v9, v10}, La/a/a/a/e;->a(J)J

    move-result-wide v11

    long-to-int v1, v11

    and-int/2addr v1, v6

    :goto_4
    aget-boolean v11, v8, v1

    if-eqz v11, :cond_3

    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v6

    goto :goto_4

    :cond_3
    const/4 v11, 0x1

    aput-boolean v11, v8, v1

    aput-wide v9, v7, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_4
    iput v3, p0, La/a/a/a/b/cj;->e:I

    iput v6, p0, La/a/a/a/b/cj;->g:I

    iget v0, p0, La/a/a/a/b/cj;->e:I

    iget v1, p0, La/a/a/a/b/cj;->d:F

    invoke-static {v0, v1}, La/a/a/a/e;->a(IF)I

    move-result v0

    iput v0, p0, La/a/a/a/b/cj;->f:I

    iput-object v7, p0, La/a/a/a/b/cj;->b:[J

    iput-object v8, p0, La/a/a/a/b/cj;->c:[Z

    .line 232
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final f(J)Z
    .locals 3
    .parameter

    .prologue
    .line 259
    invoke-static {p1, p2}, La/a/a/a/e;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    .line 261
    :goto_0
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 263
    iget v1, p0, La/a/a/a/b/cj;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/cj;->h:I

    .line 264
    invoke-virtual {p0, v0}, La/a/a/a/b/cj;->a(I)I

    .line 266
    const/4 v0, 0x1

    .line 270
    :goto_1
    return v0

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/a/b/cj;->g:I

    and-int/2addr v0, v1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 483
    iget v0, p0, La/a/a/a/b/cj;->h:I

    move v3, v1

    move v6, v1

    move v1, v0

    move v0, v6

    .line 484
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    .line 485
    :goto_1
    iget-object v1, p0, La/a/a/a/b/cj;->c:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_0
    iget-object v1, p0, La/a/a/a/b/cj;->b:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, La/a/a/a/e;->b(J)I

    move-result v1

    add-int/2addr v1, v3

    .line 487
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    goto :goto_0

    .line 489
    :cond_1
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 298
    iget v0, p0, La/a/a/a/b/cj;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, La/a/a/a/b/cj;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, La/a/a/a/b/cj;->h:I

    return v0
.end method
