.class final Lcom/google/a/i/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/a/i/a/p;

.field final synthetic b:Lcom/google/a/i/a/l;


# direct methods
.method constructor <init>(Lcom/google/a/i/a/l;Lcom/google/a/i/a/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    iput-object p2, p0, Lcom/google/a/i/a/m;->a:Lcom/google/a/i/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    iget-object v1, p0, Lcom/google/a/i/a/m;->a:Lcom/google/a/i/a/p;

    invoke-static {v1}, Lcom/google/a/i/a/x;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/i/a/l;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1114
    iget-object v0, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    invoke-static {v0}, Lcom/google/a/i/a/l;->a(Lcom/google/a/i/a/l;)Lcom/google/a/i/a/p;

    .line 1115
    :goto_0
    return-void

    .line 1107
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/i/a/l;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    iget-object v0, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    invoke-static {v0}, Lcom/google/a/i/a/l;->a(Lcom/google/a/i/a/l;)Lcom/google/a/i/a/p;

    goto :goto_0

    .line 1109
    :catch_1
    move-exception v0

    .line 1111
    :try_start_2
    iget-object v1, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/i/a/l;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1114
    iget-object v0, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    invoke-static {v0}, Lcom/google/a/i/a/l;->a(Lcom/google/a/i/a/l;)Lcom/google/a/i/a/p;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/i/a/m;->b:Lcom/google/a/i/a/l;

    invoke-static {v1}, Lcom/google/a/i/a/l;->a(Lcom/google/a/i/a/l;)Lcom/google/a/i/a/p;

    throw v0
.end method
