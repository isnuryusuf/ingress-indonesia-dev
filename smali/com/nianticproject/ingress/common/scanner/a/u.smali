.class Lcom/nianticproject/ingress/common/scanner/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/aa;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/q/e;

.field private final d:Lcom/nianticproject/ingress/common/scanner/a/z;

.field private final e:Lcom/nianticproject/ingress/common/q/f;

.field private final f:La/a/a/a/b/bi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bi",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/ac;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/ac;",
            ">;"
        }
    .end annotation
.end field

.field private final h:La/a/a/a/b/bi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bi",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/ab;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/a/c/hn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/hn",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/aa;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/a/c/hn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/hn",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/q/c;",
            "Lcom/nianticproject/ingress/common/scanner/a/ac;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/v;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/a/v;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/u;->a:Ljava/util/Comparator;

    .line 167
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/u;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method constructor <init>(Lcom/nianticproject/ingress/common/q/e;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/scanner/a/u;-><init>(Lcom/nianticproject/ingress/common/q/e;B)V

    .line 188
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/q/e;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, La/a/a/a/b/bl;

    invoke-direct {v0, v1}, La/a/a/a/b/bl;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    .line 172
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->g:Ljava/lang/ref/ReferenceQueue;

    .line 173
    new-instance v0, La/a/a/a/b/bl;

    invoke-direct {v0, v1}, La/a/a/a/b/bl;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->h:La/a/a/a/b/bi;

    .line 177
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->k:Ljava/util/Map;

    .line 178
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->l:J

    .line 179
    const/4 v0, 0x6

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->m:I

    .line 180
    const/16 v0, 0x10

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->n:I

    .line 200
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->c:Lcom/nianticproject/ingress/common/q/e;

    .line 201
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/w;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/a/w;-><init>(Lcom/nianticproject/ingress/common/scanner/a/u;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->e:Lcom/nianticproject/ingress/common/q/f;

    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->e:Lcom/nianticproject/ingress/common/q/f;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/q/e;->a(Lcom/nianticproject/ingress/common/q/f;)V

    .line 209
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/x;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/a/x;-><init>(Lcom/nianticproject/ingress/common/scanner/a/u;)V

    .line 217
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->d:Lcom/nianticproject/ingress/common/scanner/a/z;

    .line 219
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/u;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/a/c/hn;->a(Ljava/util/Comparator;)Lcom/google/a/c/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ho;->a()Lcom/google/a/c/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ho;->b()Lcom/google/a/c/hn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->i:Lcom/google/a/c/hn;

    .line 222
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/u;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/a/c/hn;->a(Ljava/util/Comparator;)Lcom/google/a/c/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ho;->a()Lcom/google/a/c/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ho;->b()Lcom/google/a/c/hn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->j:Lcom/google/a/c/hn;

    .line 225
    return-void
.end method

.method private declared-synchronized a(Lcom/nianticproject/ingress/common/scanner/a/ac;F)Lcom/nianticproject/ingress/common/scanner/a/n;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->d(Lcom/nianticproject/ingress/common/scanner/a/ac;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->l:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 386
    :goto_0
    iget-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->l:J

    invoke-static {p1, v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;J)J

    .line 388
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 389
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 407
    :goto_1
    monitor-exit p0

    return-object v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->e(Lcom/nianticproject/ingress/common/scanner/a/ac;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, La/a/a/a/b/bi;->b(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/a/u;->b:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Evicted reference was dereferenced."

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->e(Lcom/nianticproject/ingress/common/scanner/a/ac;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, La/a/a/a/b/bi;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 403
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->f(Lcom/nianticproject/ingress/common/scanner/a/ac;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->g(Lcom/nianticproject/ingress/common/scanner/a/ac;)J

    move-result-wide v3

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->h(Lcom/nianticproject/ingress/common/scanner/a/ac;)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->i:Lcom/google/a/c/hn;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/a/aa;

    invoke-direct {v1, p1, p2}, Lcom/nianticproject/ingress/common/scanner/a/aa;-><init>(Lcom/nianticproject/ingress/common/scanner/a/ac;F)V

    invoke-virtual {v0, v1}, Lcom/google/a/c/hn;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/q/c;[B)Lcom/nianticproject/ingress/common/scanner/a/n;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/scanner/a/n;-><init>(Lcom/nianticproject/ingress/common/q/c;)V

    new-instance v1, Lcom/nianticproject/ingress/common/q/a/g;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/a/y;

    invoke-direct {v2, p0, v0}, Lcom/nianticproject/ingress/common/scanner/a/y;-><init>(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/scanner/a/n;)V

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/q/a/g;-><init>(Lcom/nianticproject/ingress/common/q/a/y;)V

    invoke-virtual {v1, p1, p2}, Lcom/nianticproject/ingress/common/q/a/g;->a(Lcom/nianticproject/ingress/common/q/c;[B)V

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/scanner/a/ac;F)Lcom/nianticproject/ingress/common/scanner/a/n;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/a/u;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;F)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/q/c;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/nianticproject/ingress/common/q/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ac;

    .line 458
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/c;->d()J

    move-result-wide v5

    invoke-interface {v1, v5, v6}, La/a/a/a/b/bi;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 459
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :goto_0
    return-void

    .line 461
    :cond_1
    monitor-exit p0

    move-object v5, v2

    .line 464
    :goto_1
    if-nez v5, :cond_2

    .line 466
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/q/d;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v1

    .line 482
    goto :goto_1

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 469
    :catch_0
    move-exception v1

    .line 474
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/a/u;->b:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "failed to fetch tile with error %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v5, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    monitor-enter p0

    .line 479
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 480
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 488
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 489
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 490
    :try_start_4
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->i(Lcom/nianticproject/ingress/common/scanner/a/ac;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v1

    if-nez v1, :cond_7

    .line 492
    const/4 v1, 0x1

    :try_start_5
    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 494
    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 495
    if-eqz v3, :cond_6

    .line 496
    :try_start_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->d:Lcom/nianticproject/ingress/common/scanner/a/z;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/q/d;->b()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/nianticproject/ingress/common/scanner/a/z;->a(Lcom/nianticproject/ingress/common/q/c;[B)Lcom/nianticproject/ingress/common/scanner/a/n;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v1

    .line 506
    :goto_3
    monitor-enter p0

    .line 507
    if-eqz v3, :cond_3

    .line 508
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 510
    :cond_3
    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Lcom/nianticproject/ingress/common/scanner/a/n;)Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 511
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 512
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 494
    :catchall_3
    move-exception v1

    move v2, v4

    :goto_4
    :try_start_8
    monitor-exit p0

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 513
    :catch_1
    move-exception v1

    move v3, v2

    .line 503
    :goto_5
    :try_start_9
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/a/u;->b:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "got IOException "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 506
    monitor-enter p0

    .line 507
    if-eqz v3, :cond_4

    .line 508
    const/4 v1, 0x0

    :try_start_a
    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 510
    :cond_4
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Lcom/nianticproject/ingress/common/scanner/a/n;)Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 511
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 512
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :catchall_5
    move-exception v1

    move v3, v4

    :goto_6
    monitor-enter p0

    .line 507
    if-eqz v3, :cond_5

    .line 508
    const/4 v2, 0x0

    :try_start_b
    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 510
    :cond_5
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Lcom/nianticproject/ingress/common/scanner/a/n;)Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 511
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    .line 512
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :catchall_7
    move-exception v1

    move v3, v2

    goto :goto_6

    :catchall_8
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    move v3, v4

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_5

    .line 494
    :catchall_9
    move-exception v1

    move v2, v3

    goto :goto_4

    .line 482
    :catch_4
    move-exception v1

    goto/16 :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_2
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/a/u;->a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->l:J

    return-wide v0
.end method

.method final declared-synchronized a(J)Lcom/nianticproject/ingress/common/scanner/a/ac;
    .locals 4
    .parameter

    .prologue
    .line 350
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ab;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->h:La/a/a/a/b/bi;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/a/ab;->a:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->d()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, La/a/a/a/b/bi;->a(J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    invoke-interface {v0, p1, p2}, La/a/a/a/b/bi;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ac;

    .line 352
    if-nez v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->h:La/a/a/a/b/bi;

    invoke-interface {v1, p1, p2}, La/a/a/a/b/bi;->e(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/a/ab;

    .line 357
    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/a/ab;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ac;

    .line 361
    :cond_1
    if-nez v0, :cond_2

    .line 362
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;-><init>(Lcom/nianticproject/ingress/common/scanner/a/u;JB)V

    .line 363
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    invoke-interface {v1, p1, p2, v0}, La/a/a/a/b/bi;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->h:La/a/a/a/b/bi;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/a/ab;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/ab;-><init>(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/scanner/a/ac;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, p2, v2}, La/a/a/a/b/bi;->a(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method final b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 306
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 307
    monitor-enter p0

    .line 310
    :try_start_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->l:J

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->m:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    invoke-interface {v0}, La/a/a/a/b/bi;->b()La/a/a/a/c/j;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/j;->a()La/a/a/a/c/l;

    move-result-object v1

    .line 313
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ac;

    .line 315
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->d(Lcom/nianticproject/ingress/common/scanner/a/ac;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gtz v5, :cond_0

    .line 316
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 320
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->c(Lcom/nianticproject/ingress/common/scanner/a/ac;)V

    .line 323
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->j:Lcom/google/a/c/hn;

    .line 329
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->i:Lcom/google/a/c/hn;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->j:Lcom/google/a/c/hn;

    .line 330
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->i:Lcom/google/a/c/hn;

    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->i:Lcom/google/a/c/hn;

    invoke-virtual {v0}, Lcom/google/a/c/hn;->clear()V

    .line 333
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->l:J

    .line 334
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 337
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 338
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->dispose()V

    .line 336
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 341
    :cond_4
    :try_start_2
    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/a/aa;->a:Lcom/nianticproject/ingress/common/scanner/a/ac;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->f(Lcom/nianticproject/ingress/common/scanner/a/ac;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v1

    if-eqz v1, :cond_8

    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_2
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->n:I

    if-lt v0, v1, :cond_7

    monitor-exit p0

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->j:Lcom/google/a/c/hn;

    invoke-virtual {v0}, Lcom/google/a/c/hn;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/aa;

    if-nez v0, :cond_4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z

    const-wide/16 v1, 0x1f40

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->h(Lcom/nianticproject/ingress/common/scanner/a/ac;)J

    move-result-wide v3

    shl-long/2addr v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->c(Lcom/nianticproject/ingress/common/scanner/a/ac;J)J

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->c:Lcom/nianticproject/ingress/common/q/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/q/e;->a(Lcom/nianticproject/ingress/common/q/c;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/u;->a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V

    goto :goto_2
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/u;->f:La/a/a/a/b/bi;

    invoke-interface {v0}, La/a/a/a/b/bi;->b()La/a/a/a/c/j;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/j;->a()La/a/a/a/c/l;

    move-result-object v2

    .line 232
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ac;

    .line 234
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 235
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/ac;->c(Lcom/nianticproject/ingress/common/scanner/a/ac;)V

    .line 238
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 243
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->dispose()V

    goto :goto_1

    .line 245
    :cond_2
    return-void
.end method
