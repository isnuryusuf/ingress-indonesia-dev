.class final La/a/a/a/b/ck;
.super La/a/a/a/b/u;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:La/a/a/a/b/cj;


# direct methods
.method private constructor <init>(La/a/a/a/b/cj;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    invoke-direct {p0}, La/a/a/a/b/u;-><init>()V

    .line 320
    iget-object v0, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget v0, v0, La/a/a/a/b/cj;->e:I

    iput v0, p0, La/a/a/a/b/ck;->a:I

    .line 323
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/ck;->b:I

    .line 325
    iget-object v0, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget v0, v0, La/a/a/a/b/cj;->h:I

    iput v0, p0, La/a/a/a/b/ck;->c:I

    .line 327
    iget-object v0, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget-object v0, v0, La/a/a/a/b/cj;->c:[Z

    .line 328
    iget v1, p0, La/a/a/a/b/ck;->c:I

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, La/a/a/a/b/ck;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, La/a/a/a/b/ck;->a:I

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 329
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/cj;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1}, La/a/a/a/b/ck;-><init>(La/a/a/a/b/cj;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .prologue
    .line 334
    invoke-virtual {p0}, La/a/a/a/b/ck;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 335
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget-object v0, v0, La/a/a/a/b/cj;->b:[J

    iget v1, p0, La/a/a/a/b/ck;->a:I

    iput v1, p0, La/a/a/a/b/ck;->b:I

    aget-wide v0, v0, v1

    .line 337
    iget v2, p0, La/a/a/a/b/ck;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/a/a/b/ck;->c:I

    if-eqz v2, :cond_2

    .line 338
    iget-object v2, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget-object v2, v2, La/a/a/a/b/cj;->c:[Z

    .line 339
    :cond_1
    iget v3, p0, La/a/a/a/b/ck;->a:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget v4, v4, La/a/a/a/b/cj;->g:I

    and-int/2addr v3, v4

    iput v3, p0, La/a/a/a/b/ck;->a:I

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_1

    .line 341
    :cond_2
    return-wide v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 331
    iget v0, p0, La/a/a/a/b/ck;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 345
    iget v0, p0, La/a/a/a/b/ck;->b:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget v1, v0, La/a/a/a/b/cj;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/a/a/a/b/cj;->h:I

    .line 347
    iget-object v0, p0, La/a/a/a/b/ck;->d:La/a/a/a/b/cj;

    iget v1, p0, La/a/a/a/b/ck;->b:I

    invoke-virtual {v0, v1}, La/a/a/a/b/cj;->a(I)I

    move-result v0

    iget v1, p0, La/a/a/a/b/ck;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p0, La/a/a/a/b/ck;->c:I

    if-lez v0, :cond_1

    .line 348
    iget v0, p0, La/a/a/a/b/ck;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/ck;->c:I

    .line 349
    invoke-virtual {p0}, La/a/a/a/b/ck;->a()J

    .line 351
    :cond_1
    iput v2, p0, La/a/a/a/b/ck;->b:I

    .line 353
    return-void
.end method
