.class final Lcom/nianticproject/ingress/common/ui/g/d;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/nianticproject/ingress/shared/n;",
        ">;",
        "Lcom/nianticproject/ingress/shared/w;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/g/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/g/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/n;",
            ">;",
            "Lcom/nianticproject/ingress/shared/w;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 212
    if-nez p1, :cond_1

    .line 213
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/g/c;->c()Lcom/nianticproject/ingress/common/w/aa;

    .line 253
    :cond_0
    :goto_0
    return-object v6

    .line 219
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->a(Lcom/nianticproject/ingress/common/ui/g/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->g(Lcom/nianticproject/ingress/common/ui/g/c;)Z

    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->h(Lcom/nianticproject/ingress/common/ui/g/c;)Lcom/nianticproject/ingress/common/ui/g/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->h(Lcom/nianticproject/ingress/common/ui/g/c;)Lcom/nianticproject/ingress/common/ui/g/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/g/f;->a(Ljava/util/Collection;Ljava/util/Map;)V

    .line 226
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/g/c;->c()Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/g/c;->i(Lcom/nianticproject/ingress/common/ui/g/c;)Lcom/nianticproject/ingress/common/w/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/w/al;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/g/c;->j(Lcom/nianticproject/ingress/common/ui/g/c;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/g/c;->c()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "accept caught unexpected exception"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->b(Lcom/nianticproject/ingress/common/ui/g/c;)I

    move-result v0

    if-lt v0, v3, :cond_4

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/g/c;->c()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v2, "getLinkabilityImpediment() exceeded MAX_IMPEDIMENTS_RETRIES(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/nianticproject/ingress/common/ui/g/e;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/w;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->f(Lcom/nianticproject/ingress/common/ui/g/c;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/g/c;->c(Lcom/nianticproject/ingress/common/ui/g/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/g/c;->d(Lcom/nianticproject/ingress/common/ui/g/c;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/g/c;->e(Lcom/nianticproject/ingress/common/ui/g/c;)Lcom/nianticproject/ingress/common/x/g;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V

    move v0, v2

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/g/c;->c()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v2, "getLinkabilityImpediment() error=%s portalGuid=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/g/c;->c(Lcom/nianticproject/ingress/common/ui/g/c;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_1

    .line 232
    :cond_5
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 233
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v2

    .line 235
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 236
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/g/c;->d(Lcom/nianticproject/ingress/common/ui/g/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->g(Lcom/nianticproject/ingress/common/ui/g/c;)Z

    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->h(Lcom/nianticproject/ingress/common/ui/g/c;)Lcom/nianticproject/ingress/common/ui/g/f;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->d(Lcom/nianticproject/ingress/common/ui/g/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/g/c;->h(Lcom/nianticproject/ingress/common/ui/g/c;)Lcom/nianticproject/ingress/common/ui/g/f;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/nianticproject/ingress/common/ui/g/f;->a(Ljava/util/Collection;Ljava/util/Map;)V

    .line 246
    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/d;->a:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->k(Lcom/nianticproject/ingress/common/ui/g/c;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 178
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/g/d;->a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    return-object v0
.end method
