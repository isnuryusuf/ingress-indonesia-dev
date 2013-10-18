.class final Lcom/nianticproject/ingress/common/itemupgrade/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/at;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/itemupgrade/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/itemupgrade/c;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 471
    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 472
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    .line 473
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/shared/r;

    .line 474
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->b(Lcom/nianticproject/ingress/common/itemupgrade/c;)V

    .line 475
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->b()V

    .line 476
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->e(Lcom/nianticproject/ingress/common/itemupgrade/c;)V

    .line 478
    if-nez p1, :cond_2

    .line 479
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/itemupgrade/c;->f(Lcom/nianticproject/ingress/common/itemupgrade/c;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/common/itemupgrade/c;IZ)V

    .line 481
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/f;->a:Lcom/nianticproject/ingress/common/itemupgrade/c;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/c;->d:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 482
    return-void

    :cond_1
    move v0, v1

    .line 471
    goto :goto_0

    :cond_2
    move v2, v1

    .line 478
    goto :goto_1
.end method
