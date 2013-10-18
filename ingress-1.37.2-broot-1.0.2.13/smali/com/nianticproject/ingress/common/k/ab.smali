.class public final Lcom/nianticproject/ingress/common/k/ab;
.super Lcom/nianticproject/ingress/common/ui/elements/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

.field private b:Z

.field private c:Lcom/nianticproject/ingress/common/c/bn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/ab;->b:Z

    .line 28
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->aT:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->c:Lcom/nianticproject/ingress/common/c/bn;

    .line 29
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/ab;->c:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->e(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 30
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/ab;->b:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->c:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->c:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/ab;->b:Z

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a()V

    .line 73
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/ab;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/ab;->c:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/ab;->b:Z

    .line 75
    :cond_0
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/ab;->a()V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/a;->a(F)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 35
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const/high16 v2, 0x4120

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 36
    const/high16 v0, 0x40a0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 37
    const/high16 v0, 0x4230

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 39
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string/jumbo v0, "default"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 40
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3, v2}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/ab;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    .line 43
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 45
    return-object v1
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/ab;->a()V

    .line 88
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;->dispose()V

    .line 89
    return-void
.end method
