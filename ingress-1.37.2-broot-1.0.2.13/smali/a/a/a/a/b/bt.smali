.class La/a/a/a/b/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:I

.field d:I

.field e:I

.field final synthetic f:La/a/a/a/b/bl;


# direct methods
.method private constructor <init>(La/a/a/a/b/bl;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iget-object v0, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    iget v0, v0, La/a/a/a/b/bl;->f:I

    iput v0, p0, La/a/a/a/b/bt;->c:I

    .line 399
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/bt;->d:I

    .line 401
    iget-object v0, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    iget v0, v0, La/a/a/a/b/bl;->i:I

    iput v0, p0, La/a/a/a/b/bt;->e:I

    .line 403
    iget-object v0, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->d:[Z

    .line 404
    iget v1, p0, La/a/a/a/b/bt;->e:I

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, La/a/a/a/b/bt;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/bt;->c:I

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 405
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/bl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-direct {p0, p1}, La/a/a/a/b/bt;-><init>(La/a/a/a/b/bl;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 3

    .prologue
    .line 410
    invoke-virtual {p0}, La/a/a/a/b/bt;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 411
    :cond_0
    iget v0, p0, La/a/a/a/b/bt;->c:I

    iput v0, p0, La/a/a/a/b/bt;->d:I

    .line 413
    iget v0, p0, La/a/a/a/b/bt;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/bt;->e:I

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    iget-object v0, v0, La/a/a/a/b/bl;->d:[Z

    .line 415
    :cond_1
    iget v1, p0, La/a/a/a/b/bt;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    iget v2, v2, La/a/a/a/b/bl;->h:I

    and-int/2addr v1, v2

    iput v1, p0, La/a/a/a/b/bt;->c:I

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_1

    .line 417
    :cond_2
    iget v0, p0, La/a/a/a/b/bt;->d:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 407
    iget v0, p0, La/a/a/a/b/bt;->e:I

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

    .line 421
    iget v0, p0, La/a/a/a/b/bt;->d:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 422
    :cond_0
    iget-object v0, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    iget v1, v0, La/a/a/a/b/bl;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/a/a/a/b/bl;->i:I

    .line 423
    iget-object v0, p0, La/a/a/a/b/bt;->f:La/a/a/a/b/bl;

    iget v1, p0, La/a/a/a/b/bt;->d:I

    invoke-virtual {v0, v1}, La/a/a/a/b/bl;->a(I)I

    move-result v0

    iget v1, p0, La/a/a/a/b/bt;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p0, La/a/a/a/b/bt;->e:I

    if-lez v0, :cond_1

    .line 424
    iget v0, p0, La/a/a/a/b/bt;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/bt;->e:I

    .line 425
    invoke-virtual {p0}, La/a/a/a/b/bt;->b()I

    .line 427
    :cond_1
    iput v2, p0, La/a/a/a/b/bt;->d:I

    .line 429
    return-void
.end method
