.class abstract Lcom/google/a/b/ah;
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

.field c:I

.field d:Lcom/google/a/b/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/aq",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/o",
            "<TK;TV;>.com/google/a/b/bq;"
        }
    .end annotation
.end field

.field h:Lcom/google/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/o",
            "<TK;TV;>.com/google/a/b/bq;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/a/b/o;


# direct methods
.method constructor <init>(Lcom/google/a/b/o;)V
    .locals 1
    .parameter

    .prologue
    .line 4349
    iput-object p1, p0, Lcom/google/a/b/ah;->i:Lcom/google/a/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4350
    iget-object v0, p1, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/b/ah;->b:I

    .line 4351
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/b/ah;->c:I

    .line 4352
    invoke-direct {p0}, Lcom/google/a/b/ah;->b()V

    .line 4353
    return-void
.end method

.method private a(Lcom/google/a/b/ap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 4415
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/ah;->i:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    .line 4416
    invoke-interface {p1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v2

    .line 4417
    iget-object v3, p0, Lcom/google/a/b/ah;->i:Lcom/google/a/b/o;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;J)Ljava/lang/Object;

    move-result-object v0

    .line 4418
    if-eqz v0, :cond_0

    .line 4419
    new-instance v1, Lcom/google/a/b/bq;

    iget-object v3, p0, Lcom/google/a/b/ah;->i:Lcom/google/a/b/o;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/a/b/bq;-><init>(Lcom/google/a/b/o;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/a/b/ah;->g:Lcom/google/a/b/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4420
    iget-object v0, p0, Lcom/google/a/b/ah;->d:Lcom/google/a/b/aq;

    invoke-virtual {v0}, Lcom/google/a/b/aq;->b()V

    const/4 v0, 0x1

    .line 4423
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/ah;->d:Lcom/google/a/b/aq;

    invoke-virtual {v0}, Lcom/google/a/b/aq;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/b/ah;->d:Lcom/google/a/b/aq;

    invoke-virtual {v1}, Lcom/google/a/b/aq;->b()V

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 4359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/ah;->g:Lcom/google/a/b/bq;

    .line 4361
    invoke-direct {p0}, Lcom/google/a/b/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4379
    :cond_0
    :goto_0
    return-void

    .line 4365
    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/ah;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4369
    :cond_2
    iget v0, p0, Lcom/google/a/b/ah;->b:I

    if-ltz v0, :cond_0

    .line 4370
    iget-object v0, p0, Lcom/google/a/b/ah;->i:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    iget v1, p0, Lcom/google/a/b/ah;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/a/b/ah;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/a/b/ah;->d:Lcom/google/a/b/aq;

    .line 4371
    iget-object v0, p0, Lcom/google/a/b/ah;->d:Lcom/google/a/b/aq;

    iget v0, v0, Lcom/google/a/b/aq;->b:I

    if-eqz v0, :cond_2

    .line 4372
    iget-object v0, p0, Lcom/google/a/b/ah;->d:Lcom/google/a/b/aq;

    iget-object v0, v0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/a/b/ah;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4373
    iget-object v0, p0, Lcom/google/a/b/ah;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/b/ah;->c:I

    .line 4374
    invoke-direct {p0}, Lcom/google/a/b/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 4385
    iget-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    if-eqz v0, :cond_1

    .line 4386
    iget-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    :goto_0
    iget-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    if-eqz v0, :cond_1

    .line 4387
    iget-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    invoke-direct {p0, v0}, Lcom/google/a/b/ah;->a(Lcom/google/a/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4388
    const/4 v0, 0x1

    .line 4392
    :goto_1
    return v0

    .line 4386
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    goto :goto_0

    .line 4392
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 4399
    :cond_0
    iget v0, p0, Lcom/google/a/b/ah;->c:I

    if-ltz v0, :cond_2

    .line 4400
    iget-object v0, p0, Lcom/google/a/b/ah;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/a/b/ah;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/a/b/ah;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    iput-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    if-eqz v0, :cond_0

    .line 4401
    iget-object v0, p0, Lcom/google/a/b/ah;->f:Lcom/google/a/b/ap;

    invoke-direct {p0, v0}, Lcom/google/a/b/ah;->a(Lcom/google/a/b/ap;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/a/b/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4402
    :cond_1
    const/4 v0, 0x1

    .line 4406
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/a/b/bq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/o",
            "<TK;TV;>.com/google/a/b/bq;"
        }
    .end annotation

    .prologue
    .line 4436
    iget-object v0, p0, Lcom/google/a/b/ah;->g:Lcom/google/a/b/bq;

    if-nez v0, :cond_0

    .line 4437
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4439
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/ah;->g:Lcom/google/a/b/bq;

    iput-object v0, p0, Lcom/google/a/b/ah;->h:Lcom/google/a/b/bq;

    .line 4440
    invoke-direct {p0}, Lcom/google/a/b/ah;->b()V

    .line 4441
    iget-object v0, p0, Lcom/google/a/b/ah;->h:Lcom/google/a/b/bq;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 4432
    iget-object v0, p0, Lcom/google/a/b/ah;->g:Lcom/google/a/b/bq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 4446
    iget-object v0, p0, Lcom/google/a/b/ah;->h:Lcom/google/a/b/bq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 4447
    iget-object v0, p0, Lcom/google/a/b/ah;->i:Lcom/google/a/b/o;

    iget-object v1, p0, Lcom/google/a/b/ah;->h:Lcom/google/a/b/bq;

    invoke-virtual {v1}, Lcom/google/a/b/bq;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/b/o;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/ah;->h:Lcom/google/a/b/bq;

    .line 4449
    return-void

    .line 4446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
