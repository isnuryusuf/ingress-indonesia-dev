.class public final Lcom/nianticproject/ingress/service/core/c;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static a:I

.field private static final j:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/nianticproject/ingress/service/core/h;

.field private final d:Lcom/nianticproject/ingress/common/w/aa;

.field private final e:Landroid/os/Handler;

.field private f:Landroid/os/Handler;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/nianticproject/ingress/service/core/c;->a:I

    .line 114
    new-instance v0, Lcom/nianticproject/ingress/service/core/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/service/core/f;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/service/core/c;->j:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/service/core/h;Landroid/os/Handler;Lcom/nianticproject/ingress/common/w/aa;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->g:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/nianticproject/ingress/service/core/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/service/core/d;-><init>(Lcom/nianticproject/ingress/service/core/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->i:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Lcom/nianticproject/ingress/service/core/c;->c:Lcom/nianticproject/ingress/service/core/h;

    .line 90
    iput-object p2, p0, Lcom/nianticproject/ingress/service/core/c;->e:Landroid/os/Handler;

    .line 91
    iput-object p3, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/service/core/c;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/service/core/c;)Lcom/nianticproject/ingress/common/w/aa;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/service/core/c;)Lcom/nianticproject/ingress/service/core/h;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->c:Lcom/nianticproject/ingress/service/core/h;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/service/core/c;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/service/core/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 9

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 130
    iget-object v8, p0, Lcom/nianticproject/ingress/service/core/c;->g:Ljava/lang/Object;

    monitor-enter v8

    .line 131
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v7, Lcom/nianticproject/ingress/service/core/c;->j:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->h:Ljava/util/concurrent/ExecutorService;

    .line 134
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Lcom/nianticproject/ingress/service/core/c;->start()V

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 137
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    return-void
.end method

.method final b()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 145
    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->h:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Threadpool stopped, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " incomplete requests"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->h:Ljava/util/concurrent/ExecutorService;

    .line 154
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->f:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 161
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->h:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Attempting to use the threadpool after it was stopped, dropping task!"

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 198
    monitor-exit v1

    .line 213
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/nianticproject/ingress/service/core/g;

    invoke-direct {v2, p0, p1}, Lcom/nianticproject/ingress/service/core/g;-><init>(Lcom/nianticproject/ingress/service/core/c;Landroid/content/Intent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .parameter

    .prologue
    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CoreServiceThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/nianticproject/ingress/service/core/c;->a:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/nianticproject/ingress/service/core/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->f:Landroid/os/Handler;

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/ingress/service/core/e;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/service/core/e;-><init>(Lcom/nianticproject/ingress/service/core/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 107
    return-void
.end method
