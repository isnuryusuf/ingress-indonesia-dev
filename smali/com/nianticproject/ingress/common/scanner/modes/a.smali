.class public abstract Lcom/nianticproject/ingress/common/scanner/modes/a;
.super Lcom/nianticproject/ingress/common/ui/d/e;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/modes/j;
.implements Lcom/nianticproject/ingress/common/ui/e/a;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/scanner/k;

.field protected final b:Lcom/nianticproject/ingress/common/model/k;

.field c:Lcom/nianticproject/ingress/common/model/GameState;

.field private final f:Lcom/nianticproject/ingress/common/h/l;

.field private final g:Lcom/nianticproject/ingress/common/j/h;

.field private final h:Lcom/nianticproject/ingress/common/j/ar;

.field private final i:Lcom/nianticproject/ingress/common/scanner/ed;

.field private j:F

.field private k:F

.field private l:Lcom/nianticproject/ingress/common/j/as;

.field private final m:Lcom/nianticproject/ingress/common/scanner/modes/g;

.field private n:Lcom/nianticproject/ingress/common/ui/elements/az;

.field private o:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/e;-><init>()V

    .line 84
    const v0, 0x3ea3d70a

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->o:F

    .line 90
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    .line 91
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->g:Lcom/nianticproject/ingress/common/j/h;

    .line 92
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    .line 93
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/h/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->f:Lcom/nianticproject/ingress/common/h/l;

    .line 94
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ed;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->i:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 95
    invoke-static {p6}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/modes/g;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->m:Lcom/nianticproject/ingress/common/scanner/modes/g;

    .line 96
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    .line 99
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/b;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/b;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->h:Lcom/nianticproject/ingress/common/j/ar;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/a;)Lcom/nianticproject/ingress/common/scanner/modes/g;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->m:Lcom/nianticproject/ingress/common/scanner/modes/g;

    return-object v0
.end method

.method private static d(F)F
    .locals 2
    .parameter

    .prologue
    .line 383
    const/high16 v0, 0x4040

    const v1, 0x3e99999a

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/ap;)Lcom/nianticproject/ingress/common/j/ap;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 113
    const v0, 0x3fc90fdb

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/k;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v0

    :goto_0
    add-float/2addr v0, v2

    .line 115
    const v2, 0x3f333333

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    mul-float/2addr v2, v3

    const v3, 0x43898000

    mul-float/2addr v2, v3

    .line 116
    sget v3, Lcom/nianticproject/ingress/common/scanner/modes/a;->d:F

    mul-float/2addr v3, v2

    .line 117
    neg-float v2, v2

    sget v4, Lcom/nianticproject/ingress/common/scanner/modes/a;->e:F

    mul-float/2addr v2, v4

    .line 119
    iget-object v4, p1, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v0, v2

    invoke-virtual {v4, v5, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 123
    iget-object v0, p1, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->o:F

    neg-float v2, v2

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->o:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/badlogic/gdx/math/Vector3;->scale(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 125
    const/high16 v0, 0x4220

    iput v0, p1, Lcom/nianticproject/ingress/common/j/ap;->a:F

    .line 126
    const/high16 v0, 0x4170

    iput v0, p1, Lcom/nianticproject/ingress/common/j/ap;->b:F

    .line 127
    const/high16 v0, 0x4500

    iput v0, p1, Lcom/nianticproject/ingress/common/j/ap;->c:F

    .line 129
    return-object p1

    :cond_0
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    const/high16 v0, 0x3f40

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->a(Lcom/nianticproject/ingress/common/j/as;F)V

    .line 135
    return-void
.end method

.method protected final a(Lcom/nianticproject/ingress/common/j/as;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->l:Lcom/nianticproject/ingress/common/j/as;

    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->h:Lcom/nianticproject/ingress/common/j/ar;

    invoke-virtual {p1, v0, p2}, Lcom/nianticproject/ingress/common/j/as;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    .line 140
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/GameState;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->c:Lcom/nianticproject/ingress/common/model/GameState;

    .line 175
    return-void
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public final a(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 344
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    div-float/2addr v0, p1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->d(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    .line 345
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    .line 346
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->m:Lcom/nianticproject/ingress/common/scanner/modes/g;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/modes/g;->a()V

    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public final a(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/high16 v2, 0x4000

    const/high16 v3, 0x3f40

    .line 352
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 353
    packed-switch p2, :pswitch_data_0

    .line 364
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 355
    :pswitch_0
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->d(F)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    .line 356
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->l:Lcom/nianticproject/ingress/common/j/as;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->h:Lcom/nianticproject/ingress/common/j/ar;

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/j/as;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    goto :goto_0

    .line 359
    :pswitch_1
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->d(F)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    .line 360
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->l:Lcom/nianticproject/ingress/common/j/as;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->h:Lcom/nianticproject/ingress/common/j/ar;

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/j/as;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 148
    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 152
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 154
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->m:Lcom/nianticproject/ingress/common/scanner/modes/g;

    invoke-interface {v1, p1}, Lcom/nianticproject/ingress/common/scanner/modes/g;->a(Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 164
    :goto_0
    return v0

    .line 157
    :cond_0
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 159
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->m:Lcom/nianticproject/ingress/common/scanner/modes/g;

    invoke-interface {v1, p1}, Lcom/nianticproject/ingress/common/scanner/modes/g;->b(Lcom/nianticproject/ingress/common/scanner/ej;)V

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 2
    .parameter

    .prologue
    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->m:Lcom/nianticproject/ingress/common/scanner/modes/g;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/modes/g;->a()V

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final b(F)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    .line 388
    return-void
.end method

.method protected abstract c()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/modes/h;",
            ">;"
        }
    .end annotation
.end method

.method public final c(F)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    .line 404
    return-void
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    return v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->k:F

    .line 396
    return-void
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->j:F

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 411
    const v0, -0x42333333

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->o:F

    .line 412
    return-void
.end method

.method public longPress(FF)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->c()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->n:Lcom/nianticproject/ingress/common/ui/elements/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->n:Lcom/nianticproject/ingress/common/ui/elements/az;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->n:Lcom/nianticproject/ingress/common/ui/elements/az;

    :cond_2
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/modes/h;->b:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/c;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/modes/c;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/a;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/bd;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/google/a/a/ba;)Lcom/nianticproject/ingress/common/ui/elements/bc;

    move-result-object v3

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1, p1, p2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(FFLcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    new-instance v7, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->g:Lcom/nianticproject/ingress/common/j/h;

    invoke-direct {v7, v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;-><init>(Lcom/nianticproject/ingress/common/j/h;)V

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->b()Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    move-result-object v0

    iget v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultCaliperRadius:F

    const/high16 v9, 0x4000

    mul-float/2addr v1, v9

    iput v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultCaliperRadius:F

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->b()Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    move-result-object v0

    iget v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedCaliperRadius:F

    const/high16 v9, 0x3f80

    mul-float/2addr v1, v9

    iput v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedCaliperRadius:F

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->b()Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    move-result-object v0

    iget v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerWidth:F

    const/high16 v9, 0x3fc0

    mul-float/2addr v1, v9

    iput v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerWidth:F

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->b()Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->markerSlices:I

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->a(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v5, v7}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/ui/hud/b;)V

    invoke-interface {v5}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v9

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v9, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v9, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v1, :cond_c

    sget-object v10, Lcom/nianticproject/ingress/common/scanner/modes/h;->e:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->f:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {v10}, Lcom/nianticproject/ingress/common/h/l;->c()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->f:Lcom/nianticproject/ingress/common/h/l;

    new-instance v11, Lcom/nianticproject/ingress/common/scanner/modes/d;

    invoke-direct {v11, p0, v9}, Lcom/nianticproject/ingress/common/scanner/modes/d;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/a;Lcom/nianticproject/ingress/gameentity/f;)V

    invoke-static {v9, v2, v10, v11}, Lcom/nianticproject/ingress/common/ui/elements/bd;->b(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Ljava/lang/Runnable;)Lcom/nianticproject/ingress/common/ui/elements/bc;

    move-result-object v2

    :cond_4
    sget-object v10, Lcom/nianticproject/ingress/common/scanner/modes/h;->a:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->f:Lcom/nianticproject/ingress/common/h/l;

    new-instance v11, Lcom/nianticproject/ingress/common/scanner/modes/e;

    invoke-direct {v11, p0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/e;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/a;Lcom/nianticproject/ingress/gameentity/components/Portal;)V

    invoke-static {v9, v4, v10, v11}, Lcom/nianticproject/ingress/common/ui/elements/bd;->c(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Ljava/lang/Runnable;)Lcom/nianticproject/ingress/common/ui/elements/bc;

    move-result-object v4

    :cond_5
    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v10}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v10}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/gameentity/components/Portal;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v10, Lcom/nianticproject/ingress/common/scanner/modes/h;->f:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->f:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {v10}, Lcom/nianticproject/ingress/common/h/l;->d()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->b:Lcom/nianticproject/ingress/common/model/k;

    iget-object v10, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->f:Lcom/nianticproject/ingress/common/h/l;

    new-instance v11, Lcom/nianticproject/ingress/common/scanner/modes/f;

    invoke-direct {v11, p0, v5}, Lcom/nianticproject/ingress/common/scanner/modes/f;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/a;Lcom/nianticproject/ingress/common/scanner/ej;)V

    invoke-static {v9, v6, v10, v11}, Lcom/nianticproject/ingress/common/ui/elements/bd;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Ljava/lang/Runnable;)Lcom/nianticproject/ingress/common/ui/elements/bc;

    move-result-object v6

    move-object v5, v2

    move-object v2, v6

    :goto_1
    if-nez v2, :cond_a

    if-eqz v0, :cond_a

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/modes/h;->d:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v9, v0}, Lcom/nianticproject/ingress/common/ui/elements/bd;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ui/elements/bc;

    move-result-object v0

    :goto_2
    move-object v6, v0

    move-object v0, v4

    move-object v4, v5

    :goto_3
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->d()Z

    move-result v2

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/g/p;->G()Z

    move-result v5

    if-eqz v2, :cond_8

    if-nez v5, :cond_8

    if-nez v1, :cond_8

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/modes/h;->c:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/k;->a(FF)Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->p()Lcom/nianticproject/ingress/common/ac;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/bd;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/common/ac;)Lcom/nianticproject/ingress/common/ui/elements/bc;

    move-result-object v0

    move-object v5, v0

    :goto_4
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v2, 0x3f80

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, p2, v8

    sub-float/2addr v2, v8

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/az;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->g:Lcom/nianticproject/ingress/common/j/h;

    invoke-static {}, La;->ac()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v3

    move-object v3, v6

    move-object v6, v11

    :cond_6
    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/ui/elements/az;-><init>(Lcom/badlogic/gdx/math/Vector2;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->n:Lcom/nianticproject/ingress/common/ui/elements/az;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->n:Lcom/nianticproject/ingress/common/ui/elements/az;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/modes/h;->d:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/a;->i:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-static {v0, v5}, Lcom/nianticproject/ingress/common/ui/elements/bd;->a(Lcom/badlogic/gdx/math/Vector2;Lcom/nianticproject/ingress/common/scanner/ed;)Lcom/nianticproject/ingress/common/ui/elements/bc;

    move-result-object v6

    move-object v0, v4

    move-object v4, v2

    goto :goto_3

    :cond_8
    move-object v5, v0

    goto :goto_4

    :cond_9
    move-object v0, v4

    move-object v4, v2

    goto/16 :goto_3

    :cond_a
    move-object v0, v2

    goto/16 :goto_2

    :cond_b
    move-object v5, v2

    move-object v2, v6

    goto/16 :goto_1

    :cond_c
    move-object v5, v2

    move-object v2, v6

    goto/16 :goto_1
.end method

.method public touchDown(FFI)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/d/e;->touchDown(FFI)Z

    move-result v0

    return v0
.end method
