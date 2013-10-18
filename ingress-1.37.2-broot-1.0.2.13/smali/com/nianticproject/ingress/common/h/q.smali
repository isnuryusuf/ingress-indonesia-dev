.class public final Lcom/nianticproject/ingress/common/h/q;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/LinkResult;",
        "Lcom/nianticproject/ingress/shared/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/nianticproject/ingress/common/g/e;

.field private final e:Lcom/nianticproject/ingress/common/a;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 40
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->a:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->b:Ljava/lang/String;

    .line 42
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->c:Ljava/lang/String;

    .line 43
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->d:Lcom/nianticproject/ingress/common/g/e;

    .line 44
    invoke-static {p6}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->e:Lcom/nianticproject/ingress/common/a;

    .line 45
    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/LinkResult;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;

    iget-object v0, v0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;->newRegionGuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->c:Lcom/nianticproject/ingress/common/c/bs;

    .line 67
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->e:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "Link established!"

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;

    iget-object v0, v0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;->newRegionGuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 74
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    if-eqz v1, :cond_1

    .line 77
    const-class v4, Lcom/nianticproject/ingress/gameentity/components/EntityScore;

    invoke-interface {v1, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/EntityScore;

    .line 78
    if-eqz v1, :cond_1

    .line 81
    iget-object v4, p0, Lcom/nianticproject/ingress/common/h/q;->e:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v5, "Field established! +%d mind units"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/EntityScore;->getScore()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->b:Lcom/nianticproject/ingress/common/c/bs;

    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x0

    .line 90
    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/nianticproject/ingress/common/h/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/q;->d:Lcom/nianticproject/ingress/common/g/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/q;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/aj;-><init>(Lcom/nianticproject/ingress/common/g/e;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/LinkResult;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->d:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/q;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aI:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/q;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/q;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/n;->s:Lcom/nianticproject/ingress/shared/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nianticproject/ingress/shared/n;->t:Lcom/nianticproject/ingress/shared/n;

    return-object v0
.end method
