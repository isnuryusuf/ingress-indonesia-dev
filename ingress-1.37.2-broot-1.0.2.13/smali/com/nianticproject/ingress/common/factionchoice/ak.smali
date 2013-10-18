.class final Lcom/nianticproject/ingress/common/factionchoice/ak;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/aj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/aj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->b(Lcom/nianticproject/ingress/common/factionchoice/aj;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bn;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/factionchoice/aj;Lcom/nianticproject/ingress/common/c/bn;)Lcom/nianticproject/ingress/common/c/bn;

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 234
    :goto_0
    return-object v3

    .line 228
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 229
    const/16 v0, 0x5dc

    .line 230
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/factionchoice/aj;)Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/bn;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 231
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->d()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ak;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/factionchoice/aj;I)V

    goto :goto_0
.end method
