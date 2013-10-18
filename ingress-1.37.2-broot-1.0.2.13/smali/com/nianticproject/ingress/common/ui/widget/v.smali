.class public final Lcom/nianticproject/ingress/common/ui/widget/v;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 24
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    .line 25
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->e:F

    .line 26
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->f:F

    .line 28
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->h:F

    .line 38
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->f:F

    .line 39
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->g:F

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/v;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->g:F

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p4, :cond_1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->g:F

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->g:F

    .line 40
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 69
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/v;->clear()V

    .line 70
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/v;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 72
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/v;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->g:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 73
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/ui/widget/v;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->p()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->h()Lcom/a/a/c;

    move-result-object v1

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->h:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/a/a/c;->d(F)Lcom/a/a/c;

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/v;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/v;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    goto :goto_0
.end method


# virtual methods
.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Progress must be between 0.0 and 1.0"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 111
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->e:F

    .line 112
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final act(F)V
    .locals 3
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->e:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 91
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->e:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->f:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    .line 92
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/v;->a()V

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 98
    return-void

    .line 93
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->e:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 94
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->e:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->f:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/v;->d:F

    .line 95
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/v;->a()V

    goto :goto_0
.end method
