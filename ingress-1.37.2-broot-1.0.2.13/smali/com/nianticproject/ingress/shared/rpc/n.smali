.class public final Lcom/nianticproject/ingress/shared/rpc/n;
.super Lcom/nianticproject/ingress/shared/rpc/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/shared/rpc/ac",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/CellParams;",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([J[JLcom/nianticproject/ingress/shared/rpc/ah;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[J",
            "Lcom/nianticproject/ingress/shared/rpc/ah",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    const-string/jumbo v0, "gameplay"

    const-string/jumbo v1, "getObjectsInCells"

    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/CellParams;

    invoke-direct {v2, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/CellParams;-><init>([J[J)V

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/ac;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    return-void
.end method
