.class public abstract Lcom/nianticproject/ingress/common/scanner/modes/aa;
.super Lcom/nianticproject/ingress/common/ui/elements/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field protected b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

.field protected c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field protected d:Lcom/nianticproject/ingress/common/ui/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->a:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x3eb851ec

    .line 74
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 76
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    const v2, 0x3ccccccd

    mul-float/2addr v1, v2

    .line 77
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 78
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->c(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->p()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->h()Lcom/a/a/c;

    .line 79
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->c(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 80
    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 81
    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 82
    return-void
.end method

.method protected b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 42
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 44
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->a:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v0, "primary-action"

    const-class v5, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-direct {v2, v3, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/ab;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/modes/ab;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/aa;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->d:Lcom/nianticproject/ingress/common/ui/a/c;

    .line 55
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v2, "DONE"

    invoke-direct {v0, v2, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/ac;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/modes/ac;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/aa;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 63
    invoke-virtual {p0, p1, p2, v1}, Lcom/nianticproject/ingress/common/scanner/modes/aa;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    .line 65
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    .line 66
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 67
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 68
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 69
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    const-string/jumbo v0, "ap-progress-meter-neutral"

    const-class v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v3, v0

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 70
    return-object v1
.end method

.method protected abstract b()V
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->d()Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, v1, v1}, Lcom/nianticproject/ingress/common/ui/widget/z;->a(FF)V

    .line 93
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/aa;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;->e()V

    .line 98
    return-void
.end method
