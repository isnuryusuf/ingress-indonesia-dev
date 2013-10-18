.class final Lcom/nianticproject/ingress/common/inventory/ui/au;
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
        "Lcom/nianticproject/ingress/shared/rpc/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/ar;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/ar;)V
    .locals 1
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/au;->a:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    .line 320
    const-string/jumbo v0, "RequestPortalEntityUpdate"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/ar;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/inventory/ui/au;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/ar;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 6
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/au;->a:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/inventory/ui/ar;->c(Lcom/nianticproject/ingress/common/inventory/ui/ar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/au;->a:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/inventory/ui/ar;->d(Lcom/nianticproject/ingress/common/inventory/ui/ar;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/au;->a:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/inventory/ui/ar;->d(Lcom/nianticproject/ingress/common/inventory/ui/ar;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/au;->a:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/inventory/ui/ar;->a(Lcom/nianticproject/ingress/common/inventory/ui/ar;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/au;->a:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ar;->e(Lcom/nianticproject/ingress/common/inventory/ui/ar;)Lcom/nianticproject/ingress/common/inventory/ui/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/inventory/ui/at;->a()V

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/au;->a:Lcom/nianticproject/ingress/common/inventory/ui/ar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ar;->b(Lcom/nianticproject/ingress/common/inventory/ui/ar;)Lcom/nianticproject/ingress/common/h/g;

    const/4 v0, 0x0

    return-object v0
.end method
