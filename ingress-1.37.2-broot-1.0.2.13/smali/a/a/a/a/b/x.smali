.class public final La/a/a/a/b/x;
.super La/a/a/a/b/v;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final a:La/a/a/a/b/ch;

.field protected final b:I

.field protected c:I


# direct methods
.method public constructor <init>(La/a/a/a/b/ch;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0}, La/a/a/a/b/v;-><init>()V

    .line 468
    iput-object p1, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    .line 469
    iput p2, p0, La/a/a/a/b/x;->b:I

    .line 470
    iput p3, p0, La/a/a/a/b/x;->c:I

    .line 471
    return-void
.end method


# virtual methods
.method public final synthetic a()La/a/a/a/b/ce;
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)La/a/a/a/b/ch;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->a(I)V

    .line 587
    invoke-virtual {p0, p2}, La/a/a/a/b/x;->a(I)V

    .line 588
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is greater than end index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    new-instance v0, La/a/a/a/b/x;

    invoke-direct {v0, p0, p1, p2}, La/a/a/a/b/x;-><init>(La/a/a/a/b/ch;II)V

    return-object v0
.end method

.method public final a(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->a(I)V

    .line 490
    iget-object v0, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v1, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, La/a/a/a/b/ch;->a(IJ)V

    .line 491
    iget v0, p0, La/a/a/a/b/x;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/x;->c:I

    .line 493
    return-void
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 456
    check-cast p2, Ljava/lang/Long;

    invoke-super {p0, p1, p2}, La/a/a/a/b/v;->a(ILjava/lang/Long;)V

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->a(I)V

    .line 497
    iget v0, p0, La/a/a/a/b/x;->c:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/x;->c:I

    .line 503
    iget-object v0, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v1, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, La/a/a/a/b/ch;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final b(IJ)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 518
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->b(I)V

    .line 519
    iget-object v0, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v1, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, La/a/a/a/b/ch;->b(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 538
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->a(I)V

    .line 539
    invoke-virtual {p0, p2}, La/a/a/a/b/x;->a(I)V

    .line 540
    iget-object v0, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v1, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v1, p1

    iget v2, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v2, p2

    invoke-interface {v0, v1, v2}, La/a/a/a/b/ch;->b(II)V

    .line 541
    iget v0, p0, La/a/a/a/b/x;->c:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, La/a/a/a/b/x;->c:I

    .line 543
    return-void
.end method

.method public final c(I)J
    .locals 2
    .parameter

    .prologue
    .line 512
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->b(I)V

    .line 513
    iget v0, p0, La/a/a/a/b/x;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/x;->c:I

    .line 514
    iget-object v0, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v1, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, La/a/a/a/b/ch;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0}, La/a/a/a/b/x;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/x;->b(II)V

    .line 525
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 456
    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, La/a/a/a/b/v;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final d(I)La/a/a/a/b/ci;
    .locals 1
    .parameter

    .prologue
    .line 553
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->a(I)V

    .line 555
    new-instance v0, La/a/a/a/b/y;

    invoke-direct {v0, p0, p1}, La/a/a/a/b/y;-><init>(La/a/a/a/b/x;I)V

    return-object v0
.end method

.method public final d(J)Z
    .locals 2
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v1, p0, La/a/a/a/b/x;->c:I

    invoke-interface {v0, v1, p1, p2}, La/a/a/a/b/ch;->a(IJ)V

    .line 483
    iget v0, p0, La/a/a/a/b/x;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/x;->c:I

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)Z
    .locals 3
    .parameter

    .prologue
    .line 596
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/x;->b(J)I

    move-result v0

    .line 597
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 601
    :goto_0
    return v0

    .line 598
    :cond_0
    iget v1, p0, La/a/a/a/b/x;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/x;->c:I

    .line 599
    iget-object v1, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v2, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, La/a/a/a/b/ch;->c(I)J

    .line 601
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final g(I)J
    .locals 2
    .parameter

    .prologue
    .line 507
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->b(I)V

    .line 508
    iget-object v0, p0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget v1, p0, La/a/a/a/b/x;->b:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, La/a/a/a/b/ch;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 456
    invoke-super {p0, p1}, La/a/a/a/b/v;->e(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/a/b/v;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 456
    invoke-virtual {p0, p1}, La/a/a/a/b/x;->d(I)La/a/a/a/b/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 456
    invoke-super {p0, p1}, La/a/a/a/b/v;->f(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 605
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/x;->e(J)Z

    move-result v0

    return v0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 456
    check-cast p2, Ljava/lang/Long;

    invoke-super {p0, p1, p2}, La/a/a/a/b/v;->b(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 528
    iget v0, p0, La/a/a/a/b/x;->c:I

    iget v1, p0, La/a/a/a/b/x;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/x;->a(II)La/a/a/a/b/ch;

    move-result-object v0

    return-object v0
.end method
