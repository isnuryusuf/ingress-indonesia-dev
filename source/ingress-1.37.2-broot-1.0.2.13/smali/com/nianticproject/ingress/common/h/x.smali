.class public final Lcom/nianticproject/ingress/common/h/x;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/shared/ae;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nianticproject/ingress/gameentity/components/Resource;

.field private final b:Lcom/nianticproject/ingress/common/g/e;

.field private final c:Lcom/nianticproject/ingress/common/a;

.field private d:Lcom/nianticproject/ingress/gameentity/f;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/gameentity/components/Resource;)V
    .locals 1
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

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->b:Lcom/nianticproject/ingress/common/g/e;

    .line 41
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->c:Lcom/nianticproject/ingress/common/a;

    .line 42
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->a:Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/h/x;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->d:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/h/x;)Lcom/nianticproject/ingress/common/g/e;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->b:Lcom/nianticproject/ingress/common/g/e;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 94
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/x;->c:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v3, "%s pickup failed - %s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/h/x;->a:Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v5

    invoke-static {v5}, Lcom/nianticproject/ingress/common/inventory/ui/a;->a(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v6

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ae;

    .line 85
    sget-object v2, Lcom/nianticproject/ingress/shared/ae;->a:Lcom/nianticproject/ingress/shared/ae;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/nianticproject/ingress/shared/ae;->b:Lcom/nianticproject/ingress/shared/ae;

    if-ne v0, v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 86
    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Lcom/nianticproject/ingress/common/h/y;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/h/y;-><init>(Lcom/nianticproject/ingress/common/h/x;)V

    goto :goto_0
.end method

.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->b:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/x;->a:Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->d:Lcom/nianticproject/ingress/gameentity/f;

    .line 63
    new-instance v0, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/nianticproject/ingress/common/c/ba;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->T:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/x;->a:Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->aN:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->a:Lcom/nianticproject/ingress/common/c/bp;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bp;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/c/bo;->a(Z)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/x;->a:Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/ar;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->j:Lcom/nianticproject/ingress/shared/ae;

    return-object v0
.end method
