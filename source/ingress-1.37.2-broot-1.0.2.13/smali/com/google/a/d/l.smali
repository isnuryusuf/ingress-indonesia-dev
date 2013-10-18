.class public abstract Lcom/google/a/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[J

.field private b:[I

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method public strictfp constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    return-void
.end method

.method private strictfp a(JI)I
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 515
    iget-object v0, p0, Lcom/google/a/d/l;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v8, v1

    .line 516
    :goto_0
    if-gt v8, v7, :cond_2

    .line 517
    add-int v0, v8, v7

    ushr-int/lit8 v6, v0, 0x1

    .line 518
    iget-object v0, p0, Lcom/google/a/d/l;->a:[J

    aget-wide v0, v0, v6

    iget-object v2, p0, Lcom/google/a/d/l;->b:[I

    aget v2, v2, v6

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/a/d/l;->b(JIJI)I

    move-result v0

    .line 519
    if-gez v0, :cond_0

    .line 520
    add-int/lit8 v0, v6, 0x1

    move v8, v0

    goto :goto_0

    .line 521
    :cond_0
    if-lez v0, :cond_1

    .line 522
    add-int/lit8 v0, v6, -0x1

    move v7, v0

    goto :goto_0

    :cond_1
    move v0, v6

    .line 526
    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v8, 0x1

    neg-int v0, v0

    goto :goto_1
.end method

.method static synthetic a(JIJI)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-static/range {p0 .. p5}, Lcom/google/a/d/l;->b(JIJI)I

    move-result v0

    return v0
.end method

.method private static strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;ZLjava/util/ArrayList;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/y;",
            "Lcom/google/a/d/y;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/a/d/j;",
            ">;)I"
        }
    .end annotation

    .prologue
    const-wide v5, 0x3f847ae147ae147bL

    .line 420
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 427
    invoke-virtual {p0, p1}, Lcom/google/a/d/y;->e(Lcom/google/a/d/y;)D

    move-result-wide v0

    .line 428
    sget-object v2, Lcom/google/a/d/aa;->g:Lcom/google/a/d/g;

    const-wide v3, 0x3ff051eb851eb852L

    mul-double/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/a/d/g;->a(D)I

    move-result v4

    .line 431
    if-nez p2, :cond_2

    .line 432
    invoke-static {p0}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v1

    invoke-static {p1}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/a/d/j;->e()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/a/d/j;->e()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/google/a/d/j;->a()Lcom/google/a/d/j;

    move-result-object v1

    .line 458
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/a/d/j;->a()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/google/a/d/j;->f()I

    move-result v0

    add-int/lit8 v2, v4, -0x2

    if-lt v0, v2, :cond_8

    .line 460
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v1}, Lcom/google/a/d/j;->f()I

    move-result v0

    .line 486
    :goto_1
    return v0

    .line 432
    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v0

    goto :goto_2

    .line 434
    :cond_2
    const/16 v2, 0x1e

    if-ne v4, v2, :cond_4

    .line 439
    new-instance v0, Lcom/google/a/d/j;

    const-wide/32 v1, 0xfff0

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v3

    :cond_3
    :goto_3
    move-object v1, v3

    .line 451
    goto :goto_0

    .line 441
    :cond_4
    invoke-static {p1, p0}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v2

    .line 442
    invoke-static {v2, p0}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v3

    mul-double/2addr v0, v5

    invoke-static {v3, v0, v1}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v0

    .line 444
    invoke-static {p0, v2}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v1

    .line 445
    invoke-static {p1, v2}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v2

    .line 451
    invoke-static {v1, v0}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v3

    invoke-static {v1, v0}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v1

    invoke-static {v2, v0}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v5

    invoke-static {v2, v0}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v3}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v3

    invoke-static {v1}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v2

    invoke-static {v5}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v1

    invoke-static {v0}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/a/d/j;->e()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/a/d/j;->e()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v3}, Lcom/google/a/d/j;->e()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/a/d/j;->e()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v3}, Lcom/google/a/d/j;->e()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/a/d/j;->e()I

    move-result v6

    if-eq v5, v6, :cond_6

    :cond_5
    invoke-static {}, Lcom/google/a/d/j;->a()Lcom/google/a/d/j;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v3, v2}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v1}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v0}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_7
    invoke-virtual {v3}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v0

    goto :goto_4

    .line 464
    :cond_8
    if-nez v4, :cond_a

    .line 469
    invoke-static {}, Lcom/google/a/d/j;->n()Lcom/google/a/d/j;

    move-result-object v0

    :goto_5
    invoke-static {}, Lcom/google/a/d/j;->o()Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 471
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {v0}, Lcom/google/a/d/j;->m()Lcom/google/a/d/j;

    move-result-object v0

    goto :goto_5

    .line 473
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 483
    :cond_a
    invoke-static {p0, p1}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v1

    .line 484
    const/16 v0, 0x1d

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 485
    invoke-static {v1}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/a/d/j;->a(ILjava/util/Collection;)V

    goto/16 :goto_1
.end method

.method private strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;Ljava/util/List;Ljava/util/Set;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/y;",
            "Lcom/google/a/d/y;",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/d/j;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x4

    const/4 v4, 0x0

    .line 585
    const/4 v1, 0x0

    .line 586
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 587
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 588
    invoke-virtual {v0}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/j;->d()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/j;->d()J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/a/d/l;->a(JJ)[I

    move-result-object v2

    .line 589
    aget v5, v2, v3

    aget v6, v2, v4

    sub-int/2addr v5, v6

    const/16 v6, 0x10

    if-gt v5, v6, :cond_1

    .line 590
    aget v0, v2, v4

    :goto_0
    aget v5, v2, v3

    if-ge v0, v5, :cond_0

    .line 591
    iget-object v5, p0, Lcom/google/a/d/l;->b:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/a/d/l;->a(JJ)[I

    move-result-object v5

    .line 596
    aget v2, v5, v4

    :goto_1
    aget v6, v5, v3

    if-ge v2, v6, :cond_2

    .line 597
    iget-object v6, p0, Lcom/google/a/d/l;->b:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 600
    :cond_2
    if-nez v1, :cond_3

    .line 601
    new-array v1, v10, [Lcom/google/a/d/i;

    move v2, v4

    .line 602
    :goto_2
    if-ge v2, v10, :cond_3

    .line 603
    new-instance v5, Lcom/google/a/d/i;

    invoke-direct {v5}, Lcom/google/a/d/i;-><init>()V

    aput-object v5, v1, v2

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 606
    :cond_3
    new-instance v2, Lcom/google/a/d/i;

    invoke-direct {v2, v0}, Lcom/google/a/d/i;-><init>(Lcom/google/a/d/j;)V

    invoke-virtual {v2, v1}, Lcom/google/a/d/i;->a([Lcom/google/a/d/i;)Z

    .line 607
    array-length v5, v1

    move v2, v4

    :goto_3
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 615
    new-array v7, v10, [Lcom/google/a/d/y;

    move v0, v4

    :goto_4
    if-ge v0, v10, :cond_4

    invoke-virtual {v6, v0}, Lcom/google/a/d/i;->b(I)Lcom/google/a/d/y;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_5
    if-ge v0, v10, :cond_7

    aget-object v8, v7, v0

    add-int/lit8 v9, v0, 0x1

    rem-int/lit8 v9, v9, 0x4

    aget-object v9, v7, v9

    invoke-static {p1, p2, v8, v9}, Lcom/google/a/d/o;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v3

    :goto_6
    if-eqz v0, :cond_5

    .line 616
    invoke-virtual {v6}, Lcom/google/a/d/i;->a()Lcom/google/a/d/j;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 615
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move v0, v4

    goto :goto_6

    .line 621
    :cond_8
    return-void
.end method

.method private strictfp a(Ljava/util/List;Ljava/util/Set;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/d/j;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 538
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 539
    invoke-virtual {v0}, Lcom/google/a/d/j;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v4, p0, Lcom/google/a/d/l;->c:I

    if-lt v1, v4, :cond_0

    .line 541
    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 548
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 549
    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/a/d/l;->a(JJ)[I

    move-result-object v2

    .line 550
    const/4 v0, 0x0

    aget v0, v2, v0

    :goto_1
    const/4 v3, 0x1

    aget v3, v2, v3

    if-ge v0, v3, :cond_2

    .line 551
    iget-object v3, p0, Lcom/google/a/d/l;->b:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    :cond_3
    return-void
.end method

.method private strictfp a(JJ)[I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 499
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 508
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-direct {p0, p3, p4, v2}, Lcom/google/a/d/l;->a(JI)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-direct {p0, p1, p2, v2}, Lcom/google/a/d/l;->a(JI)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    return-object v0

    :cond_0
    move-wide v3, p3

    move-wide p3, p1

    move-wide p1, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/d/l;)[J
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/a/d/l;->a:[J

    return-object v0
.end method

.method private static final strictfp b(JIJI)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 190
    cmp-long v2, p0, p3

    if-gez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    cmp-long v2, p0, p3

    if-lez v2, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 194
    :cond_2
    if-lt p2, p5, :cond_0

    .line 196
    if-le p2, p5, :cond_3

    move v0, v1

    .line 197
    goto :goto_0

    .line 199
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/a/d/l;)[I
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/a/d/l;->b:[I

    return-object v0
.end method


# virtual methods
.method public final strictfp a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 306
    iget-boolean v0, p0, Lcom/google/a/d/l;->d:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/d/l;->c()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/a/d/l;->e:I

    add-int/2addr v0, p1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 310
    iget-boolean v0, p0, Lcom/google/a/d/l;->d:Z

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/a/d/l;->c()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/a/d/l;->b(I)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/google/a/d/l;->c(I)Lcom/google/a/d/y;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v5, v8, v6}, Lcom/google/a/d/l;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;ZLjava/util/ArrayList;)I

    move-result v0

    iget v5, p0, Lcom/google/a/d/l;->c:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/a/d/l;->c:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/a/d/l;->a:[J

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/d/l;->b:[I

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/google/a/d/l;->a:[J

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/google/a/d/l;->a:[J

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v1

    iget-object v5, p0, Lcom/google/a/d/l;->b:[I

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/a/d/l;->a:[J

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Integer;

    move v0, v2

    :goto_4
    array-length v3, v1

    if-ge v0, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/a/d/m;

    invoke-direct {v0, p0}, Lcom/google/a/d/m;-><init>(Lcom/google/a/d/l;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/a/d/l;->a:[J

    array-length v0, v0

    new-array v0, v0, [J

    iget-object v3, p0, Lcom/google/a/d/l;->b:[I

    array-length v3, v3

    new-array v3, v3, [I

    :goto_5
    array-length v4, v1

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/google/a/d/l;->a:[J

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-wide v4, v4, v5

    aput-wide v4, v0, v2

    iget-object v4, p0, Lcom/google/a/d/l;->b:[I

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iput-object v0, p0, Lcom/google/a/d/l;->a:[J

    iput-object v3, p0, Lcom/google/a/d/l;->b:[I

    iput-boolean v8, p0, Lcom/google/a/d/l;->d:Z

    goto/16 :goto_0
.end method

.method protected final strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/y;",
            "Lcom/google/a/d/y;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/a/d/l;->d:Z

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/google/a/d/l;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;ZLjava/util/ArrayList;)I

    .line 352
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/google/a/d/l;->a(Ljava/util/List;Ljava/util/Set;)V

    .line 358
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/a/d/l;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Ljava/util/List;Ljava/util/Set;)V

    .line 360
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 361
    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    return-void
.end method

.method public final strictfp a()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/a/d/l;->d:Z

    return v0
.end method

.method public abstract b(I)Lcom/google/a/d/y;
.end method

.method protected final strictfp b()V
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/a/d/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/l;->e:I

    .line 267
    return-void
.end method

.method public abstract c()I
.end method

.method public abstract c(I)Lcom/google/a/d/y;
.end method
