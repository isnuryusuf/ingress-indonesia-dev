.class final Lcom/nianticproject/ingress/common/factionchoice/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;Z)Z

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->i(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/factionchoice/n;->a()Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 186
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;Z)Z

    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->i(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/factionchoice/n;->b()Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;Z)Z

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->j(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Faction choice failed, reason: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/h;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/h;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/s;->b:Lcom/nianticproject/ingress/common/factionchoice/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/r;->b:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->i(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/factionchoice/n;->a()Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    goto :goto_0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "factionChoicePostRpc"

    return-object v0
.end method
