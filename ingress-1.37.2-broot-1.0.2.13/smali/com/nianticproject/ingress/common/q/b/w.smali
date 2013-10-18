.class final Lcom/nianticproject/ingress/common/q/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lcom/nianticproject/ingress/common/q/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/q/b/r;

.field private final b:Lcom/nianticproject/ingress/common/q/c;

.field private c:Lcom/nianticproject/ingress/common/q/d;

.field private volatile d:I

.field private e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/q/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/w;->a:Lcom/nianticproject/ingress/common/q/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/nianticproject/ingress/common/q/b/w;->b:Lcom/nianticproject/ingress/common/q/c;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    .line 71
    return-void
.end method

.method private declared-synchronized a(JLjava/util/concurrent/TimeUnit;)Lcom/nianticproject/ingress/common/q/d;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 112
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 116
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 117
    :try_start_2
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 125
    :cond_2
    :try_start_5
    throw v0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 130
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->e:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->c:Lcom/nianticproject/ingress/common/q/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized e()Lcom/nianticproject/ingress/common/q/d;
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lcom/nianticproject/ingress/common/q/b/w;->a(JLjava/util/concurrent/TimeUnit;)Lcom/nianticproject/ingress/common/q/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a()Lcom/nianticproject/ingress/common/q/c;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->b:Lcom/nianticproject/ingress/common/q/c;

    return-object v0
.end method

.method final declared-synchronized a(Lcom/nianticproject/ingress/common/q/d;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 146
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    .line 150
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/w;->c:Lcom/nianticproject/ingress/common/q/d;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 155
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    .line 159
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/w;->e:Ljava/lang/Throwable;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted queueing of non-ready TileFuture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit p0

    return-void
.end method

.method public final cancel(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    if-eq v1, v0, :cond_0

    .line 89
    const/4 v0, 0x0

    monitor-exit p0

    .line 95
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->a:Lcom/nianticproject/ingress/common/q/b/r;

    invoke-static {v1, p0}, Lcom/nianticproject/ingress/common/q/b/r;->a(Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/q/b/w;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted activation of active TileFuture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/q/b/w;->e()Lcom/nianticproject/ingress/common/q/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/q/b/w;->a(JLjava/util/concurrent/TimeUnit;)Lcom/nianticproject/ingress/common/q/d;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized isCancelled()Z
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TileFuture: coord ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->b:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") state("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") exception("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/w;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
