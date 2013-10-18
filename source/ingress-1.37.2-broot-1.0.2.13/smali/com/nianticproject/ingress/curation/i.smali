.class public final Lcom/nianticproject/ingress/curation/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/curation/e;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/u/ah;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/u/ah;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/curation/i;->a:Lcom/nianticproject/ingress/common/u/ah;

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/i;->a:Lcom/nianticproject/ingress/common/u/ah;

    new-instance v1, Lcom/nianticproject/ingress/common/u/ai;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/u/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/i;->a:Lcom/nianticproject/ingress/common/u/ah;

    invoke-static {}, Lcom/nianticproject/ingress/common/u/aj;->c()Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/i;->a:Lcom/nianticproject/ingress/common/u/ah;

    invoke-static {p1, p2, p3}, Lcom/nianticproject/ingress/common/u/aj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/b;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/a/d/u;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/rpc/b;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/i;->a:Lcom/nianticproject/ingress/common/u/ah;

    invoke-static/range {p1 .. p7}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/b;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/service/d;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    .line 74
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    .line 75
    new-instance v6, Lcom/nianticproject/ingress/service/b;

    new-instance v0, Lcom/nianticproject/ingress/common/u/az;

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Lcom/nianticproject/ingress/ab;->a()Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    move-result-object v4

    new-instance v5, Lcom/nianticproject/ingress/c/b;

    invoke-direct {v5}, Lcom/nianticproject/ingress/c/b;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/u/az;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/b;)V

    invoke-direct {v6, v0}, Lcom/nianticproject/ingress/service/b;-><init>(Lcom/nianticproject/ingress/common/u/u;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/nianticproject/ingress/service/b;->a(Ljava/lang/String;Z)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/i;->a:Lcom/nianticproject/ingress/common/u/ah;

    invoke-static {p1, p2, p3}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method
