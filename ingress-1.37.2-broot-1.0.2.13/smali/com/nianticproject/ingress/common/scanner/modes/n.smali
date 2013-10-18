.class final Lcom/nianticproject/ingress/common/scanner/modes/n;
.super Lcom/nianticproject/ingress/common/ui/c/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/l;

.field private b:Lcom/nianticproject/ingress/gameentity/f;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/l;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ModeFireListener."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/c/h;-><init>(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/l;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/modes/n;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/l;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->b:Lcom/nianticproject/ingress/gameentity/f;

    .line 193
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 184
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/l;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/l;->a(Lcom/nianticproject/ingress/common/scanner/modes/l;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->b:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-static {v0, v4}, Lcom/nianticproject/ingress/common/scanner/modes/l;->a(Lcom/nianticproject/ingress/common/scanner/modes/l;Ljava/util/List;)Ljava/util/List;

    iput-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->b:Lcom/nianticproject/ingress/gameentity/f;

    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/l;->a(Lcom/nianticproject/ingress/common/scanner/modes/l;Z)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/l;->d(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/scanner/modes/m;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/l;->a(Lcom/nianticproject/ingress/common/scanner/modes/m;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Misfire!"

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/l;->b(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/af;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/l;->c(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/j/as;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/common/scanner/modes/af;-><init>(Lcom/nianticproject/ingress/common/j/as;)V

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/l;->a(Lcom/nianticproject/ingress/common/scanner/modes/l;Lcom/nianticproject/ingress/common/scanner/modes/af;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/l;->b(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/n;->a:Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/l;->b(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
