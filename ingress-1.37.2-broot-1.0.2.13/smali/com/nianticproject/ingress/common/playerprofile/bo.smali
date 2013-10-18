.class final Lcom/nianticproject/ingress/common/playerprofile/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/playerprofile/bn;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/bn;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->b:Lcom/nianticproject/ingress/common/playerprofile/bn;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->b:Lcom/nianticproject/ingress/common/playerprofile/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/bn;->c(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/av;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->b:Lcom/nianticproject/ingress/common/playerprofile/bn;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/playerprofile/bn;->a(Lcom/nianticproject/ingress/common/playerprofile/bn;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->b:Lcom/nianticproject/ingress/common/playerprofile/bn;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/playerprofile/bn;->b(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/av;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 287
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->b:Lcom/nianticproject/ingress/common/playerprofile/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/bn;->d(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/ay;->b()V

    .line 294
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->b:Lcom/nianticproject/ingress/common/playerprofile/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/bn;->d(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/ay;->c()V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bo;->b:Lcom/nianticproject/ingress/common/playerprofile/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/bn;->d(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/ay;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/q;->b:Lcom/nianticproject/ingress/shared/rpc/q;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/ay;->c()V

    goto :goto_0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const-string/jumbo v0, "ChooseAvatar"

    return-object v0
.end method
