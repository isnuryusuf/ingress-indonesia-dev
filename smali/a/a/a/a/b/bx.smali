.class final La/a/a/a/b/bx;
.super La/a/a/a/b/z;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:La/a/a/a/b/bw;


# direct methods
.method constructor <init>(La/a/a/a/b/bw;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, La/a/a/a/b/bx;->d:La/a/a/a/b/bw;

    iput p2, p0, La/a/a/a/b/bx;->c:I

    invoke-direct {p0}, La/a/a/a/b/z;-><init>()V

    .line 367
    iget v0, p0, La/a/a/a/b/bx;->c:I

    iput v0, p0, La/a/a/a/b/bx;->a:I

    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/bx;->b:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    .prologue
    .line 370
    invoke-virtual {p0}, La/a/a/a/b/bx;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/bx;->d:La/a/a/a/b/bw;

    iget-object v0, v0, La/a/a/a/b/bw;->a:[J

    iget v1, p0, La/a/a/a/b/bx;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/a/b/bx;->a:I

    iput v1, p0, La/a/a/a/b/bx;->b:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 375
    iget v0, p0, La/a/a/a/b/bx;->b:I

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 376
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bx;->d:La/a/a/a/b/bw;

    iget v1, p0, La/a/a/a/b/bx;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/a/b/bx;->a:I

    invoke-virtual {v0, v1, p1, p2}, La/a/a/a/b/bw;->a(IJ)V

    .line 377
    iput v3, p0, La/a/a/a/b/bx;->b:I

    .line 378
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, La/a/a/a/b/bx;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/bx;->d:La/a/a/a/b/bw;

    iget-object v0, v0, La/a/a/a/b/bw;->a:[J

    iget v1, p0, La/a/a/a/b/bx;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/bx;->a:I

    iput v1, p0, La/a/a/a/b/bx;->b:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final b(J)V
    .locals 2
    .parameter

    .prologue
    .line 380
    iget v0, p0, La/a/a/a/b/bx;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bx;->d:La/a/a/a/b/bw;

    iget v1, p0, La/a/a/a/b/bx;->b:I

    invoke-virtual {v0, v1, p1, p2}, La/a/a/a/b/bw;->b(IJ)J

    .line 382
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, La/a/a/a/b/bx;->a:I

    iget-object v1, p0, La/a/a/a/b/bx;->d:La/a/a/a/b/bw;

    iget v1, v1, La/a/a/a/b/bw;->b:I

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
    .line 369
    iget v0, p0, La/a/a/a/b/bx;->a:I

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
    .line 372
    iget v0, p0, La/a/a/a/b/bx;->a:I

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, La/a/a/a/b/bx;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 384
    iget v0, p0, La/a/a/a/b/bx;->b:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 385
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bx;->d:La/a/a/a/b/bw;

    iget v1, p0, La/a/a/a/b/bx;->b:I

    invoke-virtual {v0, v1}, La/a/a/a/b/bw;->c(I)J

    .line 387
    iget v0, p0, La/a/a/a/b/bx;->b:I

    iget v1, p0, La/a/a/a/b/bx;->a:I

    if-ge v0, v1, :cond_1

    iget v0, p0, La/a/a/a/b/bx;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/bx;->a:I

    .line 388
    :cond_1
    iput v2, p0, La/a/a/a/b/bx;->b:I

    .line 389
    return-void
.end method
