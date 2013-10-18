.class public final Lcom/nianticproject/ingress/common/h/o;
.super Lcom/nianticproject/ingress/common/f/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/m",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/q;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/h/o;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/u/q;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/o;->b:Lcom/nianticproject/ingress/common/u/q;

    .line 36
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/o;->c:Ljava/util/List;

    .line 37
    return-void
.end method

.method private j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    const-string/jumbo v0, "GetCachedNicknamesTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/nianticproject/ingress/common/h/o;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_1
    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_2
    return-object v0

    .line 43
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nianticproject/ingress/common/h/o;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    move-object v0, v1

    .line 43
    goto :goto_1

    .line 50
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/h/o;->k()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_2
.end method

.method private k()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/o;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v0

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/o;->b:Lcom/nianticproject/ingress/common/u/q;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/o;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/a/a/an;->b(Z)V

    :goto_1
    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/o;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/nianticproject/ingress/common/h/o;->a:Ljava/util/Map;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/h/o;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    .line 84
    goto :goto_2

    .line 87
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/h/o;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
