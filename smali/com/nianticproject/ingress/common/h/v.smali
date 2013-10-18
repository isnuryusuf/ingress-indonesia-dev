.class final Lcom/nianticproject/ingress/common/h/v;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/h/s;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/s;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/v;->b:Lcom/nianticproject/ingress/common/h/s;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/h/v;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/v;->b:Lcom/nianticproject/ingress/common/h/s;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/h/s;->a:Lcom/nianticproject/ingress/common/h/r;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/r;->a(Lcom/nianticproject/ingress/common/h/r;)Lcom/nianticproject/ingress/common/g/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/v;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->d(Ljava/util/Set;)V

    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/v;->b:Lcom/nianticproject/ingress/common/h/s;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/h/s;->a:Lcom/nianticproject/ingress/common/h/r;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/r;->b(Lcom/nianticproject/ingress/common/h/r;)Lcom/nianticproject/ingress/common/missions/el;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/el;->b()V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method
