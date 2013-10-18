.class public abstract Lcom/nianticproject/ingress/common/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static e:Z

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/f/a",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/f/a",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static h:J


# instance fields
.field private final i:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile k:Lcom/nianticproject/ingress/common/f/g;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/lang/String;

.field private p:Lcom/google/a/a/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/ba",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 151
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/f/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/f/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 170
    new-instance v0, Lcom/nianticproject/ingress/common/f/b;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/f/b;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/f/a;->b:Ljava/util/concurrent/ThreadFactory;

    .line 181
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/nianticproject/ingress/common/f/a;->c:Ljava/util/concurrent/BlockingQueue;

    .line 183
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x40

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/nianticproject/ingress/common/f/a;->c:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/nianticproject/ingress/common/f/a;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/nianticproject/ingress/common/f/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/common/f/a;->e:Z

    .line 191
    invoke-static {}, Lcom/google/a/c/jc;->b()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/f/a;->f:Ljava/util/Set;

    .line 193
    invoke-static {}, Lcom/google/a/c/jc;->b()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/f/a;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    sget-object v0, Lcom/nianticproject/ingress/common/f/g;->a:Lcom/nianticproject/ingress/common/f/g;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->k:Lcom/nianticproject/ingress/common/f/g;

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->p:Lcom/google/a/a/ba;

    .line 284
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string/jumbo v1, "AbstractBackgroundTask not initialized"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/a;->l:Ljava/util/concurrent/Executor;

    .line 287
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->a()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->o:Ljava/lang/String;

    .line 291
    :cond_0
    sget-boolean v0, Lcom/nianticproject/ingress/common/f/a;->e:Z

    if-eqz v0, :cond_1

    .line 293
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/f/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/f/c;-><init>(Lcom/nianticproject/ingress/common/f/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->i:Ljava/util/concurrent/Callable;

    .line 316
    new-instance v0, Lcom/nianticproject/ingress/common/f/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/a;->i:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/f/d;-><init>(Lcom/nianticproject/ingress/common/f/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->j:Ljava/util/concurrent/FutureTask;

    .line 335
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/f/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 274
    sput-boolean p0, Lcom/nianticproject/ingress/common/f/a;->e:Z

    .line 275
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 240
    const-string/jumbo v0, "T: %d/%d in Q: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticproject/ingress/common/f/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/nianticproject/ingress/common/f/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/nianticproject/ingress/common/f/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/f/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/nianticproject/ingress/common/f/e;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/f/e;-><init>(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 351
    return-object p1
.end method

.method public static c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    sget-boolean v0, Lcom/nianticproject/ingress/common/f/a;->e:Z

    if-eqz v0, :cond_2

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/nianticproject/ingress/common/f/a;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 267
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/nianticproject/ingress/common/f/a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/f/a;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/f/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/f/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_1

    .line 268
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    sput-wide v0, Lcom/nianticproject/ingress/common/f/a;->h:J

    .line 271
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/f/a;->b(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/nianticproject/ingress/common/f/g;->c:Lcom/nianticproject/ingress/common/f/g;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->k:Lcom/nianticproject/ingress/common/f/g;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/f/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->p:Lcom/google/a/a/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->p:Lcom/google/a/a/ba;

    invoke-interface {v0, p1}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/nianticproject/ingress/common/f/a;->e:Z

    return v0
.end method

.method static synthetic g()Ljava/util/Set;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h()Ljava/util/Set;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic i()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/a/a/ba;)Lcom/nianticproject/ingress/common/f/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/ba",
            "<TResult;>;)",
            "Lcom/nianticproject/ingress/common/f/a",
            "<TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 542
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/a;->p:Lcom/google/a/a/ba;

    .line 543
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/f/a;->e()Lcom/nianticproject/ingress/common/f/a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 391
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 422
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onCancelled not overridden: You must override onCancelled! Do not forget to dispose of any held resources to prevent leaks!"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public final b(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 465
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->j:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/nianticproject/ingress/common/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/common/f/a",
            "<TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->k:Lcom/nianticproject/ingress/common/f/g;

    sget-object v1, Lcom/nianticproject/ingress/common/f/g;->a:Lcom/nianticproject/ingress/common/f/g;

    if-eq v0, v1, :cond_0

    .line 515
    sget-object v0, Lcom/nianticproject/ingress/common/f/f;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/a;->k:Lcom/nianticproject/ingress/common/f/g;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/f/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 524
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/f/g;->b:Lcom/nianticproject/ingress/common/f/g;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/a;->k:Lcom/nianticproject/ingress/common/f/g;

    .line 526
    sget-object v0, Lcom/nianticproject/ingress/common/f/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/a;->j:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 528
    return-object p0

    .line 517
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
