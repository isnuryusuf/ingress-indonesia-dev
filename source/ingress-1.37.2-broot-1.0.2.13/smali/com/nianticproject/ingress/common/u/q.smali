.class public Lcom/nianticproject/ingress/common/u/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u/h;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/u/b;

.field protected b:Lcom/nianticproject/ingress/common/u/j;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/q;->a:Lcom/nianticproject/ingress/common/u/b;

    .line 52
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/q;->c:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lcom/nianticproject/ingress/common/u/t;)Lcom/nianticproject/ingress/common/u/r;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/common/u/t",
            "<TR;TE;>;)",
            "Lcom/nianticproject/ingress/common/u/r",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Lcom/nianticproject/ingress/common/u/i;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/i;-><init>()V

    .line 97
    new-instance v2, Lcom/nianticproject/ingress/common/u/ah;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/q;->a:Lcom/nianticproject/ingress/common/u/b;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/u/q;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    .line 100
    iget-object v3, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/l;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/t;->a()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/l;J)Lcom/nianticproject/ingress/common/u/ad;

    move-result-object v3

    .line 103
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 104
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/nianticproject/ingress/common/u/ad;->a(Z)V

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;Lcom/nianticproject/ingress/common/u/i;)Lcom/nianticproject/ingress/common/u/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    iget-object v2, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    :cond_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v3, v2}, Lcom/nianticproject/ingress/common/u/ad;->a(Z)V

    .line 108
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    :cond_1
    throw v0
.end method

.method protected final a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;Lcom/nianticproject/ingress/common/u/i;)Lcom/nianticproject/ingress/common/u/r;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;",
            "Lcom/nianticproject/ingress/common/u/i;",
            ")",
            "Lcom/nianticproject/ingress/common/u/r",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/nianticproject/ingress/common/u/r;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/nianticproject/ingress/common/u/r;-><init>(Lcom/nianticproject/ingress/shared/rpc/RpcResult;Lcom/nianticproject/ingress/common/u/i;Lcom/nianticproject/ingress/common/u/j;B)V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<TR;TE;>;)",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/nianticproject/ingress/common/u/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/q;->a:Lcom/nianticproject/ingress/common/u/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/q;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    .line 70
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/nianticproject/ingress/common/u/j;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 57
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/q;->b:Lcom/nianticproject/ingress/common/u/j;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/u/j;->b(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 64
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<TR;",
            "Ljava/lang/Void;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/nianticproject/ingress/common/u/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/q;->a:Lcom/nianticproject/ingress/common/u/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/q;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    .line 77
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/u/ah;->b(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
