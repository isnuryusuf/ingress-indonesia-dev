.class public Lcom/nianticproject/ingress/common/q/b/r;
.super Lcom/nianticproject/ingress/common/q/b/a;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/q/b/f;

.field private final d:Lcom/nianticproject/ingress/common/q/b/y;

.field private final e:Lcom/nianticproject/ingress/common/q/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/q/b/m",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Thread;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/nianticproject/ingress/common/q/b/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nianticproject/ingress/common/q/b/r;->a:Z

    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/q/b/r;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/q/b/r;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/q/b/f;Lcom/nianticproject/ingress/common/q/b/d;Lcom/nianticproject/ingress/common/q/b/x;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nianticproject/ingress/common/q/b/r;-><init>(Lcom/nianticproject/ingress/common/q/b/f;Lcom/nianticproject/ingress/common/q/b/d;Lcom/nianticproject/ingress/common/q/b/x;B)V

    .line 244
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/q/b/f;Lcom/nianticproject/ingress/common/q/b/d;Lcom/nianticproject/ingress/common/q/b/x;B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/q/b/a;-><init>()V

    .line 259
    sget-boolean v0, Lcom/nianticproject/ingress/common/q/b/r;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :cond_0
    sget-boolean v0, Lcom/nianticproject/ingress/common/q/b/r;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 261
    :cond_1
    sget-boolean v0, Lcom/nianticproject/ingress/common/q/b/r;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 263
    :cond_2
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/r;->c:Lcom/nianticproject/ingress/common/q/b/f;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->d:Lcom/nianticproject/ingress/common/q/b/y;

    .line 266
    new-instance v0, Lcom/nianticproject/ingress/common/q/b/m;

    new-instance v1, Lcom/nianticproject/ingress/common/q/b/s;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/q/b/s;-><init>(Lcom/nianticproject/ingress/common/q/b/r;)V

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/q/b/m;-><init>(Lcom/nianticproject/ingress/common/q/b/n;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->e:Lcom/nianticproject/ingress/common/q/b/m;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->h:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    .line 276
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_3

    .line 277
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-interface {p3}, Lcom/nianticproject/ingress/common/q/b/x;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/nianticproject/ingress/common/q/b/d;->a(Lorg/apache/http/client/HttpClient;)Lcom/nianticproject/ingress/common/q/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_3
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/q/b/c;Lcom/nianticproject/ingress/common/q/b/v;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v1, Lcom/nianticproject/ingress/common/q/b/u;

    invoke-direct {v1, p0, p1, v0}, Lcom/nianticproject/ingress/common/q/b/u;-><init>(Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/q/b/c;Ljava/util/ArrayList;)V

    .line 597
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 598
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/q/b/r;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 44
    sget-boolean v0, Lcom/nianticproject/ingress/common/q/b/r;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->f:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move-wide v5, v3

    :goto_0
    :try_start_0
    const-string/jumbo v0, "GMMTileStore.runService"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->j:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->f:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    return-void

    :cond_1
    :try_start_3
    const-string/jumbo v0, "WaitForWork"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    cmp-long v2, v0, v5

    if-gez v2, :cond_6

    :cond_3
    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    sub-long v7, v5, v0

    cmp-long v2, v7, v3

    if-gtz v2, :cond_4

    const-wide/16 v7, -0x1

    :cond_4
    :goto_2
    cmp-long v2, v7, v3

    if-ltz v2, :cond_2

    :try_start_5
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v0

    goto :goto_1

    :cond_5
    move-wide v7, v3

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_6
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    cmp-long v1, v5, v3

    if-nez v1, :cond_a

    if-lez v0, :cond_a

    const-wide/16 v1, 0x32

    add-long/2addr v1, v7

    :goto_3
    cmp-long v5, v7, v1

    if-gez v5, :cond_9

    const/4 v0, 0x0

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/q/b/r;->b()V

    :cond_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-lez v0, :cond_8

    :try_start_9
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/q/b/r;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    :try_start_a
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-wide v5, v1

    goto/16 :goto_0

    :cond_9
    move-wide v1, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_b
    monitor-exit p0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_d
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v0

    monitor-enter p0

    :try_start_e
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->j:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->f:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0

    :catchall_4
    move-exception v0

    :try_start_f
    monitor-exit p0

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    move-wide v1, v5

    goto :goto_3
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/q/b/c;Ljava/util/ArrayList;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/nianticproject/ingress/common/q/b/r;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/e;

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/v;

    invoke-direct {p0, v0, p3}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/b/v;Ljava/lang/Throwable;)V

    monitor-enter p0

    :try_start_2
    invoke-static {v0}, Lcom/nianticproject/ingress/common/q/b/v;->a(Lcom/nianticproject/ingress/common/q/b/v;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/q/b/w;->a(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/b/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_3
    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/q/b/w;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->e:Lcom/nianticproject/ingress/common/q/b/m;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/w;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/q/b/m;->b(Lcom/nianticproject/ingress/common/q/c;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/q/b/v;Ljava/lang/Throwable;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 641
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/v;->a()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 642
    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/q/b/v;->a(I)Lcom/nianticproject/ingress/common/q/c;

    move-result-object v2

    .line 643
    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/q/b/v;->b(I)Lcom/nianticproject/ingress/common/q/d;

    move-result-object v3

    .line 644
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/v;->a(Lcom/nianticproject/ingress/common/q/b/v;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/w;

    .line 646
    if-eqz v3, :cond_0

    .line 648
    :try_start_0
    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/b/r;->c:Lcom/nianticproject/ingress/common/q/b/f;

    invoke-interface {v4, v2, v3}, Lcom/nianticproject/ingress/common/q/b/f;->a(Lcom/nianticproject/ingress/common/q/c;Lcom/nianticproject/ingress/common/q/d;)V

    .line 649
    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/r;->d:Lcom/nianticproject/ingress/common/q/b/y;

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/r;->d:Lcom/nianticproject/ingress/common/q/b/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 658
    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/q/b/w;->a(Ljava/lang/Throwable;)V

    .line 641
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v2

    move-object p2, v2

    goto :goto_1

    .line 659
    :cond_1
    if-nez v3, :cond_2

    .line 660
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/q/b/w;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 662
    :cond_2
    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/q/b/w;->a(Lcom/nianticproject/ingress/common/q/d;)V

    goto :goto_2

    .line 665
    :cond_3
    return-void
.end method

.method private b(Lcom/nianticproject/ingress/common/q/c;)Lcom/nianticproject/ingress/common/q/b/w;
    .locals 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->e:Lcom/nianticproject/ingress/common/q/b/m;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/q/b/m;->a(Lcom/nianticproject/ingress/common/q/c;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/w;

    .line 286
    const/4 v1, 0x0

    .line 287
    monitor-enter v0

    .line 288
    :try_start_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const/4 v1, 0x1

    .line 290
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->c()V

    .line 292
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v1, :cond_1

    .line 295
    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 298
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    :cond_1
    return-object v0

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 298
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 467
    .line 475
    :try_start_0
    const-string/jumbo v1, "GMMTileStore.processPendingWork"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move v5, v0

    move v6, v0

    move-object v3, v2

    move-object v4, v2

    .line 479
    :goto_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_2

    .line 481
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 577
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 578
    if-eqz v4, :cond_1

    .line 579
    invoke-direct {p0, v3, v4}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/b/c;Lcom/nianticproject/ingress/common/q/b/v;)V

    .line 581
    :cond_0
    :goto_1
    return-void

    .line 580
    :cond_1
    if-eqz v3, :cond_0

    .line 581
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 483
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/w;

    .line 484
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 487
    :try_start_4
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    :try_start_5
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 490
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 491
    :try_start_6
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    move-object v2, v4

    :goto_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 578
    if-eqz v2, :cond_d

    .line 579
    invoke-direct {p0, v3, v2}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/b/c;Lcom/nianticproject/ingress/common/q/b/v;)V

    .line 581
    :cond_3
    :goto_3
    throw v0

    .line 484
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0

    .line 490
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 499
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->c:Lcom/nianticproject/ingress/common/q/b/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/nianticproject/ingress/common/q/b/f;->a(Lcom/nianticproject/ingress/common/q/c;)Lcom/nianticproject/ingress/common/q/d;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    .line 500
    if-eqz v7, :cond_8

    .line 503
    :try_start_8
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->d:Lcom/nianticproject/ingress/common/q/b/y;

    if-eqz v1, :cond_5

    .line 504
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->d:Lcom/nianticproject/ingress/common/q/b/y;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_5
    move-object v1, v2

    .line 509
    :goto_4
    :try_start_9
    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 510
    :try_start_a
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 511
    if-eqz v1, :cond_7

    .line 512
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/q/b/w;->a(Ljava/lang/Throwable;)V

    .line 517
    :cond_6
    :goto_5
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 519
    :try_start_b
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 520
    :try_start_c
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 522
    :try_start_d
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    .line 514
    :cond_7
    :try_start_e
    invoke-virtual {v0, v7}, Lcom/nianticproject/ingress/common/q/b/w;->a(Lcom/nianticproject/ingress/common/q/d;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_5

    .line 517
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v0

    throw v1

    .line 521
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    .line 530
    :cond_8
    if-nez v3, :cond_f

    .line 531
    monitor-enter p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 532
    :try_start_10
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v6, :cond_a

    .line 533
    :cond_9
    const/4 v1, 0x1

    .line 534
    add-int/lit8 v0, v5, 0x1

    .line 535
    monitor-exit p0

    move v5, v0

    move v6, v1

    goto/16 :goto_0

    .line 538
    :cond_a
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/q/b/c;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 539
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 544
    :goto_6
    :try_start_12
    monitor-enter v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 545
    :try_start_13
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->isCancelled()Z

    move-result v3

    .line 546
    if-nez v3, :cond_b

    .line 547
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->d()V

    .line 549
    :cond_b
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 550
    if-eqz v3, :cond_c

    .line 551
    :try_start_14
    monitor-enter p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 552
    :try_start_15
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 554
    :try_start_16
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V

    move-object v3, v1

    .line 555
    goto/16 :goto_0

    .line 539
    :catchall_5
    move-exception v0

    move-object v1, v3

    :goto_7
    monitor-exit p0

    throw v0

    .line 577
    :catchall_6
    move-exception v0

    move-object v3, v1

    move-object v2, v4

    goto/16 :goto_2

    .line 549
    :catchall_7
    move-exception v2

    monitor-exit v0

    throw v2

    .line 553
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 559
    :cond_c
    if-nez v4, :cond_e

    .line 560
    new-instance v3, Lcom/nianticproject/ingress/common/q/b/v;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/q/b/v;-><init>()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 562
    :goto_8
    :try_start_17
    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/q/b/v;->a(Lcom/nianticproject/ingress/common/q/b/w;)V

    .line 566
    monitor-enter p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 567
    :try_start_18
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 570
    :try_start_19
    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/q/b/v;->a()I

    move-result v0

    const/16 v4, 0x8

    if-lt v0, v4, :cond_10

    .line 571
    invoke-direct {p0, v1, v3}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/b/c;Lcom/nianticproject/ingress/common/q/b/v;)V

    move-object v0, v2

    move-object v1, v2

    :goto_9
    move-object v3, v0

    move-object v4, v1

    .line 575
    goto/16 :goto_0

    .line 568
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 577
    :catchall_a
    move-exception v0

    move-object v2, v3

    move-object v3, v1

    goto/16 :goto_2

    .line 580
    :cond_d
    if-eqz v3, :cond_3

    .line 581
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 577
    :catchall_b
    move-exception v0

    move-object v3, v2

    goto/16 :goto_2

    .line 539
    :catchall_c
    move-exception v0

    goto :goto_7

    .line 506
    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_e
    move-object v3, v4

    goto :goto_8

    :cond_f
    move-object v1, v3

    goto :goto_6

    :cond_10
    move-object v0, v1

    move-object v1, v3

    goto :goto_9
.end method

.method private c()V
    .locals 3

    .prologue
    .line 673
    :try_start_0
    const-string/jumbo v0, "GMMTileStore.processCompletedWork"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 675
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->h:Ljava/util/ArrayList;

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->h:Ljava/util/ArrayList;

    .line 678
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 680
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/b/w;

    .line 681
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/w;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 678
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 685
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/nianticproject/ingress/common/q/c;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/q/b/r;->b(Lcom/nianticproject/ingress/common/q/c;)Lcom/nianticproject/ingress/common/q/b/w;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->f:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->j:Ljava/util/concurrent/ExecutorService;

    .line 315
    new-instance v0, Lcom/nianticproject/ingress/common/q/b/t;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/q/b/t;-><init>(Lcom/nianticproject/ingress/common/q/b/r;)V

    .line 321
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "GMMTileStoreServiceThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/q/b/r;->f:Ljava/lang/Thread;

    .line 322
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->f:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 323
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/r;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
