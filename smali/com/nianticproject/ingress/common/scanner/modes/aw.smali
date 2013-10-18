.class final Lcom/nianticproject/ingress/common/scanner/modes/aw;
.super Lcom/nianticproject/ingress/common/scanner/modes/aa;
.source "SourceFile"


# instance fields
.field public a:Lcom/nianticproject/ingress/common/ui/widget/al;

.field public e:Lcom/nianticproject/ingress/common/itemupgrade/o;

.field final synthetic f:Lcom/nianticproject/ingress/common/scanner/modes/at;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private h:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field private final j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

.field private final k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

.field private final l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private final m:[Lcom/badlogic/gdx/scenes/scene2d/EventListener;

.field private final n:Lcom/nianticproject/ingress/common/scanner/modes/av;

.field private o:I

.field private p:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/at;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 400
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    .line 401
    const-string/jumbo v0, "INSTALL"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aa;-><init>(Ljava/lang/String;)V

    .line 373
    new-array v0, v1, [Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 378
    new-array v0, v1, [Lcom/nianticproject/ingress/common/ui/widget/ah;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    .line 383
    new-array v0, v1, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 384
    new-array v0, v1, [Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->m:[Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 385
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/av;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/at;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->n:Lcom/nianticproject/ingress/common/scanner/modes/av;

    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    .line 402
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/aw;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method private a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 469
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 472
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    if-nez v0, :cond_2

    .line 473
    :cond_1
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    .line 474
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f()V

    .line 476
    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/at;->c(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v3

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/at;->d(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/at;->e(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v5

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v6

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->n:Lcom/nianticproject/ingress/common/scanner/modes/av;

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/itemupgrade/l;-><init>(Lcom/nianticproject/ingress/gameentity/f;ILcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/itemupgrade/p;)V

    .line 479
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/common/itemupgrade/o;)V

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->f(Lcom/nianticproject/ingress/common/scanner/modes/at;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->g(Lcom/nianticproject/ingress/common/scanner/modes/at;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    const-string/jumbo v1, "INSTALL"

    const/4 v2, 0x0

    invoke-interface {v0, v8, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    check-cast v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    .line 489
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/itemupgrade/l;->a(Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)V

    .line 490
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    check-cast v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->b()V

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->d:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, v8}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    goto :goto_0

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->d:Lcom/nianticproject/ingress/common/ui/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    goto :goto_0
.end method

.method private a(Lcom/nianticproject/ingress/common/itemupgrade/o;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const v2, -0x41666666

    const/4 v3, 0x0

    .line 750
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g()V

    .line 752
    if-nez p1, :cond_1

    .line 753
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-virtual {v0, v3, v2}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(FF)V

    .line 757
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->n:Lcom/nianticproject/ingress/common/scanner/modes/av;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/scanner/modes/av;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;)V

    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    if-nez v0, :cond_2

    iput-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e3851ec

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/high16 v1, 0x3e80

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/ad;->a()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    .line 759
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    const v1, 0x3ba3d70a

    invoke-virtual {v0, v2, v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(FF)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/itemupgrade/o;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->b(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 508
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/n;

    if-nez v0, :cond_2

    .line 509
    :cond_1
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    .line 510
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f()V

    .line 512
    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/n;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/at;->d(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v3

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/at;->e(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v5

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/itemupgrade/n;-><init>(Lcom/nianticproject/ingress/gameentity/f;ILcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/ad;)V

    .line 514
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/common/itemupgrade/o;)V

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->d:Lcom/nianticproject/ingress/common/ui/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/common/itemupgrade/o;)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    const/4 v2, -0x1

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v3, v1, :cond_2

    add-int v1, p1, v3

    rem-int/lit8 v1, v1, 0x4

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v1

    :goto_1
    if-ltz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(I)V

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c()V

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/aw;)I
    .locals 1
    .parameter

    .prologue
    .line 364
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 457
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    .line 458
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f()V

    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/common/itemupgrade/o;)V

    .line 461
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->d:Lcom/nianticproject/ingress/common/ui/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 462
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(I)V

    return-void
.end method

.method private c(I)Z
    .locals 2
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 523
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f()V

    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->b(I)V

    return-void
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/modes/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c()V

    return-void
.end method

.method private f()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f00

    .line 659
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 660
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->d(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v3

    .line 661
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3c03126f

    mul-float v4, v1, v2

    .line 662
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "item-outline"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 663
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "item-disabled"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 665
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    .line 666
    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    .line 668
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 670
    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v2

    .line 671
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    aget-object v6, v6, v1

    .line 672
    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->m:[Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 674
    if-nez v2, :cond_1

    .line 675
    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 677
    :goto_1
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clear()V

    .line 678
    invoke-static {}, Lcom/nianticproject/ingress/common/gameentity/g;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 679
    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 681
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/ax;

    invoke-direct {v2, p0, v3, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ax;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/aw;ZI)V

    .line 689
    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->m:[Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    aput-object v2, v7, v1

    .line 690
    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 692
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v2, v2, v1

    invoke-static {v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nianticproject/ingress/common/ui/widget/ah;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 715
    :goto_2
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    if-ne v2, v1, :cond_2

    .line 716
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->clearActions()V

    .line 717
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v2, v2, v1

    const/high16 v6, 0x3e80

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 668
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    goto :goto_1

    .line 694
    :cond_1
    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/Mod;->buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;

    move-result-object v7

    invoke-interface {v7}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v7

    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/Mod;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v7

    .line 696
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clear()V

    .line 697
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v8, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V

    .line 698
    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v7

    const/high16 v8, 0x3f80

    invoke-static {v8}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 699
    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 700
    new-instance v7, Lcom/nianticproject/ingress/common/scanner/modes/ay;

    invoke-direct {v7, p0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ay;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V

    .line 706
    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->m:[Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    aput-object v7, v8, v1

    .line 707
    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 708
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v6, v6, v1

    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/Mod;->getInstallingUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Ljava/lang/String;)V

    .line 709
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 710
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/ui/widget/ah;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v7, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)V

    .line 711
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->clearActions()V

    .line 712
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v2, v2, v1

    invoke-static {v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nianticproject/ingress/common/ui/widget/ah;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto/16 :goto_2

    .line 719
    :cond_2
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->clearActions()V

    .line 720
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v2, v2, v1

    invoke-static {v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto/16 :goto_3

    .line 723
    :cond_3
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 763
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    if-eqz v0, :cond_0

    .line 764
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    const/high16 v0, 0x3e80

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/modes/az;

    invoke-direct {v3, p0, v2, v1}, Lcom/nianticproject/ingress/common/scanner/modes/az;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/aw;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/common/itemupgrade/o;)V

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 765
    :goto_1
    iput-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    .line 766
    iput-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->p:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 769
    :cond_0
    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;)V

    .line 770
    return-void

    .line 764
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/nianticproject/ingress/common/itemupgrade/o;->c()V

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->g(Lcom/nianticproject/ingress/common/scanner/modes/at;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->h(Lcom/nianticproject/ingress/common/scanner/modes/at;)V

    .line 561
    :cond_0
    return-void
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x4120

    const v9, 0x3e0f5c29

    const/4 v8, 0x0

    const v7, 0x3d23d70a

    const/4 v1, 0x0

    .line 540
    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 541
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-static {}, Lcom/nianticproject/ingress/common/gameentity/g;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    new-instance v5, Lcom/nianticproject/ingress/common/ui/widget/d;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-static {v6, v1}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/nianticproject/ingress/common/ui/widget/d;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    aput-object v5, v4, v0

    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/az;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v6, "item-button-selection"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    const v5, 0xffc85e

    invoke-direct {v2, v4, v5}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;I)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v4, v2, v0

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->l:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v5, v5, v0

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v5

    const/high16 v6, 0x4040

    invoke-static {v6}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/c;->n()Lcom/a/a/c;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v4, v5, v1

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-virtual {v2, v4}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-virtual {v2, v4}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->f()Lcom/a/a/c;

    if-nez v0, :cond_0

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    :cond_0
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/a/c;->h(Lcom/a/a/e;)Lcom/a/a/c;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "owner-tag"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    move v2, v1

    :goto_1
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    new-instance v5, Lcom/nianticproject/ingress/common/ui/widget/ah;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/scanner/modes/at;->e(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v4, v4, v2

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nianticproject/ingress/common/ui/widget/ah;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->k:[Lcom/nianticproject/ingress/common/ui/widget/ah;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v4

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v4

    if-nez v2, :cond_3

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    :cond_3
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->j:[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_4

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/a/a/c;->h(Lcom/a/a/e;)Lcom/a/a/c;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    .line 542
    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 543
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/al;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lcom/nianticproject/ingress/common/ui/widget/al;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;)V

    .line 544
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3f266666

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 547
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 549
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->d:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Z)V

    .line 550
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f()V

    .line 551
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c()V

    .line 552
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Modable;)V
    .locals 6
    .parameter

    .prologue
    .line 821
    if-nez p1, :cond_1

    .line 822
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Modable;

    move-object v4, v0

    .line 827
    :goto_0
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ea;->H:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v0

    aget-object v3, v1, v0

    .line 829
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    if-ltz v0, :cond_0

    .line 830
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->o:I

    invoke-interface {v4, v0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_0

    .line 832
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/Mod;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/gameentity/components/l;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "stats-rarity-bg"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 837
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->d(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/at;->b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/p;)V

    .line 839
    return-void

    :cond_1
    move-object v4, p1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 585
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->a(Lcom/nianticproject/ingress/common/scanner/modes/at;Z)Z

    .line 586
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/c;->b(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 533
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 534
    const v1, 0x3f451eb8

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    .line 535
    return-object v0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->f:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->c()V

    .line 566
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->g()V

    .line 572
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->e()V

    .line 573
    return-void
.end method
