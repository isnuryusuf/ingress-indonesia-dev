.class final Lcom/nianticproject/ingress/common/missions/bg;
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
    .line 339
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bg;->a:Lcom/nianticproject/ingress/common/missions/bd;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ab;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->a()V

    .line 344
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bg;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->W:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 345
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bg;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bd;->a(Lcom/nianticproject/ingress/common/missions/bd;)V

    .line 346
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bg;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->y:Lcom/nianticproject/ingress/common/scanner/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bg;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/bd;->b(Lcom/nianticproject/ingress/common/missions/bd;)Lcom/nianticproject/ingress/common/scanner/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/e;->a(Lcom/nianticproject/ingress/common/scanner/f;)V

    .line 347
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/ab;->u_()V

    .line 354
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bg;->a:Lcom/nianticproject/ingress/common/missions/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/bd;->y:Lcom/nianticproject/ingress/common/scanner/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bg;->a:Lcom/nianticproject/ingress/common/missions/bd;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/bd;->b(Lcom/nianticproject/ingress/common/missions/bd;)Lcom/nianticproject/ingress/common/scanner/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/e;->b(Lcom/nianticproject/ingress/common/scanner/f;)V

    .line 355
    return-void
.end method
