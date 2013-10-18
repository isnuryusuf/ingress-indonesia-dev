.class public final Lcom/nianticproject/ingress/common/u/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/u/t;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/u/t;

    new-instance v1, Lcom/nianticproject/ingress/common/u/ap;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/ap;-><init>()V

    const-class v2, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "gameplay"

    const-string/jumbo v3, "findNearbyPortals"

    new-instance v4, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;

    invoke-direct {v4, p0, p1}, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;-><init>(Ljava/lang/String;I)V

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/u/t;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/l;J)V

    return-object v0
.end method
