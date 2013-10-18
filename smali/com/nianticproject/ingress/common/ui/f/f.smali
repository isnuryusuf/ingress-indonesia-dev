.class final Lcom/nianticproject/ingress/common/ui/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/common/x/g",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/nianticproject/ingress/gameentity/f;",
        ">;",
        "Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/f/e;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/f/e;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    const-string/jumbo v0, "UpdateNearbyPortalsTaskReceiver"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/f/e;->a(Lcom/nianticproject/ingress/common/ui/f/e;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/f/e;->b(Lcom/nianticproject/ingress/common/ui/f/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/f/e;->d()Lcom/nianticproject/ingress/common/w/aa;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/f/e;->a(Lcom/nianticproject/ingress/common/ui/f/e;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;

    sget-object v1, Lcom/nianticproject/ingress/server/a;->a:Lcom/nianticproject/ingress/server/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->b()Lcom/nianticproject/ingress/server/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/server/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/ui/f/e;->a(Lcom/nianticproject/ingress/common/ui/f/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/f/e;->c(Lcom/nianticproject/ingress/common/ui/f/e;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/f/e;->d(Lcom/nianticproject/ingress/common/ui/f/e;)Lcom/nianticproject/ingress/common/ui/f/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/google/a/d/u;Ljava/util/Collection;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/f/e;->d()Lcom/nianticproject/ingress/common/w/aa;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/f/e;->c(Lcom/nianticproject/ingress/common/ui/f/e;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/f/e;->d(Lcom/nianticproject/ingress/common/ui/f/e;)Lcom/nianticproject/ingress/common/ui/f/a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v1, v0}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/google/a/d/u;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/f/e;->a(Lcom/nianticproject/ingress/common/ui/f/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/f;->a:Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/f/e;->a(Lcom/nianticproject/ingress/common/ui/f/e;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
