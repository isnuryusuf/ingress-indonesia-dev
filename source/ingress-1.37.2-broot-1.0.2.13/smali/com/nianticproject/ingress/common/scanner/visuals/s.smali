.class public final Lcom/nianticproject/ingress/common/scanner/visuals/s;
.super Lcom/nianticproject/ingress/common/scanner/visuals/d;
.source "SourceFile"


# instance fields
.field private final d:Lcom/badlogic/gdx/math/Vector3;

.field private final e:Lcom/badlogic/gdx/math/Vector2;

.field private final f:Lcom/badlogic/gdx/math/Vector2;

.field private final g:Lcom/nianticproject/ingress/common/scanner/visuals/g;

.field private h:Lcom/nianticproject/ingress/common/j/f;

.field private i:Lcom/nianticproject/ingress/common/scanner/ej;

.field private j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private k:F

.field private l:F

.field private m:Lcom/badlogic/gdx/graphics/Color;

.field private n:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/d;-><init>(Lcom/nianticproject/ingress/common/j/h;)V

    .line 24
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->d:Lcom/badlogic/gdx/math/Vector3;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->f:Lcom/badlogic/gdx/math/Vector2;

    .line 42
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/g;-><init>(FF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->g:Lcom/nianticproject/ingress/common/scanner/visuals/g;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 57
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->k:F

    .line 58
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->l:F

    .line 59
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/f;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->h:Lcom/nianticproject/ingress/common/j/f;

    .line 77
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->i:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 68
    return-void
.end method

.method public final a(F)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->i:Lcom/nianticproject/ingress/common/scanner/ej;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->h:Lcom/nianticproject/ingress/common/j/f;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b:Lcom/badlogic/gdx/math/Vector2;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b:Lcom/badlogic/gdx/math/Vector2;

    .line 103
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->c:Lcom/badlogic/gdx/math/Vector2;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->k:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->l:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->i:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x3f80

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->h:Lcom/nianticproject/ingress/common/j/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/w/ao;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 122
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    .line 123
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->n:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->g:Lcom/nianticproject/ingress/common/scanner/visuals/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->m:Lcom/badlogic/gdx/graphics/Color;

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->n:F

    const/high16 v5, 0x4040

    invoke-static {v5}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;FF)V

    .line 136
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/d;->a(F)Z

    move-result v0

    return v0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v0, :cond_1

    .line 131
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b:Lcom/badlogic/gdx/math/Vector2;

    .line 132
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->c:Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0
.end method

.method public final b(F)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->n:F

    .line 95
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/s;->m:Lcom/badlogic/gdx/graphics/Color;

    .line 84
    return-void
.end method
