.class public final Lcom/nianticproject/ingress/common/u/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/b;)Lcom/nianticproject/ingress/common/u/w;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    :try_start_0
    const-string/jumbo v0, "HandshakeRpcRequests.getHandshake"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/u/w;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/u/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
