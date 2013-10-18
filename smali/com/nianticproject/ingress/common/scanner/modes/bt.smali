.class final Lcom/nianticproject/ingress/common/scanner/modes/bt;
.super Lcom/nianticproject/ingress/common/ui/elements/a;
.source "SourceFile"


# static fields
.field private static final a:F


# instance fields
.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field private j:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 474
    const/high16 v0, 0x4224

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->a:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;-><init>()V

    .line 500
    const/high16 v0, 0x4000

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->b:F

    .line 501
    sget v0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->a:F

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->c:F

    .line 502
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->d:F

    .line 503
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->e:F

    .line 504
    const/high16 v0, 0x4080

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->f:F

    .line 505
    const/high16 v0, 0x41a0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->g:F

    .line 506
    return-void
.end method


# virtual methods
.method public final a()Lcom/badlogic/gdx/math/Rectangle;
    .locals 6

    .prologue
    const v5, 0x3f0ccccd

    .line 514
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->j:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->j:Lcom/badlogic/gdx/math/Rectangle;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->j:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->f:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getHeight()F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->g:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getHeight()F

    move-result v4

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 524
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->j:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 530
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 531
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    .line 532
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    .line 533
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->b:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->d:F

    sub-float/2addr v0, v2

    .line 534
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->c:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->e:F

    sub-float/2addr v1, v2

    .line 535
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->b:F

    .line 536
    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->e:F

    .line 537
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 538
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 539
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 540
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 543
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 544
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/az;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    const-string/jumbo v3, "remote-portal-bracket"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    const v3, 0xff802e

    invoke-direct {v0, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;I)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 556
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 557
    const-string/jumbo v0, "remote-portal"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 558
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v4, "REMOTE PORTAL VIEW"

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    .line 560
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 561
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 566
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 569
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bt;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method
