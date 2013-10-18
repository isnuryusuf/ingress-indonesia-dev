.class final Lcom/nianticproject/ingress/common/factionchoice/m;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/m;->a:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->r()Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-object v5

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/m;->a:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;->getTeamHint()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Lcom/nianticproject/ingress/common/factionchoice/d;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/shared/ai;

    .line 239
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;->getInviterGuid()Ljava/lang/String;

    move-result-object v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/m;->a:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->i(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/u/ah;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/m;->a:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Lcom/nianticproject/ingress/common/factionchoice/d;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-static {}, Lcom/nianticproject/ingress/common/factionchoice/d;->i()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "RPC to get nickname of inviting player failed."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/common/factionchoice/d;->i()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "RPC to get nickname of inviting player failed: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/factionchoice/m;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
