.class public final Lcom/nianticproject/ingress/common/ui/widget/l;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final b:Lcom/nianticproject/ingress/common/ui/widget/k;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/ui/widget/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V

    .line 20
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/l;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 21
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/widget/l;->b:Lcom/nianticproject/ingress/common/ui/widget/k;

    .line 22
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/l;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/l;->b:Lcom/nianticproject/ingress/common/ui/widget/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/l;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/k;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 28
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 30
    return-void
.end method
