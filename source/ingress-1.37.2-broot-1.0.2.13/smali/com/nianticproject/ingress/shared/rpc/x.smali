.class public abstract Lcom/nianticproject/ingress/shared/rpc/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/net/URI;

.field protected final b:Lcom/nianticproject/ingress/shared/rpc/a;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/x;->a:Ljava/net/URI;

    .line 32
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/x;->b:Lcom/nianticproject/ingress/shared/rpc/a;

    .line 33
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/rpc/ab;Ljava/io/InputStream;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
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
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<TR;TE;>;",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ag;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/shared/rpc/ag;-><init>(Ljava/io/InputStream;)V

    .line 77
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/shared/rpc/ab;->a(Ljava/io/InputStream;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v0

    throw v0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/y;

    invoke-direct {v2, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<**>;",
            "Lcom/nianticproject/ingress/shared/rpc/y;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/y;"
        }
    .end annotation

    .prologue
    .line 116
    return-object p2
.end method

.method protected a(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/io/InputStream;
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
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/x;->a:Ljava/net/URI;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/shared/rpc/ab;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/x;->b:Lcom/nianticproject/ingress/shared/rpc/a;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v0

    throw v0
.end method

.method protected abstract a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method protected abstract a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
.end method

.method public final b(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
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
    .line 36
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/io/InputStream;

    move-result-object v1

    .line 38
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Ljava/io/InputStream;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/ae;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/shared/rpc/ae;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 58
    :goto_0
    throw v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0, v2}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 58
    :goto_1
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public final c(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;
    .locals 4
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
    .line 63
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/shared/rpc/x;->b(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Received error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", but sendOrThrow does not allow errors. Use send."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/shared/rpc/aa;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/nianticproject/ingress/shared/rpc/x;->a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;

    move-result-object v0

    throw v0
.end method
