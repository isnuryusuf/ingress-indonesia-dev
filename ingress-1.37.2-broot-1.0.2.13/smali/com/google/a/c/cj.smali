.class abstract Lcom/google/a/c/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:Lcom/google/a/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/google/a/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:I

.field final synthetic f:Lcom/google/a/c/by;


# direct methods
.method constructor <init>(Lcom/google/a/c/by;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 334
    iput-object p1, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/cj;->b:I

    .line 336
    iput-object v1, p0, Lcom/google/a/c/cj;->c:Lcom/google/a/c/bz;

    .line 337
    iput-object v1, p0, Lcom/google/a/c/cj;->d:Lcom/google/a/c/bz;

    .line 338
    iget-object v0, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    invoke-static {v0}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;)I

    move-result v0

    iput v0, p0, Lcom/google/a/c/cj;->e:I

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    invoke-static {v0}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;)I

    move-result v0

    iget v1, p0, Lcom/google/a/c/cj;->e:I

    if-eq v0, v1, :cond_0

    .line 342
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 344
    :cond_0
    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/a/c/bz;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 348
    invoke-direct {p0}, Lcom/google/a/c/cj;->a()V

    .line 349
    iget-object v1, p0, Lcom/google/a/c/cj;->c:Lcom/google/a/c/bz;

    if-eqz v1, :cond_1

    .line 359
    :goto_0
    return v0

    .line 357
    :cond_0
    iget v1, p0, Lcom/google/a/c/cj;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/c/cj;->b:I

    .line 352
    :cond_1
    iget v1, p0, Lcom/google/a/c/cj;->b:I

    iget-object v2, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    invoke-static {v2}, Lcom/google/a/c/by;->b(Lcom/google/a/c/by;)[Lcom/google/a/c/bz;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 353
    iget-object v1, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    invoke-static {v1}, Lcom/google/a/c/by;->b(Lcom/google/a/c/by;)[Lcom/google/a/c/bz;

    move-result-object v1

    iget v2, p0, Lcom/google/a/c/cj;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    invoke-static {v1}, Lcom/google/a/c/by;->b(Lcom/google/a/c/by;)[Lcom/google/a/c/bz;

    move-result-object v1

    iget v2, p0, Lcom/google/a/c/cj;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/a/c/cj;->b:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/a/c/cj;->c:Lcom/google/a/c/bz;

    goto :goto_0

    .line 359
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/a/c/cj;->a()V

    .line 365
    invoke-virtual {p0}, Lcom/google/a/c/cj;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/cj;->c:Lcom/google/a/c/bz;

    .line 370
    iget-object v1, v0, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    iput-object v1, p0, Lcom/google/a/c/cj;->c:Lcom/google/a/c/bz;

    .line 371
    iput-object v0, p0, Lcom/google/a/c/cj;->d:Lcom/google/a/c/bz;

    .line 372
    invoke-virtual {p0, v0}, Lcom/google/a/c/cj;->a(Lcom/google/a/c/bz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/google/a/c/cj;->a()V

    .line 378
    iget-object v0, p0, Lcom/google/a/c/cj;->d:Lcom/google/a/c/bz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Only one remove() call allowed per call to next"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    iget-object v1, p0, Lcom/google/a/c/cj;->d:Lcom/google/a/c/bz;

    invoke-static {v0, v1}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;Lcom/google/a/c/bz;)V

    .line 380
    iget-object v0, p0, Lcom/google/a/c/cj;->f:Lcom/google/a/c/by;

    invoke-static {v0}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;)I

    move-result v0

    iput v0, p0, Lcom/google/a/c/cj;->e:I

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/c/cj;->d:Lcom/google/a/c/bz;

    .line 382
    return-void

    .line 378
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
