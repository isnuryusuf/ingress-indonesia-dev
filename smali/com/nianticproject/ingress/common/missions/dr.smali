.class final Lcom/nianticproject/ingress/common/missions/dr;
.super Lcom/nianticproject/ingress/common/missions/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/dl;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/dl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 347
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 348
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->E:Lcom/nianticproject/ingress/common/missions/aq;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/ds;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/ds;-><init>(Lcom/nianticproject/ingress/common/missions/dr;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->E:Lcom/nianticproject/ingress/common/missions/aq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->h(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 359
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->E:Lcom/nianticproject/ingress/common/missions/aq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->h(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->b(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->E:Lcom/nianticproject/ingress/common/missions/aq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/aq;->a(Ljava/lang/Runnable;)V

    .line 362
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dr;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/dl;->u()V

    .line 363
    return-void
.end method
