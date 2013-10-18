.class final Lcom/nianticproject/ingress/common/scanner/modes/bd;
.super Lcom/nianticproject/ingress/common/scanner/modes/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ba;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    .line 457
    const-string/jumbo v0, "RECHARGE ALL"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aa;-><init>(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bd;)V
    .locals 2
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Z)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    const-string/jumbo v1, "Recharging..."

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bd;Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a(Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            ">;",
            "Lcom/nianticproject/ingress/common/model/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->e(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v3

    invoke-static {v1, v2, p1, p2, v3}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/model/ab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/nianticproject/ingress/common/model/ab;)Lcom/nianticproject/ingress/common/model/ab;

    .line 505
    const-string/jumbo v0, "RECHARGE"

    .line 506
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 507
    const-string/jumbo v0, "RECHARGE ALL"

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a()Z

    move-result v2

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a:Z

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b(Z)V

    .line 490
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V

    goto :goto_0
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 479
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0, p1, p3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 480
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 481
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 482
    return-void
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->d(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->e(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/f;

    invoke-direct {p0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a(Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V

    .line 464
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/be;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/modes/be;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bd;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 473
    return-object v0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c()V

    .line 496
    return-void
.end method
