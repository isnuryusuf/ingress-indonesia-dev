.class final Lcom/nianticproject/ingress/common/scanner/visuals/aq;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;",
        "Lcom/nianticproject/ingress/shared/ae;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aq;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 539
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aq;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->g(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Z

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->c()Lcom/nianticproject/ingress/common/w/aa;

    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;

    iget-object v0, v0, Lcom/nianticproject/ingress/shared/rpc/CollectItemsFromPortalResult;->addedGuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aq;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->h(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/nianticproject/ingress/common/g/e;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aq;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->a(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;Ljava/util/Set;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->c()Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Hack failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ae;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/ae;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aq;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ae;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->a(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;Lcom/nianticproject/ingress/shared/ae;)Lcom/nianticproject/ingress/shared/ae;

    goto :goto_1
.end method
