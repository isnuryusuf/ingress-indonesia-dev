.class public final Lcom/nianticproject/ingress/common/ui/elements/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private A:Z

.field private B:F

.field private final a:[Lcom/badlogic/gdx/math/Vector3;

.field private final b:[Lcom/badlogic/gdx/math/Vector2;

.field private final c:Lcom/badlogic/gdx/math/Matrix4;

.field private final d:Lcom/badlogic/gdx/math/Vector3;

.field private final e:Lcom/badlogic/gdx/graphics/Color;

.field private final f:Lcom/badlogic/gdx/graphics/Color;

.field private final g:Lcom/badlogic/gdx/graphics/Color;

.field private final h:Lcom/badlogic/gdx/graphics/Color;

.field private final i:Lcom/badlogic/gdx/graphics/Color;

.field private final j:Lcom/badlogic/gdx/graphics/Color;

.field private final k:Lcom/badlogic/gdx/graphics/Color;

.field private final l:Lcom/badlogic/gdx/graphics/Color;

.field private final m:F

.field private final n:F

.field private final o:Lcom/badlogic/gdx/math/Matrix4;

.field private final p:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

.field private final q:Lcom/nianticproject/ingress/common/j/h;

.field private final r:Lcom/badlogic/gdx/math/Vector2;

.field private final s:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private final t:Lcom/badlogic/gdx/math/Vector2;

.field private u:Lcom/nianticproject/ingress/common/ui/elements/bc;

.field private v:Lcom/nianticproject/ingress/common/ui/elements/bc;

.field private w:Lcom/nianticproject/ingress/common/ui/elements/bc;

.field private x:Lcom/nianticproject/ingress/common/ui/elements/bc;

.field private y:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private z:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->d:Lcom/badlogic/gdx/math/Vector3;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e6147ae

    const v2, 0x3ed1eb85

    const v3, 0x3ef5c28f

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->e:Lcom/badlogic/gdx/graphics/Color;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ed1eb85

    const v2, 0x3f4ccccd

    const v3, 0x3f5eb852

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->f:Lcom/badlogic/gdx/graphics/Color;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e6147ae

    const v2, 0x3ed1eb85

    const v3, 0x3ef5c28f

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->g:Lcom/badlogic/gdx/graphics/Color;

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ed1eb85

    const v2, 0x3f4ccccd

    const v3, 0x3f5eb852

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->h:Lcom/badlogic/gdx/graphics/Color;

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e947ae1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->i:Lcom/badlogic/gdx/graphics/Color;

    .line 91
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e947ae1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->j:Lcom/badlogic/gdx/graphics/Color;

    .line 92
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->k:Lcom/badlogic/gdx/graphics/Color;

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->l:Lcom/badlogic/gdx/graphics/Color;

    .line 133
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->B:F

    .line 145
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->r:Lcom/badlogic/gdx/math/Vector2;

    .line 146
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    .line 147
    iput-object p7, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->p:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

    .line 148
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/h;->b()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->s:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 149
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    .line 150
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->n:F

    .line 152
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 153
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 154
    iput-object p6, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 155
    iput-object p5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 158
    const/high16 v0, 0x3f80

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 159
    const/high16 v0, 0x3f80

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 160
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const v3, 0x3e99999a

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/elements/bc;

    const/4 v3, 0x0

    aput-object p3, v0, v3

    const/4 v3, 0x1

    aput-object p4, v0, v3

    const/4 v3, 0x2

    aput-object p5, v0, v3

    const/4 v3, 0x3

    aput-object p6, v0, v3

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->s:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, v0, Lcom/nianticproject/ingress/common/ui/elements/bc;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    .line 164
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    mul-float/2addr v6, v1

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    mul-float/2addr v4, v2

    invoke-direct {v5, v6, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-static {v0, v5}, Lcom/nianticproject/ingress/common/ui/elements/bc;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 166
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 167
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const v2, 0x3c23d70a

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v2, 0x3ca3d70a

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 176
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 177
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sget-object v2, Lcom/nianticproject/ingress/common/w/ao;->a:Lcom/badlogic/gdx/math/Vector3;

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 178
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 179
    const v2, 0x3dcccccd

    const/high16 v3, 0x4000

    const/high16 v4, 0x42b4

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 180
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->o:Lcom/badlogic/gdx/math/Matrix4;

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    const v1, 0x3c75c28f

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    mul-float/2addr v1, v2

    const/16 v2, 0x14

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector3;

    const/4 v3, 0x0

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    sub-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const v6, -0x407e147b

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    sub-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const v6, -0x407e147b

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    sub-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const v6, 0x3c75c28f

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    sub-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const v6, 0x3c75c28f

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    sub-float/2addr v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0x12

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, -0x4100

    mul-float/2addr v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    const/16 v3, 0x13

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, -0x4100

    mul-float/2addr v0, v7

    sub-float/2addr v0, v1

    invoke-direct {v4, v5, v6, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->a:[Lcom/badlogic/gdx/math/Vector3;

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->a:[Lcom/badlogic/gdx/math/Vector3;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->b:[Lcom/badlogic/gdx/math/Vector2;

    .line 186
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->vibrate(I)V

    .line 187
    return-void
.end method

.method private a(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 362
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p3, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 363
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p3, p4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 364
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    .line 366
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    sget-object v1, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 367
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    sget-object v6, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    move-object v7, v4

    move-object v9, v2

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 368
    return-void
.end method

.method private a(Lcom/badlogic/gdx/math/Matrix4;FFLcom/nianticproject/ingress/common/ui/elements/bc;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-static/range {p4 .. p4}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->j:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v1

    .line 434
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->h:Lcom/badlogic/gdx/graphics/Color;

    .line 435
    :goto_1
    move-object/from16 v0, p4

    iget-boolean v1, v0, Lcom/nianticproject/ingress/common/ui/elements/bc;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->k:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v1

    .line 438
    :goto_2
    iget-object v10, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->b:[Lcom/badlogic/gdx/math/Vector2;

    .line 439
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->a:[Lcom/badlogic/gdx/math/Vector3;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 440
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->d:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->a:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 443
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p2, v0}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    aput-object v2, v10, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->i:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v1

    goto :goto_0

    .line 434
    :cond_1
    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->g:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->l:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v1

    goto :goto_2

    .line 447
    :cond_3
    const/4 v1, 0x0

    aget-object v1, v10, v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v2, 0x1

    aget-object v2, v10, v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    const/4 v2, 0x3

    aget-object v2, v10, v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float v11, v1, v2

    .line 448
    const/4 v1, 0x0

    aget-object v1, v10, v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x1

    aget-object v2, v10, v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    const/4 v2, 0x3

    aget-object v2, v10, v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float v12, v1, v2

    .line 451
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    sget-object v2, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    const/4 v5, 0x2

    aget-object v5, v10, v5

    invoke-virtual/range {v1 .. v6}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 452
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    sget-object v2, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual/range {v1 .. v6}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 455
    const/4 v1, 0x4

    move v9, v1

    :goto_4
    array-length v1, v10

    if-ge v9, v1, :cond_4

    .line 456
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    sget-object v2, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    add-int/lit8 v3, v9, 0x0

    aget-object v3, v10, v3

    add-int/lit8 v4, v9, 0x1

    aget-object v4, v10, v4

    add-int/lit8 v5, v9, 0x2

    aget-object v5, v10, v5

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 457
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    sget-object v2, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    add-int/lit8 v3, v9, 0x2

    aget-object v3, v10, v3

    add-int/lit8 v4, v9, 0x3

    aget-object v4, v10, v4

    add-int/lit8 v5, v9, 0x0

    aget-object v5, v10, v5

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 455
    add-int/lit8 v1, v9, 0x4

    move v9, v1

    goto :goto_4

    .line 460
    :cond_4
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    const v2, 0x3ef6872b

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 461
    invoke-static/range {p4 .. p4}, Lcom/nianticproject/ingress/common/ui/elements/bc;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    sub-float v4, v11, v1

    .line 462
    invoke-static/range {p4 .. p4}, Lcom/nianticproject/ingress/common/ui/elements/bc;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    sub-float v5, v12, v1

    .line 463
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->q:Lcom/nianticproject/ingress/common/j/h;

    sget-object v2, Lcom/nianticproject/ingress/common/j/l;->b:Lcom/nianticproject/ingress/common/j/l;

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->s:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/nianticproject/ingress/common/ui/elements/bc;->a:Ljava/lang/String;

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V

    .line 465
    :cond_5
    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/common/ui/elements/bc;FDDD)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    if-eqz p0, :cond_1

    .line 470
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->c:Z

    if-eqz v0, :cond_2

    const v0, 0x3d0f5c29

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    move-wide v0, p4

    move-wide v2, p6

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(DDD)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x401921fb54442d18L

    add-double v4, p2, v0

    move-wide v0, p4

    move-wide v2, p6

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(DDD)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 476
    :goto_0
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 477
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;Z)Z

    .line 480
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->vibrate(I)V

    .line 483
    :cond_1
    return-void

    .line 470
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(DDD)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    cmpg-double v0, p0, p4

    if-gtz v0, :cond_0

    cmpl-double v0, p2, p4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    .line 238
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ba;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/ba;-><init>(Lcom/nianticproject/ingress/common/ui/elements/az;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/elements/bb;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/ui/elements/bb;-><init>(Lcom/nianticproject/ingress/common/ui/elements/az;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 255
    return-void
.end method

.method public final a(F)Z
    .locals 10
    .parameter

    .prologue
    .line 260
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->A:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    move v9, v0

    .line 261
    :goto_0
    if-nez v9, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->A:Z

    if-eqz v0, :cond_12

    .line 262
    :cond_0
    if-eqz v9, :cond_1

    .line 263
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 266
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 267
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 270
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v1

    .line 271
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    .line 272
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v2, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 273
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1c

    .line 274
    const v2, 0x40c90fdb

    add-float/2addr v0, v2

    move v8, v0

    .line 278
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    float-to-double v2, v8

    const-wide v4, 0x3fe921fb54442d18L

    const-wide v6, 0x4002d97c7f3321d2L

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;FDDD)V

    .line 279
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    float-to-double v2, v8

    const-wide v4, 0x4002d97c7f3321d2L

    const-wide v6, 0x400f6a7a2955385eL

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;FDDD)V

    .line 280
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    float-to-double v2, v8

    const-wide v4, 0x400f6a7a2955385eL

    const-wide v6, 0x4015fdbbe9bba775L

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;FDDD)V

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    float-to-double v2, v8

    const-wide v4, 0x4015fdbbe9bba775L

    const-wide v6, 0x401c463abeccb2bbL

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/nianticproject/ingress/common/ui/elements/bc;FDDD)V

    .line 285
    :cond_1
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->A:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->B:F

    const/high16 v1, 0x3f00

    div-float/2addr v0, v1

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    move v6, v0

    .line 286
    :goto_2
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_9

    .line 287
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    const v1, 0x3e19999a

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->e:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3e80

    const/high16 v2, 0x3f00

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->f:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->e:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_2

    const v1, -0x42f0a3d7

    const v2, 0x3b23d70a

    const v0, -0x42f0a3d7

    const v3, -0x42147ae0

    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    const v4, -0x44dc28f6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->f:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_3

    const v1, 0x3d0f5c29

    const v2, 0x3b23d70a

    const v0, 0x3d0f5c29

    const v3, 0x3deb8520

    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    const v4, -0x44dc28f6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->f:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    const v0, 0x3b23d70a

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->n:F

    mul-float v3, v0, v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_4

    neg-float v1, v3

    const v0, 0x3d0f5c29

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    mul-float/2addr v2, v0

    const v0, 0x3d0f5c29

    const v4, 0x3e28f5c3

    mul-float/2addr v4, v7

    add-float/2addr v0, v4

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    mul-float/2addr v4, v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->f:Lcom/badlogic/gdx/graphics/Color;

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_5

    neg-float v1, v3

    const v0, -0x42f0a3d7

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    mul-float/2addr v2, v0

    const v0, -0x42f0a3d7

    const v4, -0x41d70a3d

    mul-float/2addr v4, v7

    add-float/2addr v0, v4

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    mul-float/2addr v4, v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->f:Lcom/badlogic/gdx/graphics/Color;

    :goto_6
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 289
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    const v1, 0x3e0a3d71

    cmpg-float v0, v0, v1

    if-lez v0, :cond_9

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    const v1, 0x3ef6872b

    sub-float/2addr v0, v1

    const v1, 0x3ecccccd

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    const v2, 0x3e0a3d71

    sub-float/2addr v1, v2

    const v2, 0x3eccccce

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->g:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3e80

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->h:Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->g:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->i:Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->g:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->j:Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->i:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->k:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    mul-float/2addr v0, v6

    iput v0, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->l:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->o:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x42b4

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x4334

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    const v2, -0x41e66666

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/badlogic/gdx/math/Matrix4;FFLcom/nianticproject/ingress/common/ui/elements/bc;)V

    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->o:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x4334

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x42b4

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x4334

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    const v2, 0x3e19999a

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/badlogic/gdx/math/Matrix4;FFLcom/nianticproject/ingress/common/ui/elements/bc;)V

    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->o:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4334

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42b4

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v2, -0x4100

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x3d4c

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x42b4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, 0x0

    const v3, 0x3e4ccccd

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/badlogic/gdx/math/Matrix4;FFLcom/nianticproject/ingress/common/ui/elements/bc;)V

    :cond_8
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->o:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4334

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x3d4c

    mul-float/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v2, -0x4100

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42b4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x42b4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->c:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, 0x0

    const v3, -0x41b33333

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->m:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->t:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/nianticproject/ingress/common/ui/elements/az;->a(Lcom/badlogic/gdx/math/Matrix4;FFLcom/nianticproject/ingress/common/ui/elements/bc;)V

    .line 292
    :cond_9
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->z:F

    .line 293
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->B:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->B:F

    .line 309
    :cond_a
    :goto_7
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->A:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->B:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    move v1, v0

    .line 310
    :goto_8
    if-eqz v1, :cond_19

    .line 311
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/elements/bc;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 312
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/elements/bc;->b:Ljava/lang/Runnable;

    if-eqz v3, :cond_b

    .line 313
    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/bc;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    .line 260
    :cond_c
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_0

    .line 285
    :cond_d
    const/high16 v0, 0x3f80

    move v6, v0

    goto/16 :goto_2

    .line 287
    :cond_e
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->e:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_f
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->e:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_4

    :cond_10
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->e:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_5

    :cond_11
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->e:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_6

    .line 294
    :cond_12
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->A:Z

    if-nez v0, :cond_a

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 297
    :cond_13
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 298
    :cond_14
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 299
    :cond_15
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/bc;->b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    .line 302
    :cond_16
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->u:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->v:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->w:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->x:Lcom/nianticproject/ingress/common/ui/elements/bc;

    if-eqz v0, :cond_a

    .line 303
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->A:Z

    .line 304
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->B:F

    goto/16 :goto_7

    .line 309
    :cond_18
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_8

    .line 318
    :cond_19
    if-nez v9, :cond_1a

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->A:Z

    if-eqz v0, :cond_1b

    if-nez v1, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_a

    :cond_1c
    move v8, v0

    goto/16 :goto_1
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->remove()Z

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->p:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/az;->p:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->a()V

    .line 497
    :cond_1
    return-void
.end method
