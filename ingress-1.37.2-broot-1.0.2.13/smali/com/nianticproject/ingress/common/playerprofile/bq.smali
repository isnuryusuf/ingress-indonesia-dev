.class final Lcom/nianticproject/ingress/common/playerprofile/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/playerprofile/bp;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/bp;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/bq;->b:Lcom/nianticproject/ingress/common/playerprofile/bp;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/bq;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 5
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bq;->b:Lcom/nianticproject/ingress/common/playerprofile/bp;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bq;->b:Lcom/nianticproject/ingress/common/playerprofile/bp;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/playerprofile/bp;->a(Lcom/nianticproject/ingress/common/playerprofile/bp;)Lcom/nianticproject/ingress/common/playerprofile/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bq;->b:Lcom/nianticproject/ingress/common/playerprofile/bp;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/playerprofile/bp;->b(Lcom/nianticproject/ingress/common/playerprofile/bp;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/bq;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/bq;->b:Lcom/nianticproject/ingress/common/playerprofile/bp;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/playerprofile/bp;->c(Lcom/nianticproject/ingress/common/playerprofile/bp;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/playerprofile/bp;->a(Lcom/nianticproject/ingress/common/playerprofile/bp;Lcom/nianticproject/ingress/common/playerprofile/ba;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;I)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "LoadAdditionalAchievementsTask"

    return-object v0
.end method
