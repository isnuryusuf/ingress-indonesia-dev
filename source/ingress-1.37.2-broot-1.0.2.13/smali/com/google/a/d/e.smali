.class public final Lcom/google/a/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method public strictfp constructor <init>(DD)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    .line 52
    return-void
.end method

.method private strictfp constructor <init>(DDZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v4, -0x3ff6de04abbbd2e8L

    const-wide v0, 0x400921fb54442d18L

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p5, :cond_0

    .line 72
    cmpl-double v2, p1, v4

    if-nez v2, :cond_2

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_2

    move-wide v2, v0

    .line 75
    :goto_0
    cmpl-double v4, p3, v4

    if-nez v4, :cond_1

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_1

    move-wide p3, v0

    move-wide p1, v2

    .line 79
    :cond_0
    :goto_1
    iput-wide p1, p0, Lcom/google/a/d/e;->a:D

    .line 80
    iput-wide p3, p0, Lcom/google/a/d/e;->b:D

    .line 81
    return-void

    :cond_1
    move-wide p1, v2

    goto :goto_1

    :cond_2
    move-wide v2, p1

    goto :goto_0
.end method

.method private strictfp constructor <init>(Lcom/google/a/d/e;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-wide v0, p1, Lcom/google/a/d/e;->a:D

    iput-wide v0, p0, Lcom/google/a/d/e;->a:D

    .line 61
    iget-wide v0, p1, Lcom/google/a/d/e;->b:D

    iput-wide v0, p0, Lcom/google/a/d/e;->b:D

    .line 62
    return-void
.end method

.method public static strictfp a()Lcom/google/a/d/e;
    .locals 6

    .prologue
    .line 84
    new-instance v0, Lcom/google/a/d/e;

    const-wide v1, 0x400921fb54442d18L

    const-wide v3, -0x3ff6de04abbbd2e8L

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    return-object v0
.end method

.method public static strictfp a(DD)Lcom/google/a/d/e;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const-wide v3, -0x3ff6de04abbbd2e8L

    const-wide v6, 0x400921fb54442d18L

    .line 106
    cmpl-double v0, p0, v3

    if-nez v0, :cond_2

    move-wide v1, v6

    .line 109
    :goto_0
    cmpl-double v0, p2, v3

    if-nez v0, :cond_1

    move-wide v3, v6

    .line 112
    :goto_1
    invoke-static {v1, v2, v3, v4}, Lcom/google/a/d/e;->b(DD)D

    move-result-wide v8

    cmpg-double v0, v8, v6

    if-gtz v0, :cond_0

    .line 113
    new-instance v0, Lcom/google/a/d/e;

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    .line 115
    :goto_2
    return-object v0

    :cond_0
    new-instance v6, Lcom/google/a/d/e;

    move-wide v7, v3

    move-wide v9, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/a/d/e;-><init>(DDZ)V

    move-object v0, v6

    goto :goto_2

    :cond_1
    move-wide v3, p2

    goto :goto_1

    :cond_2
    move-wide v1, p0

    goto :goto_0
.end method

.method private static strictfp b(DD)D
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x400921fb54442d18L

    .line 502
    sub-double v0, p2, p0

    .line 503
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 508
    :goto_0
    return-wide v0

    :cond_0
    add-double v0, p2, v4

    sub-double v2, p0, v4

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public static strictfp b()Lcom/google/a/d/e;
    .locals 6

    .prologue
    .line 88
    new-instance v0, Lcom/google/a/d/e;

    const-wide v1, -0x3ff6de04abbbd2e8L

    const-wide v3, 0x400921fb54442d18L

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    return-object v0
.end method

.method private strictfp c(D)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    iget-wide v2, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, p1, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/a/d/e;->i()Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_3
    iget-wide v2, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_4

    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private strictfp i()Z
    .locals 4

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/google/a/d/e;->a:D

    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    sub-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private strictfp j()Z
    .locals 4

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/google/a/d/e;->a:D

    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final strictfp a(D)Z
    .locals 2
    .parameter

    .prologue
    .line 200
    const-wide v0, -0x3ff6de04abbbd2e8L

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 201
    const-wide p1, 0x400921fb54442d18L

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/d/e;->c(D)Z

    move-result v0

    return v0
.end method

.method public final strictfp a(Lcom/google/a/d/e;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    invoke-direct {p1}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-wide v2, p1, Lcom/google/a/d/e;->a:D

    iget-wide v4, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p1, Lcom/google/a/d/e;->b:D

    iget-wide v4, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    iget-wide v2, p1, Lcom/google/a/d/e;->a:D

    iget-wide v4, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, v2, v4

    if-gez v2, :cond_3

    iget-wide v2, p1, Lcom/google/a/d/e;->b:D

    iget-wide v4, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/a/d/e;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 248
    :cond_5
    invoke-direct {p1}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 249
    invoke-virtual {p0}, Lcom/google/a/d/e;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p1}, Lcom/google/a/d/e;->i()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 251
    :cond_6
    iget-wide v2, p1, Lcom/google/a/d/e;->a:D

    iget-wide v4, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7

    iget-wide v2, p1, Lcom/google/a/d/e;->b:D

    iget-wide v4, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public final strictfp b(D)Lcom/google/a/d/e;
    .locals 6
    .parameter

    .prologue
    const-wide v0, 0x400921fb54442d18L

    const-wide v3, -0x3ff6de04abbbd2e8L

    .line 320
    cmpl-double v2, p1, v3

    if-nez v2, :cond_0

    move-wide p1, v0

    .line 324
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/d/e;->c(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    new-instance v0, Lcom/google/a/d/e;

    invoke-direct {v0, p0}, Lcom/google/a/d/e;-><init>(Lcom/google/a/d/e;)V

    .line 337
    :goto_0
    return-object v0

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/google/a/d/e;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    cmpl-double v2, p1, v3

    if-nez v2, :cond_4

    move-wide v1, v0

    :goto_1
    new-instance v0, Lcom/google/a/d/e;

    const/4 v5, 0x1

    move-wide v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    goto :goto_0

    .line 332
    :cond_2
    iget-wide v0, p0, Lcom/google/a/d/e;->a:D

    invoke-static {p1, p2, v0, v1}, Lcom/google/a/d/e;->b(DD)D

    move-result-wide v0

    .line 333
    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    invoke-static {v2, v3, p1, p2}, Lcom/google/a/d/e;->b(DD)D

    move-result-wide v2

    .line 334
    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 335
    new-instance v0, Lcom/google/a/d/e;

    iget-wide v1, p0, Lcom/google/a/d/e;->b:D

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/a/d/e;-><init>(DD)V

    goto :goto_0

    .line 337
    :cond_3
    new-instance v0, Lcom/google/a/d/e;

    iget-wide v1, p0, Lcom/google/a/d/e;->a:D

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/a/d/e;-><init>(DD)V

    goto :goto_0

    :cond_4
    move-wide v1, p1

    goto :goto_1
.end method

.method public final strictfp b(Lcom/google/a/d/e;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0}, Lcom/google/a/d/e;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p1}, Lcom/google/a/d/e;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    invoke-direct {p1}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/google/a/d/e;->a:D

    iget-wide v4, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p1, Lcom/google/a/d/e;->b:D

    iget-wide v4, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 288
    :cond_3
    invoke-direct {p1}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 289
    iget-wide v2, p1, Lcom/google/a/d/e;->a:D

    iget-wide v4, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p1, Lcom/google/a/d/e;->b:D

    iget-wide v4, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 291
    :cond_5
    iget-wide v2, p1, Lcom/google/a/d/e;->a:D

    iget-wide v4, p0, Lcom/google/a/d/e;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, p1, Lcom/google/a/d/e;->b:D

    iget-wide v4, p0, Lcom/google/a/d/e;->a:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final strictfp c()D
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/google/a/d/e;->a:D

    return-wide v0
.end method

.method public final strictfp c(Lcom/google/a/d/e;)Lcom/google/a/d/e;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 378
    invoke-direct {p1}, Lcom/google/a/d/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 408
    :goto_0
    return-object v0

    .line 381
    :cond_0
    iget-wide v0, p1, Lcom/google/a/d/e;->a:D

    invoke-direct {p0, v0, v1}, Lcom/google/a/d/e;->c(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget-wide v0, p1, Lcom/google/a/d/e;->b:D

    invoke-direct {p0, v0, v1}, Lcom/google/a/d/e;->c(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0, p1}, Lcom/google/a/d/e;->a(Lcom/google/a/d/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 386
    goto :goto_0

    .line 388
    :cond_1
    invoke-static {}, Lcom/google/a/d/e;->b()Lcom/google/a/d/e;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_2
    new-instance v0, Lcom/google/a/d/e;

    iget-wide v1, p0, Lcom/google/a/d/e;->a:D

    iget-wide v3, p1, Lcom/google/a/d/e;->b:D

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    goto :goto_0

    .line 392
    :cond_3
    iget-wide v0, p1, Lcom/google/a/d/e;->b:D

    invoke-direct {p0, v0, v1}, Lcom/google/a/d/e;->c(D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    new-instance v0, Lcom/google/a/d/e;

    iget-wide v1, p1, Lcom/google/a/d/e;->a:D

    iget-wide v3, p0, Lcom/google/a/d/e;->b:D

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    goto :goto_0

    .line 398
    :cond_4
    invoke-direct {p0}, Lcom/google/a/d/e;->i()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/google/a/d/e;->a:D

    invoke-direct {p1, v0, v1}, Lcom/google/a/d/e;->c(D)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move-object v0, p1

    .line 399
    goto :goto_0

    .line 403
    :cond_6
    iget-wide v0, p1, Lcom/google/a/d/e;->b:D

    iget-wide v2, p0, Lcom/google/a/d/e;->a:D

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/e;->b(DD)D

    move-result-wide v0

    .line 404
    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    iget-wide v6, p1, Lcom/google/a/d/e;->a:D

    invoke-static {v2, v3, v6, v7}, Lcom/google/a/d/e;->b(DD)D

    move-result-wide v2

    .line 405
    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    .line 406
    new-instance v0, Lcom/google/a/d/e;

    iget-wide v1, p1, Lcom/google/a/d/e;->a:D

    iget-wide v3, p0, Lcom/google/a/d/e;->b:D

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    goto :goto_0

    .line 408
    :cond_7
    new-instance v0, Lcom/google/a/d/e;

    iget-wide v1, p0, Lcom/google/a/d/e;->a:D

    iget-wide v3, p1, Lcom/google/a/d/e;->b:D

    invoke-direct/range {v0 .. v5}, Lcom/google/a/d/e;-><init>(DDZ)V

    goto :goto_0
.end method

.method public final strictfp d()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/a/d/e;->b:D

    return-wide v0
.end method

.method public final strictfp e()Z
    .locals 4

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/a/d/e;->b:D

    iget-wide v2, p0, Lcom/google/a/d/e;->a:D

    sub-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 475
    instance-of v1, p1, Lcom/google/a/d/e;

    if-eqz v1, :cond_0

    .line 476
    check-cast p1, Lcom/google/a/d/e;

    .line 477
    iget-wide v1, p0, Lcom/google/a/d/e;->a:D

    iget-wide v3, p1, Lcom/google/a/d/e;->a:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/a/d/e;->b:D

    iget-wide v3, p1, Lcom/google/a/d/e;->b:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 479
    :cond_0
    return v0
.end method

.method public final strictfp f()D
    .locals 8

    .prologue
    const-wide v6, 0x400921fb54442d18L

    .line 158
    const-wide/high16 v0, 0x3fe0

    iget-wide v2, p0, Lcom/google/a/d/e;->a:D

    iget-wide v4, p0, Lcom/google/a/d/e;->b:D

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 159
    invoke-direct {p0}, Lcom/google/a/d/e;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    add-double/2addr v0, v6

    goto :goto_0

    :cond_1
    sub-double/2addr v0, v6

    goto :goto_0
.end method

.method public final strictfp g()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 171
    iget-wide v0, p0, Lcom/google/a/d/e;->b:D

    iget-wide v2, p0, Lcom/google/a/d/e;->a:D

    sub-double/2addr v0, v2

    .line 172
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-wide v0

    .line 175
    :cond_1
    const-wide v2, 0x401921fb54442d18L

    add-double/2addr v0, v2

    .line 177
    cmpl-double v2, v0, v4

    if-gtz v2, :cond_0

    const-wide/high16 v0, -0x4010

    goto :goto_0
.end method

.method public final strictfp h()Lcom/google/a/d/e;
    .locals 8

    .prologue
    const-wide v6, 0x401921fb54442d18L

    const-wide/high16 v4, 0x3cc0

    .line 350
    invoke-direct {p0}, Lcom/google/a/d/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    :goto_0
    return-object p0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/d/e;->g()D

    move-result-wide v0

    const-wide/high16 v2, 0x3cd0

    add-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d17L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 357
    invoke-static {}, Lcom/google/a/d/e;->b()Lcom/google/a/d/e;

    move-result-object p0

    goto :goto_0

    .line 361
    :cond_1
    iget-wide v0, p0, Lcom/google/a/d/e;->a:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    .line 362
    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    add-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v2

    .line 363
    const-wide v4, -0x3ff6de04abbbd2e8L

    cmpl-double v4, v0, v4

    if-nez v4, :cond_2

    .line 364
    const-wide v0, 0x400921fb54442d18L

    .line 366
    :cond_2
    new-instance p0, Lcom/google/a/d/e;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/a/d/e;-><init>(DD)V

    goto :goto_0
.end method

.method public final strictfp hashCode()I
    .locals 4

    .prologue
    .line 484
    const-wide/16 v0, 0x275

    iget-wide v2, p0, Lcom/google/a/d/e;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 486
    const-wide/16 v2, 0x25

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/e;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 487
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/a/d/e;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/e;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
