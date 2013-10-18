.class La/a/a/a/b/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:I

.field final synthetic e:La/a/a/a/b/ag;


# direct methods
.method private constructor <init>(La/a/a/a/b/ag;)V
    .locals 2
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iget-object v0, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    iget v0, v0, La/a/a/a/b/ag;->f:I

    iput v0, p0, La/a/a/a/b/an;->b:I

    .line 434
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/an;->c:I

    .line 436
    iget-object v0, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    iget v0, v0, La/a/a/a/b/ag;->i:I

    iput v0, p0, La/a/a/a/b/an;->d:I

    .line 438
    iget-object v0, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->d:[Z

    .line 439
    iget v1, p0, La/a/a/a/b/an;->d:I

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, La/a/a/a/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/an;->b:I

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 440
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/ag;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, La/a/a/a/b/an;-><init>(La/a/a/a/b/ag;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, La/a/a/a/b/an;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 446
    :cond_0
    iget v0, p0, La/a/a/a/b/an;->b:I

    iput v0, p0, La/a/a/a/b/an;->c:I

    .line 448
    iget v0, p0, La/a/a/a/b/an;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/an;->d:I

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->d:[Z

    .line 450
    :cond_1
    iget v1, p0, La/a/a/a/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    iget v2, v2, La/a/a/a/b/ag;->h:I

    and-int/2addr v1, v2

    iput v1, p0, La/a/a/a/b/an;->b:I

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_1

    .line 452
    :cond_2
    iget v0, p0, La/a/a/a/b/an;->c:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 442
    iget v0, p0, La/a/a/a/b/an;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 456
    iget v0, p0, La/a/a/a/b/an;->c:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 457
    :cond_0
    iget-object v0, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    iget v1, v0, La/a/a/a/b/ag;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/a/a/a/b/ag;->i:I

    .line 458
    iget-object v0, p0, La/a/a/a/b/an;->e:La/a/a/a/b/ag;

    iget v1, p0, La/a/a/a/b/an;->c:I

    invoke-virtual {v0, v1}, La/a/a/a/b/ag;->a(I)I

    move-result v0

    iget v1, p0, La/a/a/a/b/an;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, La/a/a/a/b/an;->d:I

    if-lez v0, :cond_1

    .line 459
    iget v0, p0, La/a/a/a/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/an;->d:I

    .line 460
    invoke-virtual {p0}, La/a/a/a/b/an;->b()I

    .line 462
    :cond_1
    iput v2, p0, La/a/a/a/b/an;->c:I

    .line 464
    return-void
.end method
