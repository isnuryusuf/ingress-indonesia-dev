.class final Lcom/nianticproject/ingress/common/itemupgrade/i;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/shared/ad;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/itemupgrade/k;

.field final synthetic b:Lcom/nianticproject/ingress/common/itemupgrade/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/itemupgrade/c;Ljava/lang/String;Lcom/nianticproject/ingress/common/itemupgrade/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/i;->b:Lcom/nianticproject/ingress/common/itemupgrade/c;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/itemupgrade/i;->a:Lcom/nianticproject/ingress/common/itemupgrade/k;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 940
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/i;->a:Lcom/nianticproject/ingress/common/itemupgrade/k;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/itemupgrade/k;->a(Z)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/i;->b:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ad;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/shared/ad;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
