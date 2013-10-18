.class Lcom/google/a/c/o;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/a/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/f",
            "<TK;TV;>.com/google/a/c/o;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/a/c/f;


# direct methods
.method constructor <init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/c/o;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/google/a/c/f",
            "<TK;TV;>.com/google/a/c/o;)V"
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    .line 362
    iput-object p3, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    .line 363
    iput-object p4, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    .line 364
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/a/c/o;->e:Ljava/util/Collection;

    .line 366
    return-void

    .line 364
    :cond_0
    iget-object v0, p4, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    invoke-virtual {v0}, Lcom/google/a/c/o;->a()V

    .line 378
    iget-object v0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    iget-object v0, v0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/a/c/o;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    .line 379
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-static {v0}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 383
    if-eqz v0, :cond_1

    .line 384
    iput-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    .line 387
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 503
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 504
    iget-object v1, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 505
    if-eqz v1, :cond_0

    .line 506
    iget-object v2, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-static {v2}, Lcom/google/a/c/f;->c(Lcom/google/a/c/f;)I

    .line 507
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/google/a/c/o;->c()V

    .line 511
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 521
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const/4 v0, 0x0

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/o;->size()I

    move-result v1

    .line 525
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 526
    if-eqz v0, :cond_0

    .line 527
    iget-object v2, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 528
    iget-object v3, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;I)I

    .line 529
    if-nez v1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/google/a/c/o;->c()V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 394
    :goto_0
    iget-object v0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    if-eqz v0, :cond_0

    .line 395
    iget-object p0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-static {v0}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_1
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    .line 413
    :goto_0
    iget-object v0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    if-eqz v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/google/a/c/o;->d:Lcom/google/a/c/o;

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-static {v0}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/o;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/a/c/o;->size()I

    move-result v0

    .line 548
    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 552
    iget-object v1, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-static {v1, v0}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;I)I

    .line 553
    invoke-virtual {p0}, Lcom/google/a/c/o;->b()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 538
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 543
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 426
    if-ne p1, p0, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 430
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 435
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 449
    new-instance v0, Lcom/google/a/c/p;

    invoke-direct {v0, p0}, Lcom/google/a/c/p;-><init>(Lcom/google/a/c/o;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 558
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 559
    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-static {v1}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;)I

    .line 561
    invoke-virtual {p0}, Lcom/google/a/c/o;->b()V

    .line 563
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 567
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const/4 v0, 0x0

    .line 577
    :cond_0
    :goto_0
    return v0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/o;->size()I

    move-result v1

    .line 571
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    iget-object v2, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 574
    iget-object v3, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;I)I

    .line 575
    invoke-virtual {p0}, Lcom/google/a/c/o;->b()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 581
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p0}, Lcom/google/a/c/o;->size()I

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 584
    if-eqz v1, :cond_0

    .line 585
    iget-object v2, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 586
    iget-object v3, p0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;I)I

    .line 587
    invoke-virtual {p0}, Lcom/google/a/c/o;->b()V

    .line 589
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 422
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/a/c/o;->a()V

    .line 440
    iget-object v0, p0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
