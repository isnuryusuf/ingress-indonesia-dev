.class public final Lcom/nianticproject/ingress/common/u/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;II)Lcom/nianticproject/ingress/common/u/t;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v0, "ModRpcRequests.addMod"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 25
    new-instance v4, Lcom/nianticproject/ingress/shared/AddModParams;

    invoke-direct {v4, p1, p0, p2}, Lcom/nianticproject/ingress/shared/AddModParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/common/u/t;

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/nianticproject/ingress/shared/p;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/u/aa;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/nianticproject/ingress/common/u/aa;

    move-result-object v1

    const-string/jumbo v2, "gameplay"

    const-string/jumbo v3, "addMod"

    int-to-long v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/u/t;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/l;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
