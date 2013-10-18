.class public final Lcom/nianticproject/ingress/common/scanner/visuals/a/a;
.super Lcom/nianticproject/ingress/common/scanner/visuals/a/k;
.source "SourceFile"


# static fields
.field private static final u:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

.field private static final v:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

.field private static final w:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;


# instance fields
.field private A:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

.field private final a:Lcom/badlogic/gdx/math/Matrix4;

.field private final b:Lcom/badlogic/gdx/math/Matrix4;

.field private final c:F

.field private d:Lcom/badlogic/gdx/graphics/Color;

.field private e:Lcom/badlogic/gdx/graphics/Color;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private final j:Lcom/badlogic/gdx/math/Vector3;

.field private final k:Lcom/badlogic/gdx/math/Vector3;

.field private l:Z

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:J

.field private final x:Lcom/nianticproject/ingress/common/j/m;

.field private final y:Lcom/nianticproject/ingress/common/j/m;

.field private final z:Lcom/nianticproject/ingress/common/j/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->a:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/a/f;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->u:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    .line 159
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/a/f;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->v:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    .line 161
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->c:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/a/f;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->w:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 250
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->a:Lcom/badlogic/gdx/math/Matrix4;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->b:Lcom/badlogic/gdx/math/Matrix4;

    .line 48
    const-wide v0, 0x4056800000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->c:F

    .line 54
    iput v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->h:F

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->j:Lcom/badlogic/gdx/math/Vector3;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->k:Lcom/badlogic/gdx/math/Vector3;

    .line 75
    iput-boolean v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->l:Z

    .line 76
    iput-boolean v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->m:Z

    .line 77
    iput v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    .line 78
    const/high16 v0, -0x4100

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->o:F

    .line 79
    iput v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->p:F

    .line 80
    iput v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    .line 81
    iput v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->r:F

    .line 164
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->x:Lcom/nianticproject/ingress/common/j/m;

    .line 165
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/g;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/g;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->y:Lcom/nianticproject/ingress/common/j/m;

    .line 166
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/c;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->z:Lcom/nianticproject/ingress/common/j/m;

    .line 251
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x4110

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g:F

    .line 252
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->x:Lcom/nianticproject/ingress/common/j/ai;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v3, 0x4120

    invoke-direct {v2, v4, v3, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const v3, 0x3f6e147b

    const v4, 0x3de147ae

    const v5, 0x3e0f5c29

    const v6, 0x3e99999a

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/math/Vector3;FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->A:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g:F

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->f:F

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->h:F

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->i:F

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->b:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->e:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->j:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->p:F

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->s:J

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->t:J

    .line 353
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->t:J

    const-wide/16 v2, 0x6

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x4208

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->i:F

    .line 355
    const/high16 v0, 0x4110

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->i:F

    const/high16 v2, -0x3fc0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->f:F

    .line 356
    return-void
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->r:F

    return v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->k:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->o:F

    return v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->e()F

    move-result v0

    .line 361
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->l:Z

    if-eqz v1, :cond_0

    .line 363
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->l:Z

    .line 364
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->c:F

    invoke-virtual {v1, v3, v4, v3, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    .line 369
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->j:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 375
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->p:F

    .line 377
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->k:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->j:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 378
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->j:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->k:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->c:F

    invoke-virtual {v1, v3, v4, v3, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 392
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->m:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->w:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->w:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->z:Lcom/nianticproject/ingress/common/j/m;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 400
    :goto_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->m:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->A:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 403
    :cond_1
    return-void

    .line 394
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->v:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/e;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->v:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->y:Lcom/nianticproject/ingress/common/j/m;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    goto :goto_0

    .line 397
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->u:Lcom/nianticproject/ingress/common/scanner/visuals/a/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->x:Lcom/nianticproject/ingress/common/j/m;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 433
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->p:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->j:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x3f00

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->l:Z

    .line 434
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-static {p2}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 413
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->e:Lcom/badlogic/gdx/graphics/Color;

    .line 415
    if-nez p1, :cond_1

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->s:J

    .line 421
    :goto_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    :cond_0
    :goto_1
    return-void

    .line 418
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/m;->b:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->j()Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->s:J

    goto :goto_0

    .line 424
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->s:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->t:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 425
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    goto :goto_1

    .line 427
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->h()V

    goto :goto_1
.end method

.method public final a(F)Z
    .locals 11
    .parameter

    .prologue
    const-wide v3, 0x400921fb54442d18L

    const-wide/16 v9, 0x0

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 278
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->f:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 279
    neg-float v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g:F

    .line 280
    const/high16 v0, 0x3e80

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f40

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->h:F

    .line 283
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g:F

    .line 286
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    .line 287
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    .line 288
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->m:Z

    .line 291
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->ai:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->m:Z

    if-eqz v0, :cond_3

    .line 297
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->o:F

    const v1, 0x3f333333

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->o:F

    .line 300
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->o:F

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double/2addr v0, v3

    double-to-float v0, v0

    .line 302
    mul-float/2addr v0, v6

    sub-float/2addr v0, v8

    .line 304
    float-to-double v1, v0

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v8, v1

    .line 305
    float-to-double v2, v0

    const-wide/high16 v4, 0x4018

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v8, v0

    .line 306
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->A:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    const/high16 v3, 0x4020

    mul-float/2addr v1, v8

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;->b(F)V

    .line 307
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->A:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    const v2, 0x3e99999a

    mul-float/2addr v0, v2

    add-float/2addr v0, v7

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;->c(F)V

    .line 309
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->o:F

    const v1, 0x40690fdb

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 311
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 312
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 315
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->m:Z

    .line 316
    iput v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    .line 317
    const/high16 v0, -0x4100

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->o:F

    .line 318
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->c()V

    .line 319
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->h()V

    .line 324
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    iput v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    .line 329
    :cond_4
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    .line 330
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    sub-float v0, v6, v0

    div-float/2addr v0, v6

    .line 333
    mul-float/2addr v0, v0

    sub-float v0, v8, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->r:F

    .line 334
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->r:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->r:F

    .line 335
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->q:F

    .line 337
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->l:Z

    if-nez v0, :cond_5

    .line 338
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->p:F

    mul-float v1, p1, v6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->p:F

    .line 343
    :cond_5
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 344
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->r:F

    float-to-double v0, v0

    const/high16 v2, 0x4040

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->n:F

    sub-float v3, v6, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v9

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->r:F

    .line 348
    :cond_6
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a(F)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->g()Z

    move-result v0

    return v0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method
