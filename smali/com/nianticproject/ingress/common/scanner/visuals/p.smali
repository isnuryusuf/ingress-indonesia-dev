.class public final Lcom/nianticproject/ingress/common/scanner/visuals/p;
.super Lcom/nianticproject/ingress/common/j/q;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field public static e:Z

.field private static final f:F


# instance fields
.field private g:Lcom/nianticproject/ingress/common/scanner/k;

.field private final h:Lcom/nianticproject/ingress/common/gameentity/e;

.field private final i:Lcom/nianticproject/ingress/common/scanner/eo;

.field private final j:Lcom/nianticproject/ingress/common/scanner/eo;

.field private k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

.field private l:F

.field private m:Lcom/badlogic/gdx/math/Matrix4;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:Lcom/badlogic/gdx/math/Vector3;

.field private t:Lcom/badlogic/gdx/math/Vector3;

.field private u:Lcom/badlogic/gdx/math/Vector3;

.field private v:F

.field private w:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->e:Z

    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;-><init>(F)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->c()F

    move-result v0

    const v1, 0x3d4ccccd

    sub-float/2addr v0, v1

    sput v0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->f:F

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/gameentity/e;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/eo;F)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    .line 108
    iput v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    .line 109
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->m:Lcom/badlogic/gdx/math/Matrix4;

    .line 115
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v4, v1, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->s:Lcom/badlogic/gdx/math/Vector3;

    .line 116
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v4, v4, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->t:Lcom/badlogic/gdx/math/Vector3;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v4, v4, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->u:Lcom/badlogic/gdx/math/Vector3;

    .line 120
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->a()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->w:F

    .line 131
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->r:F

    .line 132
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->g:Lcom/nianticproject/ingress/common/scanner/k;

    .line 133
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/gameentity/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->h:Lcom/nianticproject/ingress/common/gameentity/e;

    .line 134
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->j:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 135
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->i:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 138
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->a:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    iget v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->e:F

    sub-float/2addr v0, p5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    .line 139
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->v:F

    .line 141
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/p;->d()V

    .line 142
    return-void
.end method

.method static synthetic c()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->f:F

    return v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    if-nez v0, :cond_1

    .line 150
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/r;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 157
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/q;->a:[I

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 171
    :goto_1
    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 175
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->b()Lcom/nianticproject/ingress/common/scanner/visuals/r;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    goto :goto_0

    .line 159
    :pswitch_0
    new-instance v0, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    new-array v1, v4, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->I:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->a:Lcom/nianticproject/ingress/common/c/bq;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bq;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    goto :goto_1

    .line 165
    :pswitch_1
    new-instance v0, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    new-array v1, v4, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->k:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->a:Lcom/nianticproject/ingress/common/c/bq;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bq;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->j:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->i:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->u:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v4, 0x0

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 261
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->t:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->n:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->u:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->p:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 263
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->m:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->s:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->q:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->r:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->o:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->o:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->o:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->h:Lcom/nianticproject/ingress/common/gameentity/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, p2}, Lcom/nianticproject/ingress/common/gameentity/e;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;)V

    .line 268
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->c:Lcom/nianticproject/ingress/common/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->h:Lcom/nianticproject/ingress/common/gameentity/e;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 269
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x4158

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 203
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(F)Z

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    if-nez v0, :cond_0

    move v0, v3

    .line 251
    :goto_0
    return v0

    .line 208
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/q;->a:[I

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    .line 239
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->v:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->v:F

    .line 240
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->v:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/r;->e:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 241
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->v:F

    .line 242
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/p;->d()V

    .line 246
    :cond_1
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    if-nez v0, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/p;->d()V

    .line 248
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->k:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :pswitch_1
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->n:F

    .line 211
    iput v8, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->o:F

    .line 212
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->q:F

    goto :goto_1

    .line 220
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/r;->d:Lcom/nianticproject/ingress/common/scanner/visuals/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->b()Lcom/nianticproject/ingress/common/scanner/visuals/r;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->c()F

    move-result v5

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/r;->c()F

    move-result v0

    :goto_2
    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move v0, v1

    .line 221
    :goto_3
    float-to-double v4, v0

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 223
    iput v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->p:F

    .line 224
    sub-float v5, v2, v4

    mul-float/2addr v5, v8

    iput v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->o:F

    .line 225
    const/high16 v5, 0x447a

    mul-float/2addr v5, v4

    iput v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->q:F

    .line 227
    float-to-double v5, v0

    const-wide/high16 v7, 0x3fe0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    .line 228
    mul-float/2addr v4, v2

    .line 229
    const v5, 0x3e19999a

    mul-float/2addr v0, v5

    .line 230
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->s:Lcom/badlogic/gdx/math/Vector3;

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v0, v4

    invoke-virtual {v5, v6, v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    goto/16 :goto_1

    .line 220
    :cond_3
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->w:F

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/p;->l:F

    sub-float/2addr v4, v5

    sub-float/2addr v0, v5

    div-float v0, v4, v0

    goto :goto_3

    :cond_6
    move v0, v3

    .line 251
    goto/16 :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method
