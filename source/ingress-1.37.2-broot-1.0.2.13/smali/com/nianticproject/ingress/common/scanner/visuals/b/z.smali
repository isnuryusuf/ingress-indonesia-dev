.class public final Lcom/nianticproject/ingress/common/scanner/visuals/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/visuals/b/b;


# static fields
.field private static final a:Lcom/badlogic/gdx/graphics/Color;

.field private static e:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private f:F

.field private g:F

.field private h:Z

.field private i:[F

.field private j:[F

.field private k:[F

.field private final l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f23d70a

    const v2, 0x3ee66666

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "u_params"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->b:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "u_color"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->c:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "u_position"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->d:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->f:F

    .line 88
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->h:Z

    .line 96
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    .line 97
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->j:[F

    .line 98
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->k:[F

    .line 100
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->e:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->g()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 104
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->p()V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/b/c;)Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->e:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/aa;

    const-string/jumbo v2, "PowerCubeParticleEffect.createResources"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 38
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->e:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->dispose()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/high16 v1, 0x3f80

    const/4 v5, 0x0

    .line 120
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v3, v2, v5

    .line 128
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v3, v2, v8

    .line 129
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    const/4 v3, 0x2

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v4, v2, v3

    .line 130
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput v3, v2, v6

    .line 131
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->f:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    aget v3, v2, v6

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->f:F

    div-float v1, v4, v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v1

    mul-float/2addr v1, v3

    aput v1, v2, v6

    .line 138
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->j:[F

    aput v7, v1, v5

    .line 139
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->j:[F

    aput v7, v1, v8

    .line 140
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->j:[F

    const/4 v2, 0x2

    aput v7, v1, v2

    .line 143
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->j:[F

    const/high16 v2, 0x4220

    mul-float/2addr v2, v0

    aput v2, v1, v6

    .line 146
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fc99999a0000000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 148
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->k:[F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->f:F

    aput v3, v2, v5

    .line 149
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->k:[F

    const/high16 v3, 0x40a0

    aput v3, v2, v8

    .line 150
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->k:[F

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->k:[F

    aput v1, v0, v6

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_params"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->k:[F

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_position"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->j:[F

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 156
    return-void

    .line 123
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v0

    goto/16 :goto_0

    .line 133
    :cond_3
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    const/high16 v2, 0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->i:[F

    aget v2, v1, v6

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    const/high16 v4, 0x3f00

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v3

    mul-float/2addr v2, v3

    aput v2, v1, v6

    goto :goto_1
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->f:F

    .line 110
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    .line 111
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    const v1, 0x3e4ccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->q()V

    .line 114
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

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
    .line 237
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->e:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .prologue
    const/high16 v3, 0x4020

    .line 159
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->f:F

    sub-float v1, v3, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    .line 161
    return-void
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 165
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->g:F

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/z;->h:Z

    .line 167
    return-void
.end method
