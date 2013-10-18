.class final Lcom/google/a/c/hp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/a/c/ih;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ih",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/a/c/hp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/hn",
            "<TE;>.com/google/a/c/hp;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/c/hn;


# direct methods
.method constructor <init>(Lcom/google/a/c/hn;Lcom/google/a/c/ih;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ih",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p2, p0, Lcom/google/a/c/hp;->a:Lcom/google/a/c/ih;

    .line 493
    return-void
.end method

.method private b(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v0}, Lcom/google/a/c/hn;->b(Lcom/google/a/c/hn;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 573
    const/4 v0, -0x1

    .line 583
    :cond_0
    return v0

    .line 575
    :cond_1
    if-lez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 576
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v0}, Lcom/google/a/c/hn;->b(Lcom/google/a/c/hn;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v2, v0, p2

    .line 578
    add-int/lit8 v1, p1, 0x1

    move v0, p1

    :goto_1
    if-ge v1, v2, :cond_0

    .line 579
    invoke-virtual {p0, v1, v0}, Lcom/google/a/c/hp;->a(II)I

    move-result v3

    if-gez v3, :cond_2

    move v0, v1

    .line 578
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 575
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 597
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 598
    if-gez v0, :cond_0

    .line 599
    const/4 v0, -0x1

    .line 601
    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/a/c/hp;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method final a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/a/c/hp;->a:Lcom/google/a/c/ih;

    iget-object v1, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v1, p1}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v2, p2}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/ih;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final a(ILjava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 553
    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 554
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 555
    iget-object v1, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v1, v0}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 556
    iget-object v2, p0, Lcom/google/a/c/hp;->a:Lcom/google/a/c/ih;

    invoke-virtual {v2, v1, p2}, Lcom/google/a/c/ih;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v2}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    move p1, v0

    .line 561
    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v0}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 563
    return p1
.end method

.method final a(IILjava/lang/Object;)Lcom/google/a/c/hq;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/a/c/hq",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 506
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/google/a/c/hp;->b(II)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/google/a/c/hp;->a:Lcom/google/a/c/ih;

    iget-object v3, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v3, v0}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/google/a/c/ih;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v2}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v3, v0}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p2

    iget-object v2, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v2}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p3, v2, v0

    move v2, v0

    .line 507
    :goto_0
    if-ne v2, p2, :cond_1

    move-object v0, v1

    .line 528
    :goto_1
    return-object v0

    .line 506
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/a/c/hp;->b(ILjava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 516
    :cond_1
    if-ge v2, p1, :cond_2

    .line 519
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v0, p1}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 524
    :goto_2
    iget-object v3, p0, Lcom/google/a/c/hp;->b:Lcom/google/a/c/hp;

    invoke-virtual {v3, v2, p3}, Lcom/google/a/c/hp;->a(ILjava/lang/Object;)I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 526
    new-instance v1, Lcom/google/a/c/hq;

    invoke-direct {v1, p3, v0}, Lcom/google/a/c/hq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 528
    goto :goto_1
.end method

.method final b(ILjava/lang/Object;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 610
    if-nez p1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v0}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, v1

    .line 638
    :goto_0
    return v1

    .line 614
    :cond_0
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v3, v0, 0x2

    .line 615
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v0, v3}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 616
    if-eqz v3, :cond_2

    .line 621
    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 622
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    .line 623
    if-eq v2, v3, :cond_2

    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v4}, Lcom/google/a/c/hn;->b(Lcom/google/a/c/hn;)I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 625
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-virtual {v0, v2}, Lcom/google/a/c/hn;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 626
    iget-object v4, p0, Lcom/google/a/c/hp;->a:Lcom/google/a/c/ih;

    invoke-virtual {v4, v0, v1}, Lcom/google/a/c/ih;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    move v1, v2

    .line 632
    :goto_1
    iget-object v2, p0, Lcom/google/a/c/hp;->a:Lcom/google/a/c/ih;

    invoke-virtual {v2, v0, p2}, Lcom/google/a/c/ih;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v2}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v0, v2, p1

    .line 634
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v0}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, v1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    invoke-static {v0}, Lcom/google/a/c/hn;->a(Lcom/google/a/c/hn;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    move v1, p1

    .line 638
    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method
