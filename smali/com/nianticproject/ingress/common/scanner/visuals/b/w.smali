.class public final Lcom/nianticproject/ingress/common/scanner/visuals/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/visuals/b/b;


# static fields
.field private static final a:Lcom/badlogic/gdx/graphics/Color;

.field private static c:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;


# instance fields
.field private b:Ljava/lang/String;

.field private d:F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[F

.field private final i:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ec1ff2e

    const v2, 0x3eedfa44

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    const/high16 v6, 0x3e80

    const/4 v2, 0x4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v1, "u_destinations"

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->b:Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    .line 89
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->e:[F

    .line 90
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->f:[F

    .line 91
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->g:[F

    .line 92
    const/16 v1, 0x1b

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->h:[F

    .line 94
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->c:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->g()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->i:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 96
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->j:F

    move v1, v0

    .line 100
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->h:[F

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v4, v7

    mul-float/2addr v4, v6

    aput v4, v2, v3

    .line 102
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->h:[F

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v4, v7

    mul-float/2addr v4, v6

    aput v4, v2, v3

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->i:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniforms()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 109
    const-string/jumbo v4, "[0]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[0]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->b:Ljava/lang/String;

    .line 114
    :cond_1
    return-void

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/b/c;)Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
    .locals 0
    .parameter

    .prologue
    .line 20
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->c:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/x;

    const-string/jumbo v2, "ItemDetailsRecycleParticleEffect.createResources"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 33
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->c:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->dispose()V

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->e:[F

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v2, v0, v5

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->e:[F

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v2, v0, v6

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->e:[F

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v2, v0, v7

    .line 138
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    const v2, 0x3e4ccccd

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 140
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    const v2, 0x3e4ccccd

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v0

    .line 146
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->e:[F

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    const v4, 0x3f19999a

    mul-float/2addr v0, v4

    mul-float/2addr v0, v3

    aput v0, v2, v8

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->f:[F

    aput v1, v0, v5

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->f:[F

    aput v1, v0, v6

    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->f:[F

    aput v1, v0, v7

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->f:[F

    const/high16 v1, 0x3f80

    aput v1, v0, v8

    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->g:[F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    aput v1, v0, v5

    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->g:[F

    const/high16 v1, 0x4110

    aput v1, v0, v6

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->g:[F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->j:F

    aput v1, v0, v7

    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->g:[F

    const/high16 v1, 0x3f80

    aput v1, v0, v8

    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->i:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_params"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->g:[F

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->i:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->e:[F

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->i:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_position"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->f:[F

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->i:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->h:[F

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform3fv(Ljava/lang/String;[FII)V

    .line 167
    return-void

    .line 141
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    const v2, 0x3f666666

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v1

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    const v0, 0x3f666666

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    sub-float/2addr v0, v2

    const v2, 0x3f4ccccc

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v0

    goto :goto_0
.end method

.method public final a(F)Z
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4080

    const/4 v1, 0x0

    const v2, 0x3f666666

    .line 118
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    .line 120
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 121
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->j:F

    .line 128
    :goto_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 122
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 123
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->d:F

    div-float/2addr v0, v2

    const/high16 v1, -0x3f80

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->j:F

    goto :goto_0

    .line 125
    :cond_1
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->j:F

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;->c:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    return-object v0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
