.class public Lcom/nianticproject/ingress/common/scanner/visuals/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/visuals/b/b;


# static fields
.field private static final c:Lcom/badlogic/gdx/graphics/Color;

.field private static d:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

.field private static e:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

.field private static f:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

.field private static g:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

.field private static h:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

.field private static i:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;


# instance fields
.field protected a:Lcom/badlogic/gdx/math/Vector3;

.field protected b:Lcom/badlogic/gdx/math/Vector3;

.field private j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 31
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/r;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/r;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->d:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    .line 32
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/p;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/p;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->e:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;-><init>(B)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->f:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;)V
    .locals 1
    .parameter

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    .line 357
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->a:Lcom/badlogic/gdx/math/Vector3;

    .line 358
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->b:Lcom/badlogic/gdx/math/Vector3;

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->t:Z

    .line 367
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->a(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;)V

    .line 368
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/b/n;)Lcom/nianticproject/ingress/common/scanner/visuals/b/n;
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->g:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    return-object p0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/b/n;)Lcom/nianticproject/ingress/common/scanner/visuals/b/n;
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->h:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    return-object p0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/visuals/b/n;)Lcom/nianticproject/ingress/common/scanner/visuals/b/n;
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    return-object p0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/m;

    const-string/jumbo v2, "HackParticleEffect.createResources"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 53
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->g:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->dispose()V

    .line 60
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->h:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->dispose()V

    .line 61
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->dispose()V

    .line 62
    return-void
.end method

.method static synthetic h()Lcom/nianticproject/ingress/common/scanner/visuals/b/u;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->d:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    return-object v0
.end method

.method static synthetic i()Lcom/nianticproject/ingress/common/scanner/visuals/b/u;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->e:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    return-object v0
.end method

.method static synthetic j()Lcom/nianticproject/ingress/common/scanner/visuals/b/u;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->f:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    return-object v0
.end method

.method static synthetic k()Lcom/nianticproject/ingress/common/scanner/visuals/b/n;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    return-object v0
.end method

.method static synthetic l()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->c:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic m()Lcom/nianticproject/ingress/common/scanner/visuals/b/n;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->g:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    return-object v0
.end method

.method static synthetic n()Lcom/nianticproject/ingress/common/scanner/visuals/b/n;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->h:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 6
    .parameter

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->l:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v5, v0

    .line 432
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 433
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_beginTimes"

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->l:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->m:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->n:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 434
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_endTimes"

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->o:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->p:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->q:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 435
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_timeSkews"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->h:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v3, v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->i:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v4, v4, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->j:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 440
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_params"

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v3, v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->c:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v4, v4, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->k:F

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 445
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_beginPos"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V

    .line 446
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_endPos"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V

    .line 447
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 410
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 411
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    .line 372
    iget-object v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    const-string/jumbo v1, "Static Params can not be used here!"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->k:F

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->l:F

    .line 375
    iget v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d:F

    iget v1, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->m:F

    .line 376
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->a()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->n:F

    .line 377
    iget v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d:F

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->o:F

    .line 378
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->c()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->p:F

    .line 379
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->b()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->q:F

    .line 380
    iget-object v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aQ:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->s:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 381
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->t:Z

    .line 393
    return-void
.end method

.method public a(F)Z
    .locals 3
    .parameter

    .prologue
    .line 415
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    .line 416
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->t:Z

    if-eqz v0, :cond_0

    .line 418
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->m:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 419
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v1, v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->e:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->h:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    .line 422
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public final e()Lcom/nianticproject/ingress/common/scanner/visuals/b/t;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->j:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    return-object v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    return v0
.end method

.method public final g()F
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->k:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->r:F

    sub-float/2addr v0, v1

    return v0
.end method
