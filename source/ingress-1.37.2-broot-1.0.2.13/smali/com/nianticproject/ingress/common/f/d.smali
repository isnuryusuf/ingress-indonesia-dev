.class final Lcom/nianticproject/ingress/common/f/d;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/f/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/f/a;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 3

    .prologue
    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/f/d;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/f/a;->b(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 329
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->g()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->i()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->g()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->i()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string/jumbo v2, "An ExecutionException occured while executing doInBackground()"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->g()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :catch_2
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/f/a;->b(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->g()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->g()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/f/d;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    throw v0
.end method
