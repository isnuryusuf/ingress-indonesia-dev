.class final Lcom/nianticproject/ingress/common/missions/bi;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 400
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->E:Lcom/nianticproject/ingress/common/missions/aq;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/bj;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/bj;-><init>(Lcom/nianticproject/ingress/common/missions/bi;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->E:Lcom/nianticproject/ingress/common/missions/aq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->O:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 410
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 411
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->E:Lcom/nianticproject/ingress/common/missions/aq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/bd;->O:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->b(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->E:Lcom/nianticproject/ingress/common/missions/aq;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/aq;->c()V

    .line 414
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bd;->u()V

    .line 415
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bi;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->Z:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 416
    return-void
.end method
