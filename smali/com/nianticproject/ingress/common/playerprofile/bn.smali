.class final Lcom/nianticproject/ingress/common/playerprofile/bn;
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
        "Lcom/nianticproject/ingress/shared/rpc/q;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/nianticproject/ingress/common/playerprofile/av;

.field private final c:Lcom/nianticproject/ingress/common/u/ah;

.field private final d:Lcom/nianticproject/ingress/common/playerprofile/ay;

.field private final e:Lcom/nianticproject/ingress/common/playerprofile/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/av;Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/playerprofile/ay;Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    .line 256
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 257
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->a:Ljava/lang/String;

    .line 258
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    .line 259
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/ah;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->c:Lcom/nianticproject/ingress/common/u/ah;

    .line 260
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ay;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->d:Lcom/nianticproject/ingress/common/playerprofile/ay;

    .line 261
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/j;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 262
    invoke-virtual {p5}, Lcom/nianticproject/ingress/common/playerprofile/j;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 263
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/bn;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/av;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/playerprofile/bn;)Lcom/nianticproject/ingress/common/playerprofile/ay;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->d:Lcom/nianticproject/ingress/common/playerprofile/ay;

    return-object v0
.end method

.method private j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/rpc/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->c:Lcom/nianticproject/ingress/common/u/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/j;->c()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/playerprofile/j;->b()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/playerprofile/j;->e()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/bn;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/playerprofile/j;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/bm;->b()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "RPC Exception while trying to choose avatar."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/bn;->j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 241
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bo;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/bo;-><init>(Lcom/nianticproject/ingress/common/playerprofile/bn;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    return-object v0
.end method
