.class public final Lcom/nianticproject/ingress/shared/rpc/CheatAddInventoryRpcRequest;
.super Lcom/nianticproject/ingress/shared/rpc/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/shared/rpc/ac",
        "<",
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/shared/rpc/CheatAddInventoryResult;",
        "Lcom/nianticproject/ingress/shared/ae;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;ILcom/nianticproject/ingress/shared/rpc/ah;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/nianticproject/ingress/shared/rpc/ah",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/CheatAddInventoryResult;",
            "Lcom/nianticproject/ingress/shared/ae;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    const-string/jumbo v0, "devCheat"

    const-string/jumbo v1, "cheatAddInventory"

    new-instance v2, Lcom/nianticproject/ingress/shared/rpc/CheatAddInventoryRpcRequest$Params;

    invoke-direct {v2, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/CheatAddInventoryRpcRequest$Params;-><init>(Ljava/util/Map;I)V

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/ac;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method
