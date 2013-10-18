.class public final Lcom/google/a/i/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/a/i/a/r;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/a/i/a/p;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/i/a/r;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;)",
            "Lcom/google/a/i/a/p",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-interface {p0, p1}, Lcom/google/a/i/a/r;->a(Ljava/util/concurrent/Callable;)Lcom/google/a/i/a/p;

    move-result-object v0

    .line 686
    new-instance v1, Lcom/google/a/i/a/t;

    invoke-direct {v1, p2, v0}, Lcom/google/a/i/a/t;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/a/i/a/p;)V

    invoke-static {}, Lcom/google/a/i/a/s;->a()Lcom/google/a/i/a/r;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/a/i/a/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 691
    return-object v0
.end method

.method public static a()Lcom/google/a/i/a/r;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/google/a/i/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/a/i/a/u;-><init>(B)V

    return-object v0
.end method

.method public static a(Lcom/google/a/i/a/r;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/i/a/r;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .prologue
    .line 612
    invoke-static/range {p0 .. p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 614
    if-lez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 615
    invoke-static {v2}, Lcom/google/a/c/eq;->a(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 616
    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 627
    const/4 v3, 0x0

    .line 628
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 629
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 631
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v12}, Lcom/google/a/i/a/s;->a(Lcom/google/a/i/a/r;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/a/i/a/p;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v6, v2, -0x1

    .line 633
    const/4 v1, 0x1

    move v2, v6

    move-wide/from16 v9, p3

    move-wide v14, v4

    move-wide v5, v14

    move v4, v1

    .line 636
    :goto_2
    invoke-interface {v12}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 637
    if-nez v1, :cond_a

    .line 638
    if-lez v2, :cond_2

    .line 639
    add-int/lit8 v7, v2, -0x1

    .line 640
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/google/a/i/a/s;->a(Lcom/google/a/i/a/r;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/a/i/a/p;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    add-int/lit8 v2, v4, 0x1

    move-object v14, v1

    move v1, v2

    move-object v2, v14

    move-wide v15, v5

    move-wide v4, v15

    move v6, v7

    move-wide v7, v9

    .line 656
    :goto_3
    if-eqz v2, :cond_9

    .line 657
    add-int/lit8 v1, v1, -0x1

    .line 659
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 673
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 674
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 614
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 628
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 642
    :cond_2
    if-eqz v4, :cond_5

    .line 643
    if-eqz p2, :cond_4

    .line 645
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v9, v10, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 646
    if-nez v1, :cond_3

    .line 647
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    :catchall_0
    move-exception v1

    move-object v2, v1

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 674
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    .line 649
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 650
    sub-long v5, v7, v5

    sub-long v5, v9, v5

    move-object v14, v1

    move v1, v4

    move-wide v15, v7

    move-wide v7, v5

    move v6, v2

    move-wide v4, v15

    move-object v2, v14

    .line 652
    goto :goto_3

    .line 653
    :cond_4
    invoke-interface {v12}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    move-wide v7, v9

    move v14, v4

    move-wide v15, v5

    move-wide v4, v15

    move v6, v2

    move-object v2, v1

    move v1, v14

    goto :goto_3

    .line 660
    :catch_0
    move-exception v3

    move v2, v6

    move-wide v9, v7

    move-wide v14, v4

    move-wide v5, v14

    move v4, v1

    .line 664
    goto/16 :goto_2

    .line 662
    :catch_1
    move-exception v3

    .line 663
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    move-object v3, v2

    move-wide v9, v7

    move v2, v6

    move-wide v14, v4

    move-wide v5, v14

    move v4, v1

    .line 666
    goto/16 :goto_2

    .line 668
    :cond_5
    if-nez v3, :cond_6

    .line 669
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 671
    :cond_6
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 674
    :cond_7
    throw v2

    :cond_8
    return-object v2

    :cond_9
    move-object v2, v3

    goto :goto_6

    :cond_a
    move-wide v7, v9

    move v14, v4

    move-wide v15, v5

    move-wide v4, v15

    move v6, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3
.end method
