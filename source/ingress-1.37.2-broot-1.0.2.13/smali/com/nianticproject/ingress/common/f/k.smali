.class public final Lcom/nianticproject/ingress/common/f/k;
.super Lcom/nianticproject/ingress/common/f/m;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/m",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<TSuccess;TError;>;>;",
        "Lcom/nianticproject/ingress/common/x/f;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/a/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TSuccess;TError;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/nianticproject/ingress/common/f/j;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/f/j;Lcom/google/a/a/ba;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TSuccess;TError;>;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/nianticproject/ingress/common/f/k;->a:Lcom/google/a/a/ba;

    .line 119
    return-void
.end method

.method private j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TSuccess;TError;>;"
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    const-string/jumbo v0, "GameRpcTask.initRequest"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/f/j;->c(Lcom/nianticproject/ingress/common/f/j;)Lcom/nianticproject/ingress/common/u/q;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/f/j;->b(Lcom/nianticproject/ingress/common/f/j;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/common/u/t;)Lcom/nianticproject/ingress/common/u/r;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/r;->a()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/f/j;->b(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/r;->b()V

    .line 156
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/r;->a()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/f/j;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/f/j;->a(Lcom/nianticproject/ingress/common/f/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/f/j;->e()V

    .line 135
    :cond_0
    :goto_0
    return-object v2

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/f/j;->c()Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/t;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/f/j;->a(Lcom/nianticproject/ingress/common/f/j;Lcom/nianticproject/ingress/common/u/t;)Lcom/nianticproject/ingress/common/u/t;

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/k;->a:Lcom/google/a/a/ba;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/f/k;->a(Lcom/google/a/a/ba;)Lcom/nianticproject/ingress/common/f/a;

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/k;->a:Lcom/google/a/a/ba;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/k;->a:Lcom/google/a/a/ba;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/k;->j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/f/l;

    const-string/jumbo v2, "GameplayRpcTask.onCancelled"

    invoke-direct {v1, p0, v2, p1}, Lcom/nianticproject/ingress/common/f/l;-><init>(Lcom/nianticproject/ingress/common/f/k;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    return-void
.end method

.method protected final synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 113
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/f/j;->a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string/jumbo v0, "GameRpcTask.initRequest"

    return-object v0
.end method
