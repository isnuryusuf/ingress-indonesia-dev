.class final Lcom/nianticproject/ingress/common/playerprofile/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/playerprofile/bt;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/bt;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/bu;->b:Lcom/nianticproject/ingress/common/playerprofile/bt;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/bu;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bu;->b:Lcom/nianticproject/ingress/common/playerprofile/bt;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bu;->b:Lcom/nianticproject/ingress/common/playerprofile/bt;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/playerprofile/bt;->a(Lcom/nianticproject/ingress/common/playerprofile/bt;)Lcom/nianticproject/ingress/common/playerprofile/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bu;->b:Lcom/nianticproject/ingress/common/playerprofile/bt;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/playerprofile/bt;->b(Lcom/nianticproject/ingress/common/playerprofile/bt;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/bu;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/playerprofile/bt;->a(Lcom/nianticproject/ingress/common/playerprofile/bt;Lcom/nianticproject/ingress/common/playerprofile/ba;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "LoadProfileTask"

    return-object v0
.end method
