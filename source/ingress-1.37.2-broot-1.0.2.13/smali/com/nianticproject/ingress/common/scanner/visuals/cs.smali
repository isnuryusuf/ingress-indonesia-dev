.class public Lcom/nianticproject/ingress/common/scanner/visuals/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/scanner/ed;

.field protected b:Z

.field protected c:D

.field protected d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field protected e:Lcom/nianticproject/ingress/common/ui/widget/f;

.field protected f:Lcom/nianticproject/ingress/common/ui/widget/f;

.field private final g:Lcom/nianticproject/ingress/common/j/h;

.field private final h:Ljava/lang/String;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/ed;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 177
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 178
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 179
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 186
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->g:Lcom/nianticproject/ingress/common/j/h;

    .line 187
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->c:D

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->b:Z

    .line 190
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->h:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private a(D)V
    .locals 4
    .parameter

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->c:D

    sub-double v0, p1, v0

    .line 310
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 311
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->c:D

    .line 312
    double-to-float v0, p1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/l;->a(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getSpaceWidth()F

    move-result v0

    float-to-int v0, v0

    .line 322
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(I)V

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 288
    const/high16 v0, 0x42f0

    return v0
.end method

.method protected a(FFFFFFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->getWidth()F

    move-result v1

    add-float/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setX(F)V

    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, p4}, Lcom/nianticproject/ingress/common/ui/widget/f;->setY(F)V

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->getWidth()F

    move-result v1

    sub-float v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setX(F)V

    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, p4}, Lcom/nianticproject/ingress/common/ui/widget/f;->setY(F)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 2
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 332
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 333
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->pack()V

    .line 335
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 337
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->pack()V

    .line 338
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->d()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(D)V

    .line 202
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, v3, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, v3, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 204
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v1

    const v2, 0x39cccccd

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 205
    iput v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 208
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    .line 211
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a()F

    move-result v2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 213
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a()F

    move-result v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 218
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->c()F

    move-result v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    mul-float v5, v0, v3

    .line 219
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->b()F

    move-result v0

    sub-float v0, v4, v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->getWidth()F

    move-result v3

    sub-float v6, v0, v3

    .line 220
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e()F

    move-result v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    mul-float v7, v0, v3

    .line 221
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d()F

    move-result v0

    sub-float v0, v4, v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v3

    sub-float v8, v0, v3

    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->getWidth()F

    move-result v0

    div-float/2addr v0, v9

    sub-float v0, v1, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 224
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v3

    div-float/2addr v3, v9

    sub-float v3, v2, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 225
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 226
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 227
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->setX(F)V

    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/f;->setY(F)V

    move-object v0, p0

    .line 229
    invoke-virtual/range {v0 .. v8}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(FFFFFFFF)V

    .line 232
    invoke-virtual {p0, p1, v3, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(Lcom/badlogic/gdx/math/Vector2;FF)V

    .line 234
    :cond_1
    return-void
.end method

.method protected a(Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 259
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 264
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v2, p3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 267
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/high16 v2, 0x42b4

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/high16 v2, 0x4040

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 275
    new-array v2, v6, [Lcom/badlogic/gdx/math/Vector2;

    aput-object p1, v2, v4

    aput-object v0, v2, v5

    .line 279
    new-array v0, v6, [Lcom/badlogic/gdx/math/Vector2;

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    .line 284
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->g:Lcom/nianticproject/ingress/common/j/h;

    sget-object v3, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->d()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;[Lcom/badlogic/gdx/math/Vector2;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 285
    return-void
.end method

.method public a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 359
    const-string/jumbo v0, "player-compass"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 360
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getSpaceWidth()F

    move-result v1

    float-to-int v1, v1

    .line 362
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 363
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 366
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/ct;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/ct;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/cs;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 373
    const-string/jumbo v0, "player-compass-clear"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 375
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 376
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setVisible(Z)V

    .line 379
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/cu;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cu;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/cs;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 385
    const-string/jumbo v0, "nav-beacon"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 387
    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 389
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 390
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 395
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->d()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(D)V

    .line 396
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setText(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public final a(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 293
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toBack()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->b:Z

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/ed;->a(F)V

    .line 299
    :cond_2
    :goto_1
    return v3

    .line 297
    :cond_3
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    goto :goto_2

    :cond_4
    iput-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->b:Z

    goto :goto_1
.end method

.method protected b()F
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method protected c()F
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method protected d()F
    .locals 1

    .prologue
    .line 349
    const v0, 0x3dcccccd

    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 402
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    goto :goto_0

    .line 404
    :cond_0
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 406
    :cond_1
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 407
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 408
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 409
    return-void
.end method

.method protected e()F
    .locals 1

    .prologue
    .line 353
    const v0, 0x3d75c28f

    return v0
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->setVisible(Z)V

    .line 418
    :cond_0
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v0, v1, v2}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->b()V

    .line 442
    return-void
.end method
