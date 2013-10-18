.class final Lcom/nianticproject/ingress/common/missions/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/er;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/k;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;)",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->A:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method
