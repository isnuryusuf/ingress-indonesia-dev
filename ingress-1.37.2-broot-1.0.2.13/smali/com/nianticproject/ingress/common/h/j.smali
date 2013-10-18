.class public final Lcom/nianticproject/ingress/common/h/j;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/server/flip/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/r;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/nianticproject/ingress/gameentity/components/Portal;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/u/q;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p4}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 40
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/j;->a:Lcom/nianticproject/ingress/common/r;

    .line 41
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/j;->b:Ljava/lang/String;

    .line 42
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/j;->c:Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 43
    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/server/flip/a;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/h/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/j;->a:Lcom/nianticproject/ingress/common/r;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/h/ab;-><init>(Lcom/nianticproject/ingress/common/r;)V

    return-object v0
.end method

.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/server/flip/a;",
            ">;",
            "Lcom/nianticproject/ingress/server/flip/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/j;->c:Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/u/d;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/server/flip/a;->e:Lcom/nianticproject/ingress/server/flip/a;

    return-object v0
.end method
