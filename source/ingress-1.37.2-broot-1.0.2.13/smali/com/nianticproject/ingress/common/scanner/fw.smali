.class final Lcom/nianticproject/ingress/common/scanner/fw;
.super Lcom/nianticproject/ingress/common/scanner/fj;
.source "SourceFile"


# instance fields
.field protected f:F

.field final synthetic g:Lcom/nianticproject/ingress/common/scanner/fu;

.field private final h:Lcom/badlogic/gdx/math/Matrix4;

.field private final i:Lcom/badlogic/gdx/math/Vector3;

.field private final j:Lcom/nianticproject/ingress/common/j/m;

.field private final k:Lcom/nianticproject/ingress/common/j/m;

.field private final l:Lcom/nianticproject/ingress/common/j/m;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fu;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    .line 344
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/scanner/fj;-><init>(Lcom/nianticproject/ingress/common/scanner/fg;Lcom/nianticproject/ingress/common/j/ai;)V

    .line 290
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->h:Lcom/badlogic/gdx/math/Matrix4;

    .line 291
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 295
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/fx;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/fx;-><init>(Lcom/nianticproject/ingress/common/scanner/fw;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->j:Lcom/nianticproject/ingress/common/j/m;

    .line 311
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/fy;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/fy;-><init>(Lcom/nianticproject/ingress/common/scanner/fw;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->k:Lcom/nianticproject/ingress/common/j/m;

    .line 326
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/fz;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/fz;-><init>(Lcom/nianticproject/ingress/common/scanner/fw;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->l:Lcom/nianticproject/ingress/common/j/m;

    .line 345
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/fw;)V
    .locals 3
    .parameter

    .prologue
    .line 289
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->f:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/fw;)V
    .locals 3
    .parameter

    .prologue
    .line 289
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->f:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/fw;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->h:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/fw;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->i:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f40

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->e(Lcom/nianticproject/ingress/common/scanner/fu;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->f(Lcom/nianticproject/ingress/common/scanner/fu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string/jumbo v0, "ResonatorDrawable requires DeferredRenderer"

    invoke-static {p3, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->m()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->f:F

    .line 371
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->g(Lcom/nianticproject/ingress/common/scanner/fu;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 373
    iput v4, p0, Lcom/nianticproject/ingress/common/scanner/fw;->f:F

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->a:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->h(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/fu;->i(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->j(Lcom/nianticproject/ingress/common/scanner/fu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->k(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/fu;->i(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/fu;->h(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/y;->a(FFF)F

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v0, v0, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 383
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->a()Lcom/nianticproject/ingress/common/j/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->j:Lcom/nianticproject/ingress/common/j/m;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 384
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->d:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->a()Lcom/nianticproject/ingress/common/j/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->k:Lcom/nianticproject/ingress/common/j/m;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 387
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fu;->d(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->h()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 391
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fw;->i:Lcom/badlogic/gdx/math/Vector3;

    iput v3, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 394
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/fu;->d(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x42b4

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v4, v3, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 396
    const/high16 v1, 0x4040

    invoke-virtual {v0, v5, v1, v5}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 397
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 398
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->h:Lcom/badlogic/gdx/math/Matrix4;

    const/high16 v2, -0x3f60

    invoke-virtual {v1, v3, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 399
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->h:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 401
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/fu;->q()Lcom/nianticproject/ingress/common/j/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fw;->l:Lcom/nianticproject/ingress/common/j/m;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    goto/16 :goto_0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method
