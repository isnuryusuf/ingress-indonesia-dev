.class final Lcom/nianticproject/ingress/common/playerprofile/bt;
.super Lcom/nianticproject/ingress/common/f/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/m",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;",
        "Lcom/nianticproject/ingress/shared/rpc/q;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/u/ah;

.field private final b:Lcom/nianticproject/ingress/common/playerprofile/ba;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/nianticproject/ingress/common/playerprofile/av;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/playerprofile/ba;Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/av;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/ah;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->a:Lcom/nianticproject/ingress/common/u/ah;

    .line 56
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ba;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->b:Lcom/nianticproject/ingress/common/playerprofile/ba;

    .line 57
    invoke-static {p3}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 58
    iput-object p3, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->c:Ljava/lang/String;

    .line 59
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->d:Lcom/nianticproject/ingress/common/playerprofile/av;

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/bt;)Lcom/nianticproject/ingress/common/playerprofile/ba;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->b:Lcom/nianticproject/ingress/common/playerprofile/ba;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/bt;Lcom/nianticproject/ingress/common/playerprofile/ba;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->d:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-virtual {v1, p2, v0}, Lcom/nianticproject/ingress/common/playerprofile/av;->a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;)V

    invoke-interface {p1, p2, v0, v2}, Lcom/nianticproject/ingress/common/playerprofile/ba;->a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/common/playerprofile/j;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/q;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/playerprofile/ba;->a(Lcom/nianticproject/ingress/shared/rpc/q;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Lcom/nianticproject/ingress/common/playerprofile/ba;->a(Lcom/nianticproject/ingress/shared/rpc/q;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/playerprofile/bt;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->c:Ljava/lang/String;

    return-object v0
.end method

.method private j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;",
            "Lcom/nianticproject/ingress/shared/rpc/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->a:Lcom/nianticproject/ingress/common/u/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bt;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/aj;->d(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/bm;->b()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "RPC exception while trying to get the player profile."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/bt;->j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 45
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bu;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/bu;-><init>(Lcom/nianticproject/ingress/common/playerprofile/bt;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    return-object v0
.end method
