.class public final Lcom/nianticproject/ingress/common/ui/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final c:Lcom/nianticproject/ingress/common/ui/widget/k;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/ui/widget/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 24
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 25
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->c:Lcom/nianticproject/ingress/common/ui/widget/k;

    .line 26
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->c:Lcom/nianticproject/ingress/common/ui/widget/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/k;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 34
    return-void
.end method

.method public final getBottomHeight()F
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    return v0
.end method

.method public final getLeftWidth()F
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    return v0
.end method

.method public final getMinHeight()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public final getMinWidth()F
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public final getRightWidth()F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    return v0
.end method

.method public final getTopHeight()F
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/j;->a:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    return v0
.end method
