.class final Lcom/nianticproject/ingress/common/playerprofile/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/playerprofile/br;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/br;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->b:Lcom/nianticproject/ingress/common/playerprofile/br;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->b:Lcom/nianticproject/ingress/common/playerprofile/br;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/br;->a(Lcom/nianticproject/ingress/common/playerprofile/br;)Lcom/nianticproject/ingress/common/playerprofile/az;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/playerprofile/az;->a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;)V

    .line 230
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->b:Lcom/nianticproject/ingress/common/playerprofile/br;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/br;->a(Lcom/nianticproject/ingress/common/playerprofile/br;)Lcom/nianticproject/ingress/common/playerprofile/az;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/az;->d()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bs;->b:Lcom/nianticproject/ingress/common/playerprofile/br;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/br;->a(Lcom/nianticproject/ingress/common/playerprofile/br;)Lcom/nianticproject/ingress/common/playerprofile/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/az;->d()V

    goto :goto_0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string/jumbo v0, "LoadAvatarOptions"

    return-object v0
.end method
