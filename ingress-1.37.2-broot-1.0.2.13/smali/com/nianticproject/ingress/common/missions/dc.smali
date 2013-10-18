.class final Lcom/nianticproject/ingress/common/missions/dc;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/da;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/da;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 357
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 358
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/da;->g(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/dh;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/dh;->a(Z)V

    .line 359
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/da;->h(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/aq;->c()V

    .line 360
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/da;->h(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/da;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 367
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/da;->g(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/dh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/dh;->a(Z)V

    .line 368
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/da;->h(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/aq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/da;->h(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dc;->a:Lcom/nianticproject/ingress/common/missions/da;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/da;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->b(Ljava/lang/String;)V

    .line 370
    return-void
.end method
