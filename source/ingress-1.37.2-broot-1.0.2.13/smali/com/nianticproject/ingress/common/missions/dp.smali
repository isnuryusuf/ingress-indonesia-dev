.class final Lcom/nianticproject/ingress/common/missions/dp;
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
    .line 307
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dp;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 311
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dp;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/dl;->f(Lcom/nianticproject/ingress/common/missions/dl;)V

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dp;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->y:Lcom/nianticproject/ingress/common/scanner/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dp;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->g(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/nianticproject/ingress/common/scanner/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/e;->a(Lcom/nianticproject/ingress/common/scanner/f;)V

    .line 313
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 320
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dp;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->y:Lcom/nianticproject/ingress/common/scanner/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dp;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->g(Lcom/nianticproject/ingress/common/missions/dl;)Lcom/nianticproject/ingress/common/scanner/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/e;->b(Lcom/nianticproject/ingress/common/scanner/f;)V

    .line 322
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dp;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->ae:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 323
    return-void
.end method
