.class abstract Lcom/google/a/c/cu;
.super Lcom/google/a/c/cv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/cv",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-direct {p0}, Lcom/google/a/c/cv;-><init>()V

    .line 321
    const-string/jumbo v0, "capacity must be >= 0 but was %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4, v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    new-array v0, v5, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/a/c/cu;->a:[Ljava/lang/Object;

    .line 323
    iput v3, p0, Lcom/google/a/c/cu;->b:I

    .line 324
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/a/c/cu;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/a/c/cu;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/c/cu;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/a/c/cu;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/a/c/ig;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/cu;->a:[Ljava/lang/Object;

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/a/c/cu;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/a/c/cu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget v0, p0, Lcom/google/a/c/cu;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/c/cu;->a(I)V

    .line 341
    iget-object v0, p0, Lcom/google/a/c/cu;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/c/cu;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/c/cu;->b:I

    aput-object p1, v0, v1

    .line 342
    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/a/c/cv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 356
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 357
    check-cast v0, Ljava/util/Collection;

    .line 358
    iget v1, p0, Lcom/google/a/c/cu;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/c/cu;->a(I)V

    .line 360
    :cond_0
    invoke-super {p0, p1}, Lcom/google/a/c/cv;->a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;

    .line 361
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/a/c/cv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p1}, Lcom/google/a/c/ig;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 348
    iget v0, p0, Lcom/google/a/c/cu;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/c/cu;->a(I)V

    .line 349
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/a/c/cu;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/c/cu;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget v0, p0, Lcom/google/a/c/cu;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/c/cu;->b:I

    .line 351
    return-object p0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 1
    .parameter

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/lang/Object;)Lcom/google/a/c/cu;

    move-result-object v0

    return-object v0
.end method
