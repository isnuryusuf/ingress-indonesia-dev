.class final Lcom/nianticproject/ingress/common/ui/g/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/bc;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/g/m;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/g/m;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/o;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/o;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->f(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/o;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->g(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setText(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    check-cast p1, Lcom/nianticproject/ingress/common/ui/g/h;

    .line 395
    if-eqz p2, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ui/g/h;->a()V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ui/g/h;->e()V

    goto :goto_0
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter

    .prologue
    .line 411
    if-nez p1, :cond_1

    .line 412
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/g/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/o;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->d(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    check-cast p1, Lcom/nianticproject/ingress/common/ui/g/h;

    .line 421
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ui/g/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ui/g/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/g/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/o;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->c(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/ui/g/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/g/k;->a(Lcom/nianticproject/ingress/common/ui/g/h;)Lcom/nianticproject/ingress/common/inventory/ui/q;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 428
    if-eqz v0, :cond_0

    .line 429
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/o;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/g/m;->e(Lcom/nianticproject/ingress/common/ui/g/m;)Lcom/nianticproject/ingress/common/scanner/em;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/em;->a(Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;)V

    goto :goto_0
.end method

.method public final c(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    return-void
.end method
