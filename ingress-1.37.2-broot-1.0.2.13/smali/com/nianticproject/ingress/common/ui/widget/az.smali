.class public final Lcom/nianticproject/ingress/common/ui/widget/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final b:Lcom/badlogic/gdx/graphics/Color;

.field private final c:Lcom/badlogic/gdx/graphics/Color;

.field private final d:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-static {p2}, Lcom/nianticproject/ingress/common/b/c;->a(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 12
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 13
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 16
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 17
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/common/ui/widget/az;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 26
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->c:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 33
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 37
    return-void
.end method

.method public final getBottomHeight()F
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    return v0
.end method

.method public final getLeftWidth()F
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    return v0
.end method

.method public final getMinHeight()F
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public final getMinWidth()F
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public final getRightWidth()F
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    return v0
.end method

.method public final getTopHeight()F
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/az;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    return v0
.end method
