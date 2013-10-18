.class final Lcom/nianticproject/ingress/common/model/b;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nianticproject/ingress/common/model/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/model/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/b;->b:Lcom/nianticproject/ingress/common/model/a;

    iput p2, p0, Lcom/nianticproject/ingress/common/model/b;->a:I

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 40
    :try_start_0
    const-string/jumbo v0, "AckLevelUpTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/model/b;->a:I

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/aj;->a(I)Lcom/nianticproject/ingress/shared/rpc/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/b;->b:Lcom/nianticproject/ingress/common/model/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/model/a;->a(Lcom/nianticproject/ingress/common/model/a;)Lcom/nianticproject/ingress/common/u/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-static {}, Lcom/nianticproject/ingress/common/model/a;->a()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Level up was rejected by server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/p;->b:Lcom/nianticproject/ingress/shared/rpc/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/b;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
