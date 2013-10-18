.class public final Lcom/nianticproject/ingress/common/i/d;
.super Lcom/badlogic/gdx/graphics/g2d/Sprite;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/nianticproject/ingress/common/i/d;->a:F

    .line 57
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5
    .parameter

    .prologue
    .line 30
    const/high16 v0, 0x3b80

    iget v1, p0, Lcom/nianticproject/ingress/common/i/d;->a:F

    const/high16 v2, 0x437e

    mul-float/2addr v1, v2

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 31
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aY:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 32
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 33
    const-string/jumbo v2, "mask"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 34
    const-string/jumbo v0, "regionX"

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/i/d;->getU()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 35
    const-string/jumbo v0, "regionWidth"

    const/high16 v2, 0x3f00

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/i/d;->getU2()F

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/i/d;->getU()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 37
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 40
    return-void
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method
