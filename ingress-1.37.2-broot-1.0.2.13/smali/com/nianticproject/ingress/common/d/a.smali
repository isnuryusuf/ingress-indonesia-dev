.class public Lcom/nianticproject/ingress/common/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/q;

.field private final c:Lcom/nianticproject/ingress/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/d/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/d/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/q;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/d/a;->b:Lcom/nianticproject/ingress/common/u/q;

    .line 44
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/d/a;->c:Lcom/nianticproject/ingress/common/a;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/d/a;)Lcom/nianticproject/ingress/common/u/q;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/d/a;->b:Lcom/nianticproject/ingress/common/u/q;

    return-object v0
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/nianticproject/ingress/common/d/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/d/a;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    sget-object v0, Lcom/nianticproject/ingress/common/d/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onSayResult: result=%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/d/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "say rpc failed due to PlextFail=%s"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v0, Lcom/nianticproject/ingress/message/component/ClientPlext;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/message/component/ClientPlext;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/d/a;->c:Lcom/nianticproject/ingress/common/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/message/component/ClientPlext;->getPlext()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/shared/rpc/y;)V
    .locals 5
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/nianticproject/ingress/common/d/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "say rpc failed after %d retries"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/d/u;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/nianticproject/ingress/common/d/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/common/d/b;-><init>(Lcom/nianticproject/ingress/common/d/a;Ljava/lang/String;Lcom/google/a/d/u;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/d/b;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 92
    return-void
.end method
