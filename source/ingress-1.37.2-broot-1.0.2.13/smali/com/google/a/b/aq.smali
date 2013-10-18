.class final Lcom/google/a/b/aq;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:I

.field d:I

.field e:I

.field volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/google/a/b/c;


# direct methods
.method constructor <init>(Lcom/google/a/b/o;IJLcom/google/a/b/c;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/o",
            "<TK;TV;>;IJ",
            "Lcom/google/a/b/c;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2154
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/a/b/aq;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2155
    iput-object p1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    .line 2156
    iput-wide p3, p0, Lcom/google/a/b/aq;->g:J

    .line 2157
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/c;

    iput-object v0, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    .line 2158
    invoke-static {p2}, Lcom/google/a/b/aq;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/a/b/aq;->e:I

    iget-object v2, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v2}, Lcom/google/a/b/o;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/a/b/aq;->e:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/a/b/aq;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/a/b/aq;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/b/aq;->e:I

    :cond_0
    iput-object v0, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2160
    invoke-virtual {p1}, Lcom/google/a/b/o;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/a/b/aq;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2163
    invoke-virtual {p1}, Lcom/google/a/b/o;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_1
    iput-object v1, p0, Lcom/google/a/b/aq;->i:Ljava/lang/ref/ReferenceQueue;

    .line 2166
    invoke-virtual {p1}, Lcom/google/a/b/o;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/a/b/aq;->j:Ljava/util/Queue;

    .line 2170
    invoke-virtual {p1}, Lcom/google/a/b/o;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/a/b/bn;

    invoke-direct {v0}, Lcom/google/a/b/bn;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/a/b/aq;->l:Ljava/util/Queue;

    .line 2174
    invoke-virtual {p1}, Lcom/google/a/b/o;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/a/b/t;

    invoke-direct {v0}, Lcom/google/a/b/t;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    .line 2177
    return-void

    :cond_2
    move-object v0, v1

    .line 2160
    goto :goto_0

    .line 2166
    :cond_3
    invoke-static {}, Lcom/google/a/b/o;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2170
    :cond_4
    invoke-static {}, Lcom/google/a/b/o;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2174
    :cond_5
    invoke-static {}, Lcom/google/a/b/o;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2203
    invoke-interface {p1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return-object v0

    .line 2208
    :cond_1
    invoke-interface {p1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v1

    .line 2209
    invoke-interface {v1}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2210
    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/google/a/b/bd;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2215
    :cond_2
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->s:Lcom/google/a/b/w;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/a/b/w;->a(Lcom/google/a/b/aq;Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 2216
    iget-object v3, p0, Lcom/google/a/b/aq;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/a/b/bd;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/b/ap;)Lcom/google/a/b/bd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/bd;)V

    goto :goto_0
.end method

.method private a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;TK;",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;",
            "Lcom/google/a/b/bx;",
            ")",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3330
    invoke-direct {p0, p3, p4, p5}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    .line 3331
    iget-object v0, p0, Lcom/google/a/b/aq;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3332
    iget-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3334
    invoke-interface {p4}, Lcom/google/a/b/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3335
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/google/a/b/bd;->a(Ljava/lang/Object;)V

    .line 3338
    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/aq;->b(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;IJ)Lcom/google/a/b/ap;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2800
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/aq;->e(Ljava/lang/Object;I)Lcom/google/a/b/ap;

    move-result-object v1

    .line 2801
    if-nez v1, :cond_0

    .line 2807
    :goto_0
    return-object v0

    .line 2803
    :cond_0
    iget-object v2, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2804
    invoke-direct {p0, p3, p4}, Lcom/google/a/b/aq;->a(J)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2807
    goto :goto_0
.end method

.method private a(Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->s:Lcom/google/a/b/w;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/a/b/w;->a(Lcom/google/a/b/aq;Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/a/b/ap;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/a/b/k;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;TK;ITV;J",
            "Lcom/google/a/b/k",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/a/b/ap;->h()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-wide v2, v2, Lcom/google/a/b/o;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/b/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2432
    invoke-direct {p0, p2, p3, p7}, Lcom/google/a/b/aq;->c(Ljava/lang/Object;ILcom/google/a/b/k;)Ljava/lang/Object;

    move-result-object v0

    .line 2433
    if-eqz v0, :cond_0

    move-object p4, v0

    .line 2437
    :cond_0
    return-object p4
.end method

.method private a(Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;TK;",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2360
    invoke-interface {p3}, Lcom/google/a/b/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2361
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2364
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Recursive load"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 2367
    :try_start_0
    invoke-interface {p3}, Lcom/google/a/b/bd;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2368
    if-nez v0, :cond_2

    .line 2369
    new-instance v0, Lcom/google/a/b/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CacheLoader returned null for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/b/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2376
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-interface {v1}, Lcom/google/a/b/c;->b()V

    throw v0

    .line 2364
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2372
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v1, v1, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v1}, Lcom/google/a/a/bw;->a()J

    move-result-wide v1

    .line 2373
    invoke-direct {p0, p1, v1, v2}, Lcom/google/a/b/aq;->b(Lcom/google/a/b/ap;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2376
    iget-object v1, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-interface {v1}, Lcom/google/a/b/c;->b()V

    return-object v0
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(J)V
    .locals 1
    .parameter

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/google/a/b/aq;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2678
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/aq;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2680
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2684
    :cond_0
    return-void

    .line 2680
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    throw v0
.end method

.method private a(Lcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3363
    sget-object v0, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/bx;)V

    .line 3364
    iget-object v0, p0, Lcom/google/a/b/aq;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3365
    iget-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3366
    return-void
.end method

.method private a(Lcom/google/a/b/ap;Lcom/google/a/b/bx;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/bx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2708
    invoke-interface {p1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/b/ap;->c()I

    invoke-interface {p1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    .line 2709
    return-void
.end method

.method private a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .prologue
    .line 2225
    invoke-interface {p1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v1

    .line 2226
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->l:Lcom/google/a/b/ck;

    invoke-interface {v0, p2}, Lcom/google/a/b/ck;->a(Ljava/lang/Object;)I

    move-result v2

    .line 2227
    if-ltz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v3, "Weights must be non-negative"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 2229
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->j:Lcom/google/a/b/at;

    invoke-virtual {v0, p0, p1, p3, v2}, Lcom/google/a/b/at;->a(Lcom/google/a/b/aq;Lcom/google/a/b/ap;Ljava/lang/Object;I)Lcom/google/a/b/bd;

    move-result-object v0

    .line 2231
    invoke-interface {p1, v0}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/bd;)V

    .line 2232
    invoke-direct {p0}, Lcom/google/a/b/aq;->e()V

    iget v0, p0, Lcom/google/a/b/aq;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/a/b/aq;->c:I

    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p4, p5}, Lcom/google/a/b/ap;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p4, p5}, Lcom/google/a/b/ap;->b(J)V

    :cond_1
    iget-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/a/b/aq;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2233
    invoke-interface {v1, p3}, Lcom/google/a/b/bd;->a(Ljava/lang/Object;)V

    .line 2234
    return-void

    .line 2227
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;",
            "Lcom/google/a/b/bx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2714
    iget v0, p0, Lcom/google/a/b/aq;->c:I

    invoke-interface {p2}, Lcom/google/a/b/bd;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/b/aq;->c:I

    .line 2715
    invoke-virtual {p3}, Lcom/google/a/b/bx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2716
    iget-object v0, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-interface {v0}, Lcom/google/a/b/c;->c()V

    .line 2718
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->p:Ljava/util/Queue;

    sget-object v1, Lcom/google/a/b/o;->w:Ljava/util/Queue;

    if-eq v0, v1, :cond_2

    .line 2719
    invoke-interface {p2}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2721
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v1}, Lcom/google/a/b/o;->h()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2722
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected null key during removal notification, cause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2723
    sget-object v2, Lcom/google/a/b/o;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2729
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/a/b/ce;

    invoke-direct {v1, p1, v0, p3}, Lcom/google/a/b/ce;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/b/bx;)V

    .line 2730
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->p:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2732
    :cond_2
    return-void

    .line 2724
    :cond_3
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v1}, Lcom/google/a/b/o;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2725
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected null value during removal notification, cause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2726
    sget-object v2, Lcom/google/a/b/o;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/google/a/b/ap;ILcom/google/a/b/bx;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;I",
            "Lcom/google/a/b/bx;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3470
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    .line 3471
    iget-object v6, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3472
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 3473
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/ap;

    move-object v2, v1

    .line 3475
    :goto_0
    if-eqz v2, :cond_1

    .line 3476
    if-ne v2, p1, :cond_0

    .line 3477
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3478
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3480
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3481
    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3482
    iput v1, p0, Lcom/google/a/b/aq;->b:I

    .line 3483
    const/4 v0, 0x1

    .line 3487
    :goto_1
    return v0

    .line 3475
    :cond_0
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v2

    goto :goto_0

    .line 3487
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;ILcom/google/a/b/ak;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/ak",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3437
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3439
    :try_start_0
    iget-object v3, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3440
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3441
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    move-object v2, v0

    .line 3443
    :goto_0
    if-eqz v2, :cond_3

    .line 3444
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v5

    .line 3445
    invoke-interface {v2}, Lcom/google/a/b/ap;->c()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v6, v6, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v6, p1, v5}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3447
    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v5

    .line 3448
    if-ne v5, p3, :cond_1

    .line 3449
    invoke-virtual {p3}, Lcom/google/a/b/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3450
    iget-object v0, p3, Lcom/google/a/b/ak;->a:Lcom/google/a/b/bd;

    invoke-interface {v2, v0}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/bd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3455
    :goto_1
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3464
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 3452
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/google/a/b/aq;->b(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3453
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3463
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3464
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0

    .line 3457
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3464
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v1

    goto :goto_2

    .line 3443
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3461
    :cond_3
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3464
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/Object;ILcom/google/a/b/ak;Ljava/lang/Object;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/ak",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3192
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3194
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v4

    .line 3195
    invoke-direct {p0, v4, v5}, Lcom/google/a/b/aq;->c(J)V

    .line 3197
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v7, v0, 0x1

    .line 3198
    iget v0, p0, Lcom/google/a/b/aq;->e:I

    if-le v7, v0, :cond_0

    .line 3199
    invoke-direct {p0}, Lcom/google/a/b/aq;->g()V

    .line 3200
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v7, v0, 0x1

    .line 3203
    :cond_0
    iget-object v8, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3204
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3205
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    move-object v1, v0

    .line 3207
    :goto_0
    if-eqz v1, :cond_6

    .line 3208
    invoke-interface {v1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3209
    invoke-interface {v1}, Lcom/google/a/b/ap;->c()I

    move-result v10

    if-ne v10, p2, :cond_5

    if-eqz v3, :cond_5

    iget-object v10, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v10, v10, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v10, p1, v3}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3211
    invoke-interface {v1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v0

    .line 3212
    invoke-interface {v0}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3215
    if-eq p3, v0, :cond_1

    if-nez v3, :cond_4

    sget-object v8, Lcom/google/a/b/o;->v:Lcom/google/a/b/bd;

    if-eq v0, v8, :cond_4

    .line 3217
    :cond_1
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3218
    invoke-virtual {p3}, Lcom/google/a/b/ak;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3219
    if-nez v3, :cond_3

    sget-object v0, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    .line 3221
    :goto_1
    invoke-direct {p0, p1, p3, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    .line 3222
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    :cond_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3224
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3225
    iput v7, p0, Lcom/google/a/b/aq;->b:I

    .line 3226
    invoke-direct {p0}, Lcom/google/a/b/aq;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3227
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3246
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v6

    :goto_2
    return v0

    .line 3219
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/a/b/bx;->b:Lcom/google/a/b/bx;

    goto :goto_1

    .line 3231
    :cond_4
    new-instance v0, Lcom/google/a/b/bl;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lcom/google/a/b/bl;-><init>(Ljava/lang/Object;I)V

    .line 3232
    sget-object v1, Lcom/google/a/b/bx;->b:Lcom/google/a/b/bx;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3233
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3246
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v2

    goto :goto_2

    .line 3207
    :cond_5
    :try_start_2
    invoke-interface {v1}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v1

    goto :goto_0

    .line 3237
    :cond_6
    iget v1, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/b/aq;->d:I

    .line 3238
    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3239
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3240
    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3241
    iput v7, p0, Lcom/google/a/b/aq;->b:I

    .line 3242
    invoke-direct {p0}, Lcom/google/a/b/aq;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3243
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3246
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v6

    goto :goto_2

    .line 3245
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3246
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method private b(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3346
    iget v2, p0, Lcom/google/a/b/aq;->b:I

    .line 3347
    invoke-interface {p2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v1

    .line 3348
    :goto_0
    if-eq p1, p2, :cond_1

    .line 3349
    invoke-direct {p0, p1, v1}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3350
    if-eqz v0, :cond_0

    move v1, v2

    .line 3348
    :goto_1
    invoke-interface {p1}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 3353
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;)V

    .line 3354
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 3357
    :cond_1
    iput v2, p0, Lcom/google/a/b/aq;->b:I

    .line 3358
    return-object v1
.end method

.method private b(Ljava/lang/Object;ILcom/google/a/b/k;)Ljava/lang/Object;
    .locals 17
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/k",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2279
    const/4 v6, 0x0

    .line 2280
    const/4 v4, 0x0

    .line 2281
    const/4 v7, 0x1

    .line 2283
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/b/aq;->lock()V

    .line 2286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v3, v3, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v3}, Lcom/google/a/a/bw;->a()J

    move-result-wide v9

    .line 2287
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/google/a/b/aq;->c(J)V

    .line 2289
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v11, v3, -0x1

    .line 2290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2291
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int v13, p2, v3

    .line 2292
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/b/ap;

    move-object v5, v3

    .line 2294
    :goto_0
    if-eqz v5, :cond_7

    .line 2295
    invoke-interface {v5}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v14

    .line 2296
    invoke-interface {v5}, Lcom/google/a/b/ap;->c()I

    move-result v8

    move/from16 v0, p2

    if-ne v8, v0, :cond_3

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v8, v8, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v14}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2298
    invoke-interface {v5}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v8

    .line 2299
    invoke-interface {v8}, Lcom/google/a/b/bd;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2300
    const/4 v6, 0x0

    move-object v7, v8

    .line 2325
    :goto_1
    if-eqz v6, :cond_6

    .line 2326
    new-instance v4, Lcom/google/a/b/ak;

    invoke-direct {v4}, Lcom/google/a/b/ak;-><init>()V

    .line 2328
    if-nez v5, :cond_4

    .line 2329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v3

    .line 2330
    invoke-interface {v3, v4}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/bd;)V

    .line 2331
    invoke-virtual {v12, v13, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 2337
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2338
    invoke-direct/range {p0 .. p0}, Lcom/google/a/b/aq;->h()V

    .line 2341
    if-eqz v6, :cond_5

    .line 2346
    :try_start_1
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2347
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/google/a/b/ak;->a(Ljava/lang/Object;Lcom/google/a/b/k;)Lcom/google/a/i/a/p;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ak;Lcom/google/a/i/a/p;)Ljava/lang/Object;

    move-result-object v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-interface {v4}, Lcom/google/a/b/c;->b()V

    .line 2354
    :goto_3
    return-object v3

    .line 2302
    :cond_0
    :try_start_3
    invoke-interface {v8}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v6

    .line 2303
    if-nez v6, :cond_1

    .line 2304
    sget-object v6, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v6}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    .line 2317
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/a/b/aq;->l:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2318
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2319
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/a/b/aq;->b:I

    move v6, v7

    move-object v7, v8

    .line 2321
    goto :goto_1

    .line 2305
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v15, v5, v9, v10}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;J)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2308
    sget-object v6, Lcom/google/a/b/bx;->d:Lcom/google/a/b/bx;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v6}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2337
    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2338
    invoke-direct/range {p0 .. p0}, Lcom/google/a/b/aq;->h()V

    throw v3

    .line 2310
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/google/a/b/aq;->c(Lcom/google/a/b/ap;J)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-interface {v3}, Lcom/google/a/b/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2337
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2338
    invoke-direct/range {p0 .. p0}, Lcom/google/a/b/aq;->h()V

    move-object v3, v6

    goto :goto_3

    .line 2294
    :cond_3
    :try_start_5
    invoke-interface {v5}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v5

    goto/16 :goto_0

    .line 2333
    :cond_4
    invoke-interface {v5, v4}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/bd;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    .line 2348
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2350
    :catchall_2
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-interface {v4}, Lcom/google/a/b/c;->b()V

    throw v3

    .line 2354
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_2

    :cond_7
    move/from16 v16, v7

    move-object v7, v6

    move/from16 v6, v16

    goto/16 :goto_1
.end method

.method private b(J)V
    .locals 3
    .parameter

    .prologue
    .line 2688
    invoke-direct {p0}, Lcom/google/a/b/aq;->e()V

    .line 2691
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/aq;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2692
    invoke-interface {v0}, Lcom/google/a/b/ap;->c()I

    move-result v1

    sget-object v2, Lcom/google/a/b/bx;->d:Lcom/google/a/b/bx;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;ILcom/google/a/b/bx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2693
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2696
    :cond_1
    iget-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2697
    invoke-interface {v0}, Lcom/google/a/b/ap;->c()I

    move-result v1

    sget-object v2, Lcom/google/a/b/bx;->d:Lcom/google/a/b/bx;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;ILcom/google/a/b/bx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2698
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2701
    :cond_2
    return-void
.end method

.method private b(Lcom/google/a/b/ap;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    invoke-interface {p1, p2, p3}, Lcom/google/a/b/ap;->a(J)V

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/aq;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2612
    return-void
.end method

.method private c(Ljava/lang/Object;ILcom/google/a/b/k;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/k",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2448
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/aq;->d(Ljava/lang/Object;I)Lcom/google/a/b/ak;

    move-result-object v4

    .line 2450
    if-nez v4, :cond_0

    move-object v0, v6

    .line 2462
    :goto_0
    return-object v0

    .line 2454
    :cond_0
    invoke-virtual {v4, p1, p3}, Lcom/google/a/b/ak;->a(Ljava/lang/Object;Lcom/google/a/b/k;)Lcom/google/a/i/a/p;

    move-result-object v5

    new-instance v0, Lcom/google/a/b/ar;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/ar;-><init>(Lcom/google/a/b/aq;Ljava/lang/Object;ILcom/google/a/b/ak;Lcom/google/a/i/a/p;)V

    sget-object v1, Lcom/google/a/b/o;->b:Lcom/google/a/i/a/r;

    invoke-interface {v5, v0, v1}, Lcom/google/a/i/a/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2455
    invoke-interface {v5}, Lcom/google/a/i/a/p;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2457
    :try_start_0
    invoke-static {v5}, Lcom/google/a/i/a/x;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v6

    .line 2462
    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 2526
    invoke-virtual {p0}, Lcom/google/a/b/aq;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2528
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/b/aq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2533
    :cond_0
    return-void

    .line 2530
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    throw v0
.end method

.method private c(J)V
    .locals 2
    .parameter

    .prologue
    .line 3525
    invoke-virtual {p0}, Lcom/google/a/b/aq;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3527
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/b/aq;->d()V

    .line 3528
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/aq;->b(J)V

    .line 3529
    iget-object v0, p0, Lcom/google/a/b/aq;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3531
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3534
    :cond_0
    return-void

    .line 3531
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    throw v0
.end method

.method private c(Lcom/google/a/b/ap;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2624
    invoke-interface {p1, p2, p3}, Lcom/google/a/b/ap;->a(J)V

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2627
    return-void
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/a/b/ak;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Lcom/google/a/b/ak",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2472
    .line 2473
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 2475
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v2

    .line 2476
    invoke-direct {p0, v2, v3}, Lcom/google/a/b/aq;->c(J)V

    .line 2478
    iget-object v4, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2479
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2480
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    move-object v1, v0

    .line 2483
    :goto_0
    if-eqz v1, :cond_3

    .line 2484
    invoke-interface {v1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2485
    invoke-interface {v1}, Lcom/google/a/b/ap;->c()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v7, v7, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v7, p1, v6}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2489
    invoke-interface {v1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    .line 2490
    invoke-interface {v4}, Lcom/google/a/b/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/google/a/b/ap;->h()J

    move-result-wide v5

    sub-long/2addr v2, v5

    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-wide v5, v0, Lcom/google/a/b/o;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v5

    if-gez v0, :cond_1

    .line 2495
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2515
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2499
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 2500
    new-instance v0, Lcom/google/a/b/ak;

    invoke-direct {v0, v4}, Lcom/google/a/b/ak;-><init>(Lcom/google/a/b/bd;)V

    .line 2502
    invoke-interface {v1, v0}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/bd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2514
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2515
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_1

    .line 2483
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v1

    goto :goto_0

    .line 2507
    :cond_3
    iget v1, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/b/aq;->d:I

    .line 2508
    new-instance v1, Lcom/google/a/b/ak;

    invoke-direct {v1}, Lcom/google/a/b/ak;-><init>()V

    .line 2509
    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 2510
    invoke-interface {v0, v1}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/bd;)V

    .line 2511
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2514
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2515
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v1

    goto :goto_1

    .line 2514
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2515
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 2541
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 2542
    :goto_0
    iget-object v0, p0, Lcom/google/a/b/aq;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/a/b/ap;

    iget-object v3, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v3, v0}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;)V

    add-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_3

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2545
    :cond_1
    iget-object v0, p0, Lcom/google/a/b/aq;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/google/a/b/bd;

    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v1, v0}, Lcom/google/a/b/o;->a(Lcom/google/a/b/bd;)V

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 2547
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;I)Lcom/google/a/b/ap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    :goto_0
    if-eqz v0, :cond_2

    .line 2780
    invoke-interface {v0}, Lcom/google/a/b/ap;->c()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2781
    invoke-interface {v0}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2785
    if-nez v1, :cond_1

    .line 2786
    invoke-direct {p0}, Lcom/google/a/b/aq;->c()V

    .line 2779
    :cond_0
    invoke-interface {v0}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v0

    goto :goto_0

    .line 2790
    :cond_1
    iget-object v2, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v2, v2, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v2, p1, v1}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2795
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 2659
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/a/b/aq;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    if-eqz v0, :cond_1

    .line 2664
    iget-object v1, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2665
    iget-object v1, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2668
    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2751
    :cond_0
    return-void

    .line 2744
    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/aq;->e()V

    .line 2745
    :cond_2
    iget v0, p0, Lcom/google/a/b/aq;->c:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/a/b/aq;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2746
    iget-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/a/b/bd;->a()I

    move-result v2

    if-lez v2, :cond_3

    .line 2747
    invoke-interface {v0}, Lcom/google/a/b/ap;->c()I

    move-result v1

    sget-object v2, Lcom/google/a/b/bx;->e:Lcom/google/a/b/bx;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;ILcom/google/a/b/bx;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2748
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2746
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private g()V
    .locals 11

    .prologue
    .line 2979
    iget-object v7, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2980
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2981
    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_0

    .line 3044
    :goto_0
    return-void

    .line 2995
    :cond_0
    iget v5, p0, Lcom/google/a/b/aq;->b:I

    .line 2996
    shl-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Lcom/google/a/b/aq;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2997
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/a/b/aq;->e:I

    .line 2998
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2999
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 3002
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    .line 3004
    if-eqz v0, :cond_7

    .line 3005
    invoke-interface {v0}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v3

    .line 3006
    invoke-interface {v0}, Lcom/google/a/b/ap;->c()I

    move-result v1

    and-int v2, v1, v10

    .line 3009
    if-nez v3, :cond_2

    .line 3010
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2999
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 3017
    :goto_3
    if-eqz v3, :cond_3

    .line 3018
    invoke-interface {v3}, Lcom/google/a/b/ap;->c()I

    move-result v1

    and-int/2addr v1, v10

    .line 3019
    if-eq v1, v2, :cond_6

    move-object v2, v3

    .line 3017
    :goto_4
    invoke-interface {v3}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 3025
    :cond_3
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 3028
    :goto_5
    if-eq v2, v4, :cond_1

    .line 3029
    invoke-interface {v2}, Lcom/google/a/b/ap;->c()I

    move-result v0

    and-int v3, v0, v10

    .line 3030
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    .line 3031
    invoke-direct {p0, v2, v0}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3032
    if-eqz v0, :cond_4

    .line 3033
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 3028
    :goto_6
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5

    .line 3035
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;)V

    .line 3036
    add-int/lit8 v0, v1, -0x1

    goto :goto_6

    .line 3042
    :cond_5
    iput-object v9, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3043
    iput v5, p0, Lcom/google/a/b/aq;->b:I

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v4

    goto :goto_4

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method private h()V
    .locals 1

    .prologue
    .line 3538
    invoke-virtual {p0}, Lcom/google/a/b/aq;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3539
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->m()V

    .line 3541
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/b/ap;J)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2815
    invoke-interface {p1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2816
    invoke-direct {p0}, Lcom/google/a/b/aq;->c()V

    .line 2829
    :goto_0
    return-object v0

    .line 2819
    :cond_0
    invoke-interface {p1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2820
    if-nez v1, :cond_1

    .line 2821
    invoke-direct {p0}, Lcom/google/a/b/aq;->c()V

    goto :goto_0

    .line 2825
    :cond_1
    iget-object v2, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2826
    invoke-direct {p0, p2, p3}, Lcom/google/a/b/aq;->a(J)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2829
    goto :goto_0
.end method

.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2835
    :try_start_0
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    if-eqz v1, :cond_2

    .line 2836
    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v1, v1, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v1}, Lcom/google/a/a/bw;->a()J

    move-result-wide v5

    .line 2837
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;IJ)Lcom/google/a/b/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2838
    if-nez v1, :cond_0

    .line 2839
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    .line 2851
    :goto_0
    return-object v0

    .line 2842
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2843
    if-eqz v4, :cond_1

    .line 2844
    invoke-direct {p0, v1, v5, v6}, Lcom/google/a/b/aq;->b(Lcom/google/a/b/ap;J)V

    .line 2845
    invoke-interface {v1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v7, v0, Lcom/google/a/b/o;->u:Lcom/google/a/b/k;

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/a/b/k;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2851
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    goto :goto_0

    .line 2847
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/a/b/aq;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2849
    :cond_2
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILcom/google/a/b/ak;Lcom/google/a/i/a/p;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/ak",
            "<TK;TV;>;",
            "Lcom/google/a/i/a/p",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2411
    const/4 v1, 0x0

    .line 2413
    :try_start_0
    invoke-static {p4}, Lcom/google/a/i/a/x;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2414
    if-nez v1, :cond_1

    .line 2415
    new-instance v0, Lcom/google/a/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CacheLoader returned null for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/a/b/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    .line 2422
    iget-object v1, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-virtual {p3}, Lcom/google/a/b/ak;->f()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/a/b/c;->b(J)V

    .line 2423
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ak;)Z

    :cond_0
    throw v0

    .line 2417
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-virtual {p3}, Lcom/google/a/b/ak;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/a/b/c;->a(J)V

    .line 2418
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ak;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2421
    if-nez v1, :cond_2

    .line 2422
    iget-object v0, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-virtual {p3}, Lcom/google/a/b/ak;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/a/b/c;->b(J)V

    .line 2423
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ak;)Z

    :cond_2
    return-object v1
.end method

.method final a(Ljava/lang/Object;ILcom/google/a/b/k;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/k",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2240
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    :try_start_0
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    if-eqz v0, :cond_1

    .line 2245
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/aq;->e(Ljava/lang/Object;I)Lcom/google/a/b/ap;

    move-result-object v1

    .line 2246
    if-eqz v1, :cond_1

    .line 2247
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v5

    .line 2248
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;J)Ljava/lang/Object;

    move-result-object v4

    .line 2249
    if-eqz v4, :cond_0

    .line 2250
    invoke-direct {p0, v1, v5, v6}, Lcom/google/a/b/aq;->b(Lcom/google/a/b/ap;J)V

    .line 2251
    iget-object v0, p0, Lcom/google/a/b/aq;->n:Lcom/google/a/b/c;

    invoke-interface {v0}, Lcom/google/a/b/c;->a()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    .line 2252
    invoke-direct/range {v0 .. v7}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/a/b/k;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2272
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    :goto_0
    return-object v0

    .line 2254
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v0

    .line 2255
    invoke-interface {v0}, Lcom/google/a/b/bd;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2256
    invoke-direct {p0, v1, p1, v0}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2272
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    goto :goto_0

    .line 2262
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/b/aq;->b(Ljava/lang/Object;ILcom/google/a/b/k;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 2272
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    goto :goto_0

    .line 2263
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2264
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2265
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 2266
    new-instance v1, Lcom/google/a/i/a/e;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/a/i/a/e;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2272
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    throw v0

    .line 2267
    :cond_2
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 2268
    new-instance v1, Lcom/google/a/i/a/w;

    invoke-direct {v1, v0}, Lcom/google/a/i/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2270
    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3100
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3102
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v5

    .line 3103
    invoke-direct {p0, v5, v6}, Lcom/google/a/b/aq;->c(J)V

    .line 3105
    iget-object v8, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3106
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3107
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/ap;

    move-object v2, v1

    .line 3109
    :goto_0
    if-eqz v2, :cond_3

    .line 3110
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3111
    invoke-interface {v2}, Lcom/google/a/b/ap;->c()I

    move-result v0

    if-ne v0, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v0, p1, v3}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3113
    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    .line 3114
    invoke-interface {v4}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3115
    if-nez v0, :cond_1

    .line 3116
    invoke-interface {v4}, Lcom/google/a/b/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    .line 3119
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3120
    sget-object v5, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3122
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3123
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3124
    iput v1, p0, Lcom/google/a/b/aq;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3140
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v7

    :goto_1
    return-object v0

    .line 3129
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/b/aq;->d:I

    .line 3130
    sget-object v1, Lcom/google/a/b/bx;->b:Lcom/google/a/b/bx;

    invoke-direct {p0, p1, v4, v1}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    .line 3131
    invoke-direct/range {v1 .. v6}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3132
    invoke-direct {p0}, Lcom/google/a/b/aq;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3139
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3140
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_1

    .line 3109
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3137
    :cond_3
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3140
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v7

    goto :goto_1

    .line 3139
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3140
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2904
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 2906
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v4

    .line 2907
    invoke-direct {p0, v4, v5}, Lcom/google/a/b/aq;->c(J)V

    .line 2909
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2910
    iget v1, p0, Lcom/google/a/b/aq;->e:I

    if-le v0, v1, :cond_0

    .line 2911
    invoke-direct {p0}, Lcom/google/a/b/aq;->g()V

    .line 2912
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    .line 2915
    :cond_0
    iget-object v7, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2916
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 2917
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    move-object v1, v0

    .line 2920
    :goto_0
    if-eqz v1, :cond_5

    .line 2921
    invoke-interface {v1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v2

    .line 2922
    invoke-interface {v1}, Lcom/google/a/b/ap;->c()I

    move-result v3

    if-ne v3, p2, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v3, v3, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v3, p1, v2}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2926
    invoke-interface {v1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v0

    .line 2927
    invoke-interface {v0}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2929
    if-nez v7, :cond_2

    .line 2930
    iget v2, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/b/aq;->d:I

    .line 2931
    invoke-interface {v0}, Lcom/google/a/b/bd;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2932
    sget-object v2, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2933
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2934
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    .line 2939
    :goto_1
    iput v0, p0, Lcom/google/a/b/aq;->b:I

    .line 2940
    invoke-direct {p0}, Lcom/google/a/b/aq;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2970
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2936
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2937
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2942
    :cond_2
    if-eqz p4, :cond_3

    .line 2946
    invoke-direct {p0, v1, v4, v5}, Lcom/google/a/b/aq;->c(Lcom/google/a/b/ap;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2969
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2970
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v7

    goto :goto_2

    .line 2950
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/b/aq;->d:I

    .line 2951
    sget-object v2, Lcom/google/a/b/bx;->b:Lcom/google/a/b/bx;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2952
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2953
    invoke-direct {p0}, Lcom/google/a/b/aq;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2969
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2970
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v7

    goto :goto_2

    .line 2920
    :cond_4
    :try_start_3
    invoke-interface {v1}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v1

    goto :goto_0

    .line 2960
    :cond_5
    iget v1, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/b/aq;->d:I

    .line 2961
    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2962
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2963
    invoke-virtual {v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2964
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2965
    iput v0, p0, Lcom/google/a/b/aq;->b:I

    .line 2966
    invoke-direct {p0}, Lcom/google/a/b/aq;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2967
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2970
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v6

    goto :goto_2

    .line 2969
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 2970
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method final a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3296
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    if-eqz v0, :cond_8

    .line 3297
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3299
    :try_start_0
    iget-object v3, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v2, v1

    .line 3300
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 3301
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ap;

    :goto_1
    if-eqz v0, :cond_1

    .line 3303
    invoke-interface {v0}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/a/b/bd;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3304
    sget-object v4, Lcom/google/a/b/bx;->a:Lcom/google/a/b/bx;

    invoke-direct {p0, v0, v4}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/bx;)V

    .line 3301
    :cond_0
    invoke-interface {v0}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v0

    goto :goto_1

    .line 3300
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3308
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3309
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3308
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3311
    :cond_3
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/a/b/aq;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_5
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/a/b/aq;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3312
    :cond_7
    iget-object v0, p0, Lcom/google/a/b/aq;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3313
    iget-object v0, p0, Lcom/google/a/b/aq;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3314
    iget-object v0, p0, Lcom/google/a/b/aq;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3316
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3317
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/b/aq;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3319
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3320
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    .line 3323
    :cond_8
    return-void

    .line 3319
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3320
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method final a(Lcom/google/a/b/ap;I)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3374
    :try_start_0
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    .line 3375
    iget-object v6, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3376
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 3377
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/ap;

    move-object v2, v1

    .line 3379
    :goto_0
    if-eqz v2, :cond_1

    .line 3380
    if-ne v2, p1, :cond_0

    .line 3381
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3382
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    sget-object v5, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3384
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3385
    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3386
    iput v1, p0, Lcom/google/a/b/aq;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3387
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3394
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3379
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3391
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3394
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    const/4 v0, 0x0

    goto :goto_1

    .line 3393
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3394
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILcom/google/a/b/bd;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3402
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3404
    :try_start_0
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    .line 3405
    iget-object v6, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3406
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v7, p2, v1

    .line 3407
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/ap;

    move-object v2, v1

    .line 3409
    :goto_0
    if-eqz v2, :cond_4

    .line 3410
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3411
    invoke-interface {v2}, Lcom/google/a/b/ap;->c()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v4, v4, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v4, p1, v3}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3413
    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    .line 3414
    if-ne v4, p3, :cond_2

    .line 3415
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3416
    sget-object v5, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3418
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3419
    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3420
    iput v1, p0, Lcom/google/a/b/aq;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3421
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3430
    invoke-virtual {p0}, Lcom/google/a/b/aq;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3431
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    .line 3423
    :cond_2
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3430
    invoke-virtual {p0}, Lcom/google/a/b/aq;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3431
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_1

    .line 3409
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3427
    :cond_4
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3430
    invoke-virtual {p0}, Lcom/google/a/b/aq;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3431
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_1

    .line 3429
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3430
    invoke-virtual {p0}, Lcom/google/a/b/aq;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3431
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    :cond_5
    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3047
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3049
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v5

    .line 3050
    invoke-direct {p0, v5, v6}, Lcom/google/a/b/aq;->c(J)V

    .line 3052
    iget-object v8, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3053
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3054
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/ap;

    move-object v2, v1

    .line 3056
    :goto_0
    if-eqz v2, :cond_4

    .line 3057
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3058
    invoke-interface {v2}, Lcom/google/a/b/ap;->c()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v0, p1, v3}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3060
    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    .line 3061
    invoke-interface {v4}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3062
    if-nez v0, :cond_1

    .line 3063
    invoke-interface {v4}, Lcom/google/a/b/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3065
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    .line 3066
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3067
    sget-object v5, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3069
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3070
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3071
    iput v1, p0, Lcom/google/a/b/aq;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3073
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3094
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v7

    :goto_1
    return v0

    .line 3076
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v1, v1, Lcom/google/a/b/o;->h:Lcom/google/a/a/x;

    invoke-virtual {v1, p3, v0}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3077
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    .line 3078
    sget-object v0, Lcom/google/a/b/bx;->b:Lcom/google/a/b/bx;

    invoke-direct {p0, p1, v4, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    .line 3079
    invoke-direct/range {v1 .. v6}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3080
    invoke-direct {p0}, Lcom/google/a/b/aq;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3081
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3094
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    const/4 v0, 0x1

    goto :goto_1

    .line 3085
    :cond_2
    :try_start_2
    invoke-direct {p0, v2, v5, v6}, Lcom/google/a/b/aq;->c(Lcom/google/a/b/ap;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3086
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3094
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v7

    goto :goto_1

    .line 3056
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3091
    :cond_4
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3094
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v0, v7

    goto :goto_1

    .line 3093
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3094
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/google/a/b/aq;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3496
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/b/aq;->c(J)V

    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    .line 3498
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/Object;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2857
    :try_start_0
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    if-eqz v1, :cond_2

    .line 2858
    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v1, v1, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v1}, Lcom/google/a/a/bw;->a()J

    move-result-wide v1

    .line 2859
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;IJ)Lcom/google/a/b/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2860
    if-nez v1, :cond_0

    .line 2861
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    .line 2868
    :goto_0
    return v0

    .line 2863
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2868
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    goto :goto_0

    .line 2866
    :cond_2
    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->b()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3251
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3253
    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    .line 3254
    invoke-direct {p0, v0, v1}, Lcom/google/a/b/aq;->c(J)V

    .line 3256
    iget v0, p0, Lcom/google/a/b/aq;->b:I

    .line 3257
    iget-object v7, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3258
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3259
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/ap;

    move-object v2, v1

    .line 3261
    :goto_0
    if-eqz v2, :cond_4

    .line 3262
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3263
    invoke-interface {v2}, Lcom/google/a/b/ap;->c()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v0, v0, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v0, p1, v3}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3265
    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    .line 3266
    invoke-interface {v4}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3269
    iget-object v5, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v5, v5, Lcom/google/a/b/o;->h:Lcom/google/a/a/x;

    invoke-virtual {v5, p3, v0}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3270
    sget-object v5, Lcom/google/a/b/bx;->a:Lcom/google/a/b/bx;

    .line 3278
    :goto_1
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    move-object v0, p0

    .line 3279
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3281
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3282
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3283
    iput v1, p0, Lcom/google/a/b/aq;->b:I

    .line 3284
    sget-object v0, Lcom/google/a/b/bx;->a:Lcom/google/a/b/bx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v0, :cond_2

    const/4 v0, 0x1

    .line 3290
    :goto_2
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3291
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move v6, v0

    :goto_3
    return v6

    .line 3271
    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {v4}, Lcom/google/a/b/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3272
    sget-object v5, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3275
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3291
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_3

    :cond_2
    move v0, v6

    .line 3284
    goto :goto_2

    .line 3261
    :cond_3
    :try_start_2
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3288
    :cond_4
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3291
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_3

    .line 3290
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3291
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method

.method final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3146
    invoke-virtual {p0}, Lcom/google/a/b/aq;->lock()V

    .line 3148
    :try_start_0
    iget-object v1, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v1, v1, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v1}, Lcom/google/a/a/bw;->a()J

    move-result-wide v1

    .line 3149
    invoke-direct {p0, v1, v2}, Lcom/google/a/b/aq;->c(J)V

    .line 3151
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    .line 3152
    iget-object v7, p0, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3153
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3154
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/b/ap;

    move-object v2, v1

    .line 3156
    :goto_0
    if-eqz v2, :cond_3

    .line 3157
    invoke-interface {v2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3158
    invoke-interface {v2}, Lcom/google/a/b/ap;->c()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/a/b/aq;->a:Lcom/google/a/b/o;

    iget-object v4, v4, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v4, p1, v3}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3160
    invoke-interface {v2}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v4

    .line 3161
    invoke-interface {v4}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v6

    .line 3164
    if-eqz v6, :cond_0

    .line 3165
    sget-object v5, Lcom/google/a/b/bx;->a:Lcom/google/a/b/bx;

    .line 3173
    :goto_1
    iget v0, p0, Lcom/google/a/b/aq;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/b/aq;->d:I

    move-object v0, p0

    .line 3174
    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)Lcom/google/a/b/ap;

    move-result-object v0

    .line 3176
    iget v1, p0, Lcom/google/a/b/aq;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3177
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3178
    iput v1, p0, Lcom/google/a/b/aq;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3185
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3186
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    move-object v0, v6

    :goto_2
    return-object v0

    .line 3166
    :cond_0
    :try_start_1
    invoke-interface {v4}, Lcom/google/a/b/bd;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3167
    sget-object v5, Lcom/google/a/b/bx;->c:Lcom/google/a/b/bx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3170
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3186
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_2

    .line 3156
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3183
    :cond_3
    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3186
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    goto :goto_2

    .line 3185
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/a/b/aq;->unlock()V

    .line 3186
    invoke-direct {p0}, Lcom/google/a/b/aq;->h()V

    throw v0
.end method
