.class public final Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/widget/an;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private d:F

.field private e:Lcom/nianticproject/ingress/common/ui/widget/ao;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    const-class v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;)V

    .line 119
    return-void
.end method

.method private constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;F)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 143
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/an;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/nianticproject/ingress/common/ui/widget/an;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;FB)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a:Lcom/nianticproject/ingress/common/ui/widget/an;

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->d:F

    .line 145
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->clear()V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 146
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;)V
    .locals 4
    .parameter

    .prologue
    .line 127
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    :goto_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    iget-object v3, p1, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->full:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    iget v3, p1, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->smoothGrowRate:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;F)V

    .line 131
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->d:F

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->d:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->e:Lcom/nianticproject/ingress/common/ui/widget/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->e:Lcom/nianticproject/ingress/common/ui/widget/ao;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->d:F

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ao;->a(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/widget/an;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a:Lcom/nianticproject/ingress/common/ui/widget/an;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/widget/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->e:Lcom/nianticproject/ingress/common/ui/widget/ao;

    .line 205
    return-void
.end method

.method public final act(F)V
    .locals 1
    .parameter

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a:Lcom/nianticproject/ingress/common/ui/widget/an;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/an;->a(F)V

    .line 197
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 179
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getWidth()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->d:F

    mul-float/2addr v1, v2

    add-float v4, v0, v1

    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 191
    :cond_1
    return-void
.end method
