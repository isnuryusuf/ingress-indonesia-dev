.class public final Lcom/nianticproject/ingress/common/ui/g;
.super Lcom/nianticproject/ingress/common/ui/k;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/badlogic/gdx/math/Matrix4;

.field private e:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/k;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g;->d:Lcom/badlogic/gdx/math/Matrix4;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g;->e:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/g;->b:I

    .line 31
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/g;->c:I

    .line 35
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 39
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/g;->b:I

    if-nez v0, :cond_1

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/k;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/g;->c:I

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/g;->b:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 46
    if-lez p4, :cond_0

    .line 49
    aget v1, p2, v2

    aget v2, p2, v0

    sub-float/2addr v1, v2

    .line 50
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/g;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 51
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/g;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 52
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/ui/g;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 54
    invoke-super {p0, p1, p2, v0, p4}, Lcom/nianticproject/ingress/common/ui/k;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/g;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    goto :goto_0
.end method
