.class final Lcom/nianticproject/ingress/common/factionchoice/r;
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
        "Lcom/nianticproject/ingress/shared/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/n;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/r;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    return-void
.end method

.method private j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->h(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/u/q;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/r;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/aj;->b(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/factionchoice/r;->j()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 156
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/s;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/factionchoice/s;-><init>(Lcom/nianticproject/ingress/common/factionchoice/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    return-object v0
.end method
