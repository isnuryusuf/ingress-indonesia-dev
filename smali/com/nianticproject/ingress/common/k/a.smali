.class public final Lcom/nianticproject/ingress/common/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[F

.field private static final b:[F


# instance fields
.field private final c:Lcom/badlogic/gdx/math/Matrix4;

.field private final d:Lcom/badlogic/gdx/math/Matrix4;

.field private final e:Lcom/badlogic/gdx/math/Vector3;

.field private final f:Lcom/badlogic/gdx/math/Vector3;

.field private final g:Lcom/badlogic/gdx/math/Vector2;

.field private final h:Lcom/nianticproject/ingress/common/k/b;

.field private final i:Lcom/nianticproject/ingress/common/j/f;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/k/a;->a:[F

    .line 36
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/common/k/a;->b:[F

    return-void

    .line 35
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/k/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->c:Lcom/badlogic/gdx/math/Matrix4;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->d:Lcom/badlogic/gdx/math/Matrix4;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->g:Lcom/badlogic/gdx/math/Vector2;

    .line 59
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->v:F

    .line 64
    iput-object p1, p0, Lcom/nianticproject/ingress/common/k/a;->i:Lcom/nianticproject/ingress/common/j/f;

    .line 65
    iput-object p2, p0, Lcom/nianticproject/ingress/common/k/a;->h:Lcom/nianticproject/ingress/common/k/b;

    .line 66
    return-void
.end method

.method private static a(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    sub-float v0, p2, p1

    const/high16 v1, 0x3f80

    add-float/2addr v1, p0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->u:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 11

    .prologue
    const/16 v10, 0xbe2

    const/16 v9, 0xb71

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/a;->w:Z

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 85
    invoke-interface {v6, v10}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 86
    invoke-interface {v6, v9}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 88
    sget-object v3, Lcom/nianticproject/ingress/common/k/c;->g:Lcom/badlogic/gdx/graphics/Texture;

    .line 89
    sget-object v0, Lcom/nianticproject/ingress/common/k/c;->f:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 90
    sget-object v7, Lcom/nianticproject/ingress/common/k/c;->e:Lcom/nianticproject/ingress/common/j/ai;

    .line 92
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    .line 96
    :try_start_0
    const-string/jumbo v4, "DrawCrosshair"

    invoke-static {v4}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 97
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 98
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 99
    new-instance v3, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/k/a;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 100
    const-string/jumbo v4, "u_modelViewProject"

    iget-object v5, p0, Lcom/nianticproject/ingress/common/k/a;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 101
    const-string/jumbo v3, "u_texture"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 102
    iget v3, p0, Lcom/nianticproject/ingress/common/k/a;->u:F

    const v4, 0x3dcccccd

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    rem-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 103
    :goto_1
    if-eqz v1, :cond_3

    sget-object v1, Lcom/nianticproject/ingress/common/k/a;->a:[F

    move-object v5, v1

    .line 104
    :goto_2
    const-string/jumbo v1, "u_texScaleAndBias"

    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v3, 0x1

    aget v3, v5, v3

    const/4 v4, 0x2

    aget v4, v5, v4

    const/4 v8, 0x3

    aget v5, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 105
    const-string/jumbo v1, "u_color"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, p0, Lcom/nianticproject/ingress/common/k/a;->v:F

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 106
    invoke-virtual {v7, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 107
    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 108
    invoke-virtual {v7, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 109
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 115
    :cond_1
    invoke-interface {v6, v9}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 116
    invoke-interface {v6, v10}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    :try_start_1
    sget-object v1, Lcom/nianticproject/ingress/common/k/a;->b:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    goto :goto_2

    .line 111
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method final a(F)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x3fc0

    const v8, 0x3dcccccd

    const v7, 0x3ca3d70a

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 120
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->s:F

    iget v1, p0, Lcom/nianticproject/ingress/common/k/a;->t:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/a;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v0, v1, v5, v2}, Lcom/nianticproject/ingress/common/k/r;->a(FFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->f:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/a;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->f:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/a;->i:Lcom/nianticproject/ingress/common/j/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->g:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/a;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/a;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/nianticproject/ingress/common/k/a;->o:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/a;->q:F

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/common/k/a;->a(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/a;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/k/a;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nianticproject/ingress/common/k/a;->p:F

    iget v4, p0, Lcom/nianticproject/ingress/common/k/a;->r:F

    invoke-static {v2, v3, v4}, Lcom/nianticproject/ingress/common/k/a;->a(FFF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, p0, Lcom/nianticproject/ingress/common/k/a;->l:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->m:F

    .line 121
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->n:F

    add-float/2addr v0, p1

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->n:F

    .line 122
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->n:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v8

    .line 123
    iget v1, p0, Lcom/nianticproject/ingress/common/k/a;->j:F

    iget v2, p0, Lcom/nianticproject/ingress/common/k/a;->l:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 124
    iget v2, p0, Lcom/nianticproject/ingress/common/k/a;->k:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/a;->m:F

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 125
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    sub-float/2addr v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 127
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    sub-float/2addr v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/a;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v1, v0, v6}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 130
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->n:F

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->h:Lcom/nianticproject/ingress/common/k/b;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/k/b;->a()V

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->u:F

    sub-float/2addr v0, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->u:F

    .line 136
    :cond_2
    return-void
.end method

.method public final a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    iput p1, p0, Lcom/nianticproject/ingress/common/k/a;->s:F

    .line 143
    iput p2, p0, Lcom/nianticproject/ingress/common/k/a;->t:F

    .line 144
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->l:F

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->j:F

    .line 145
    iget v0, p0, Lcom/nianticproject/ingress/common/k/a;->m:F

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->k:F

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->n:F

    .line 147
    return-void
.end method

.method public final a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, -0x3fc0

    .line 69
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 70
    iput v2, p0, Lcom/nianticproject/ingress/common/k/a;->o:F

    .line 71
    mul-float v1, v2, v0

    iput v1, p0, Lcom/nianticproject/ingress/common/k/a;->p:F

    .line 72
    iput v3, p0, Lcom/nianticproject/ingress/common/k/a;->q:F

    .line 73
    mul-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->r:F

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->d:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/nianticproject/ingress/common/k/a;->o:F

    iget v2, p0, Lcom/nianticproject/ingress/common/k/a;->q:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/a;->p:F

    iget v4, p0, Lcom/nianticproject/ingress/common/k/a;->r:F

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 75
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/k/a;->w:Z

    .line 160
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 150
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/nianticproject/ingress/common/k/a;->u:F

    .line 151
    return-void
.end method

.method public final b(F)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput p1, p0, Lcom/nianticproject/ingress/common/k/a;->v:F

    .line 169
    return-void
.end method

.method public final c()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/a;->e:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method
