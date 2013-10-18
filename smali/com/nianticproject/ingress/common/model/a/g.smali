.class final Lcom/nianticproject/ingress/common/model/a/g;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/model/a/e;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            "Lcom/nianticproject/ingress/common/model/a/j",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            "Lcom/nianticproject/ingress/common/model/a/j",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/a/g;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/a/g;->c:Ljava/util/Map;

    .line 99
    invoke-static {p1}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/nianticproject/ingress/common/model/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/a/h;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/a/g;->b:Ljava/util/Map;

    .line 100
    return-void
.end method

.method private j()Lcom/nianticproject/ingress/shared/u;
    .locals 7

    .prologue
    .line 110
    :try_start_0
    const-string/jumbo v0, "BulkPutPlayerStorageTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/a/i;

    .line 114
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/a/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/model/a/j;

    .line 116
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/model/a/j;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/a/i;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/model/a/j;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v4, p0, Lcom/nianticproject/ingress/common/model/a/g;->c:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 123
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    .line 143
    :goto_1
    return-object v0

    .line 135
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/g;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/nianticproject/ingress/common/u/ah;

    move-result-object v1

    invoke-static {v2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/ad;

    const-class v3, Lcom/nianticproject/ingress/shared/u;

    const-class v4, Ljava/lang/Void;

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v3

    const-string/jumbo v4, "playerUndecorated"

    const-string/jumbo v5, "putBulkPlayerStorage"

    invoke-static {v2}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/nianticproject/ingress/shared/rpc/ad;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/ah;->b(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 135
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/common/model/a/e;->a()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RpcException while persisting to player storage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/nianticproject/ingress/shared/u;->b:Lcom/nianticproject/ingress/shared/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/a/g;->j()Lcom/nianticproject/ingress/shared/u;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nianticproject/ingress/shared/u;->a:Lcom/nianticproject/ingress/shared/u;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/model/a/j;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/model/a/j;->d()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/a/g;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/nianticproject/ingress/common/model/a/h;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/model/a/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/a/j;

    invoke-interface {v3, v1, v0}, Lcom/nianticproject/ingress/common/model/a/h;->a(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/model/a/j;)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/g;->a:Lcom/nianticproject/ingress/common/model/a/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/a/g;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/google/a/a/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/a/bw;->a()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/e;J)J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
