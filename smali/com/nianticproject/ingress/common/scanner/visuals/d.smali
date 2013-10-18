.class public Lcom/nianticproject/ingress/common/scanner/visuals/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/j/h;

.field protected b:Lcom/badlogic/gdx/math/Vector2;

.field protected c:Lcom/badlogic/gdx/math/Vector2;

.field private d:Lcom/badlogic/gdx/graphics/Color;

.field private final e:Lcom/badlogic/gdx/math/Vector2;

.field private final f:Lcom/badlogic/gdx/math/Vector2;

.field private final g:Lcom/badlogic/gdx/math/Vector2;

.field private final h:[Lcom/badlogic/gdx/math/Vector2;

.field private final i:[Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->f:Lcom/badlogic/gdx/math/Vector2;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->g:Lcom/badlogic/gdx/math/Vector2;

    .line 31
    new-array v0, v1, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->h:[Lcom/badlogic/gdx/math/Vector2;

    .line 32
    new-array v0, v1, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->i:[Lcom/badlogic/gdx/math/Vector2;

    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->a:Lcom/nianticproject/ingress/common/j/h;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 40
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public a(F)Z
    .locals 12
    .parameter

    .prologue
    const/high16 v11, 0x3f80

    const/high16 v3, 0x3f00

    const-wide/high16 v9, 0x3ff0

    const-wide v7, 0x3fe921fb54442d18L

    const/4 v6, 0x1

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->d:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->d:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->b:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    mul-float/2addr v1, v3

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x4040

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    mul-float/2addr v2, v3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->g:Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr v2, v3

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    cmpg-float v1, v0, v11

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v2, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double v4, v9, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v11, v0

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->h:[Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->b:Lcom/badlogic/gdx/math/Vector2;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->h:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->f:Lcom/badlogic/gdx/math/Vector2;

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->h:[Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->i:[Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->g:Lcom/badlogic/gdx/math/Vector2;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->i:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->g:Lcom/badlogic/gdx/math/Vector2;

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->i:[Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->g:Lcom/badlogic/gdx/math/Vector2;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->a:Lcom/nianticproject/ingress/common/j/h;

    sget-object v1, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->h:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->i:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;[Lcom/badlogic/gdx/math/Vector2;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 115
    :cond_0
    return v6

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double v4, v9, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v0, v4, v0

    sub-float v0, v3, v0

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->b:Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->c:Lcom/badlogic/gdx/math/Vector2;

    .line 109
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/d;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 110
    return-void
.end method
