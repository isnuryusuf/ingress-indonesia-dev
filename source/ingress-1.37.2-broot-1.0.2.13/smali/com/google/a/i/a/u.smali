.class final Lcom/google/a/i/a/u;
.super Lcom/google/a/i/a/c;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Ljava/util/concurrent/locks/Condition;

.field private c:I

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-direct {p0}, Lcom/google/a/i/a/c;-><init>()V

    .line 278
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    .line 281
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/i/a/u;->b:Ljava/util/concurrent/locks/Condition;

    .line 290
    iput v1, p0, Lcom/google/a/i/a/u;->c:I

    .line 291
    iput-boolean v1, p0, Lcom/google/a/i/a/u;->d:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/a/i/a/u;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 385
    :try_start_0
    iget v0, p0, Lcom/google/a/i/a/u;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/i/a/u;->c:I

    .line 386
    invoke-virtual {p0}, Lcom/google/a/i/a/u;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/a/i/a/u;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 344
    iget-object v2, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 347
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/a/i/a/u;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    .line 350
    :goto_1
    return v0

    .line 349
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 350
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    .line 352
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/a/i/a/u;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/a/i/a/u;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v1, "Executor already shutdown"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/a/i/a/u;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/i/a/u;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 297
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    invoke-direct {p0}, Lcom/google/a/i/a/u;->a()V

    .line 300
    return-void

    .line 299
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/a/i/a/u;->a()V

    throw v0
.end method

.method public final isShutdown()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lcom/google/a/i/a/u;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isTerminated()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 334
    :try_start_0
    iget-boolean v0, p0, Lcom/google/a/i/a/u;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/a/i/a/u;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdown()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 317
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/a/i/a/u;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v0, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/i/a/u;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/a/i/a/u;->shutdown()V

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
