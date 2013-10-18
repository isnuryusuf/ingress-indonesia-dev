.class public final Lcom/google/a/d/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/d/ad;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/d/ad;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/a/d/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public strictfp constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private strictfp b()Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    .line 563
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 565
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 567
    invoke-virtual {p0}, Lcom/google/a/d/k;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 568
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 570
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/d/j;

    invoke-virtual {v1, v0}, Lcom/google/a/d/j;->a(Lcom/google/a/d/j;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/d/j;

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->a(Lcom/google/a/d/j;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 576
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 581
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x3

    if-lt v0, v5, :cond_2

    .line 582
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 585
    add-int/lit8 v0, v5, -0x3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v6

    add-int/lit8 v0, v5, -0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v8

    xor-long/2addr v6, v8

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v8

    xor-long/2addr v6, v8

    invoke-virtual {v1}, Lcom/google/a/d/j;->d()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    .line 587
    invoke-virtual {v1}, Lcom/google/a/d/j;->p()J

    move-result-wide v6

    shl-long/2addr v6, v2

    .line 595
    shl-long v8, v6, v2

    add-long/2addr v6, v8

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    .line 596
    invoke-virtual {v1}, Lcom/google/a/d/j;->d()J

    move-result-wide v8

    and-long/2addr v8, v6

    .line 597
    add-int/lit8 v0, v5, -0x3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v10

    and-long/2addr v10, v6

    cmp-long v0, v10, v8

    if-nez v0, :cond_2

    add-int/lit8 v0, v5, -0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v10

    and-long/2addr v10, v6

    cmp-long v0, v10, v8

    if-nez v0, :cond_2

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v10

    and-long/2addr v6, v10

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/a/d/j;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 600
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
    add-int/lit8 v0, v5, -0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    add-int/lit8 v0, v5, -0x3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 607
    invoke-virtual {v1}, Lcom/google/a/d/j;->k()Lcom/google/a/d/j;

    move-result-object v0

    move-object v1, v0

    .line 608
    goto/16 :goto_2

    .line 609
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 611
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 612
    invoke-direct {p0, v3}, Lcom/google/a/d/k;->c(Ljava/util/ArrayList;)V

    move v0, v2

    .line 615
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto/16 :goto_2
.end method

.method private strictfp c(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/a/d/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 86
    return-void
.end method


# virtual methods
.method public final strictfp a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final strictfp a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/a/d/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0}, Lcom/google/a/d/k;->b()Z

    .line 46
    return-void
.end method

.method public final strictfp a(Lcom/google/a/d/i;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-virtual {p1}, Lcom/google/a/d/i;->a()Lcom/google/a/d/j;

    move-result-object v3

    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/a/d/j;->c(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/a/d/j;->d(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final strictfp b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/a/d/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/a/d/k;->c(Ljava/util/ArrayList;)V

    .line 61
    invoke-direct {p0}, Lcom/google/a/d/k;->b()Z

    .line 62
    return-void
.end method

.method public final strictfp b(Lcom/google/a/d/i;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 455
    invoke-virtual {p1}, Lcom/google/a/d/i;->a()Lcom/google/a/d/j;

    move-result-object v3

    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/a/d/j;->c(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->d(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/a/d/k;

    invoke-direct {v0}, Lcom/google/a/d/k;-><init>()V

    iget-object v1, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 531
    instance-of v0, p1, Lcom/google/a/d/k;

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    .line 534
    :cond_0
    check-cast p1, Lcom/google/a/d/k;

    .line 535
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final strictfp f()Lcom/google/a/d/h;
    .locals 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-static {}, Lcom/google/a/d/h;->a()Lcom/google/a/d/h;

    move-result-object v1

    .line 439
    :cond_0
    return-object v1

    .line 420
    :cond_1
    sget-object v0, Lcom/google/a/d/y;->a:Lcom/google/a/d/y;

    .line 421
    invoke-virtual {p0}, Lcom/google/a/d/k;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 422
    invoke-virtual {v0}, Lcom/google/a/d/j;->f()I

    move-result v3

    invoke-static {v3}, Lcom/google/a/d/i;->d(I)D

    move-result-wide v3

    .line 423
    invoke-virtual {v0}, Lcom/google/a/d/j;->b()Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/d/y;->c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    move-object v1, v0

    .line 424
    goto :goto_0

    .line 425
    :cond_2
    sget-object v0, Lcom/google/a/d/y;->a:Lcom/google/a/d/y;

    invoke-virtual {v1, v0}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    sget-object v0, Lcom/google/a/d/y;->b:Lcom/google/a/d/y;

    .line 435
    :goto_1
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/h;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lcom/google/a/d/k;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 437
    new-instance v3, Lcom/google/a/d/i;

    invoke-direct {v3, v0}, Lcom/google/a/d/i;-><init>(Lcom/google/a/d/j;)V

    invoke-virtual {v3}, Lcom/google/a/d/i;->f()Lcom/google/a/d/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/d/h;->a(Lcom/google/a/d/h;)Lcom/google/a/d/h;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 428
    :cond_3
    invoke-static {v1}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    goto :goto_1
.end method

.method public final strictfp hashCode()I
    .locals 3

    .prologue
    .line 540
    const/16 v0, 0x11

    .line 541
    invoke-virtual {p0}, Lcom/google/a/d/k;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 542
    mul-int/lit8 v1, v1, 0x25

    invoke-virtual {v0}, Lcom/google/a/d/j;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 544
    :cond_0
    return v1
.end method

.method public final strictfp iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/a/d/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
