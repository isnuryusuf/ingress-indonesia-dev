.class final Lcom/nianticproject/ingress/common/playerprofile/bv;
.super Lcom/nianticproject/ingress/common/f/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/m",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/shared/rpc/w;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/u/ah;

.field private final b:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/bb;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;Lcom/nianticproject/ingress/common/playerprofile/bb;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    .line 324
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/ah;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->a:Lcom/nianticproject/ingress/common/u/ah;

    .line 325
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->b:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    .line 326
    iput-object p3, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->c:Lcom/nianticproject/ingress/common/playerprofile/bb;

    .line 327
    return-void
.end method

.method private j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->a:Lcom/nianticproject/ingress/common/u/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->b:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/aj;->a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/bm;->b()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "RPC failed for setProfileSettings"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/bv;->j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 308
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->c:Lcom/nianticproject/ingress/common/playerprofile/bb;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->c:Lcom/nianticproject/ingress/common/playerprofile/bb;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bv;->c:Lcom/nianticproject/ingress/common/playerprofile/bb;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bb;->a()Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    goto :goto_0
.end method
