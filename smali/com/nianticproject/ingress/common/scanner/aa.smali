.class final Lcom/nianticproject/ingress/common/scanner/aa;
.super Lcom/nianticproject/ingress/common/ui/d/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/aa;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/aa;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    return-void
.end method


# virtual methods
.method public final tap(FFIII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1336
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 1337
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 1338
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/aa;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1, p1, p2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(FFLcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    .line 1339
    if-eqz v1, :cond_1

    .line 1340
    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    .line 1348
    instance-of v0, v1, Lcom/nianticproject/ingress/common/scanner/fk;

    if-eqz v0, :cond_0

    .line 1351
    invoke-static {}, Lcom/nianticproject/ingress/common/ag;->a()Lcom/nianticproject/ingress/common/ag;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/ag;->b(FF)V

    .line 1363
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/aa;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->l(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/e/b;->a(Lcom/nianticproject/ingress/common/scanner/ej;)Z

    move-result v0

    .line 1365
    :goto_1
    return v0

    .line 1356
    :cond_1
    new-instance v2, Lcom/nianticproject/ingress/common/j/q;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    .line 1357
    new-instance v3, Lcom/nianticproject/ingress/common/scanner/a;

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/ag;->v:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/a;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/j/q;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1359
    new-instance v3, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v5, 0x0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1361
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/aa;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->k(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ft;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    goto :goto_0

    .line 1365
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
