.class final La/a/a/a/b/y;
.super La/a/a/a/b/z;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:La/a/a/a/b/x;


# direct methods
.method constructor <init>(La/a/a/a/b/x;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iput p2, p0, La/a/a/a/b/y;->c:I

    invoke-direct {p0}, La/a/a/a/b/z;-><init>()V

    .line 556
    iget v0, p0, La/a/a/a/b/y;->c:I

    iput v0, p0, La/a/a/a/b/y;->a:I

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/y;->b:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 560
    invoke-virtual {p0}, La/a/a/a/b/y;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iget-object v0, v0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget-object v1, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iget v1, v1, La/a/a/a/b/x;->b:I

    iget v2, p0, La/a/a/a/b/y;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/a/a/a/b/y;->a:I

    iput v2, p0, La/a/a/a/b/y;->b:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, La/a/a/a/b/ch;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 565
    iget v0, p0, La/a/a/a/b/y;->b:I

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 566
    :cond_0
    iget-object v0, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iget v1, p0, La/a/a/a/b/y;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/a/b/y;->a:I

    invoke-virtual {v0, v1, p1, p2}, La/a/a/a/b/x;->a(IJ)V

    .line 567
    iput v3, p0, La/a/a/a/b/y;->b:I

    .line 569
    return-void
.end method

.method public final b()J
    .locals 3

    .prologue
    .line 561
    invoke-virtual {p0}, La/a/a/a/b/y;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iget-object v0, v0, La/a/a/a/b/x;->a:La/a/a/a/b/ch;

    iget-object v1, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iget v1, v1, La/a/a/a/b/x;->b:I

    iget v2, p0, La/a/a/a/b/y;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/a/a/b/y;->a:I

    iput v2, p0, La/a/a/a/b/y;->b:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, La/a/a/a/b/ch;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)V
    .locals 2
    .parameter

    .prologue
    .line 571
    iget v0, p0, La/a/a/a/b/y;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 572
    :cond_0
    iget-object v0, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iget v1, p0, La/a/a/a/b/y;->b:I

    invoke-virtual {v0, v1, p1, p2}, La/a/a/a/b/x;->b(IJ)J

    .line 573
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 558
    iget v0, p0, La/a/a/a/b/y;->a:I

    iget-object v1, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    invoke-virtual {v1}, La/a/a/a/b/x;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 559
    iget v0, p0, La/a/a/a/b/y;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, La/a/a/a/b/y;->a:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, La/a/a/a/b/y;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 575
    iget v0, p0, La/a/a/a/b/y;->b:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 576
    :cond_0
    iget-object v0, p0, La/a/a/a/b/y;->d:La/a/a/a/b/x;

    iget v1, p0, La/a/a/a/b/y;->b:I

    invoke-virtual {v0, v1}, La/a/a/a/b/x;->c(I)J

    .line 578
    iget v0, p0, La/a/a/a/b/y;->b:I

    iget v1, p0, La/a/a/a/b/y;->a:I

    if-ge v0, v1, :cond_1

    iget v0, p0, La/a/a/a/b/y;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/y;->a:I

    .line 579
    :cond_1
    iput v2, p0, La/a/a/a/b/y;->b:I

    .line 581
    return-void
.end method
