.class final Lcom/nianticproject/ingress/common/playerprofile/br;
.super Lcom/nianticproject/ingress/common/f/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/m",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;",
        "Lcom/nianticproject/ingress/shared/rpc/q;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/u/ah;

.field private final b:Lcom/nianticproject/ingress/common/playerprofile/az;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/playerprofile/az;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    .line 200
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/ah;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/br;->a:Lcom/nianticproject/ingress/common/u/ah;

    .line 201
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/az;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/br;->b:Lcom/nianticproject/ingress/common/playerprofile/az;

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/br;)Lcom/nianticproject/ingress/common/playerprofile/az;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/br;->b:Lcom/nianticproject/ingress/common/playerprofile/az;

    return-object v0
.end method

.method private j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;",
            "Lcom/nianticproject/ingress/shared/rpc/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/br;->a:Lcom/nianticproject/ingress/common/u/ah;

    invoke-static {}, Lcom/nianticproject/ingress/common/u/aj;->d()Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/bm;->b()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "RPC Exception while trying to load avatar options."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/br;->j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 192
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bs;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/bs;-><init>(Lcom/nianticproject/ingress/common/playerprofile/br;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    return-object v0
.end method
