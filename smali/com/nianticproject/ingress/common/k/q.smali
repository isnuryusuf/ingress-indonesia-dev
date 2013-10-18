.class public final Lcom/nianticproject/ingress/common/k/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final a:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final b:Lcom/badlogic/gdx/math/Matrix4;

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const v1, -0x41c50b46

    const v2, 0x3ebaf4ba

    const v3, 0x3f69b1e9

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/q;->b:Lcom/badlogic/gdx/math/Matrix4;

    .line 48
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/k/q;->c:F

    .line 69
    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f00

    .line 240
    const/high16 v0, 0x4334

    div-float v0, p1, v0

    sub-float v0, v3, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/k/q;->d:F

    .line 241
    const/high16 v0, 0x43b4

    div-float v0, p2, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/k/q;->e:F

    .line 242
    iget v2, p0, Lcom/nianticproject/ingress/common/k/q;->e:F

    iget v0, p0, Lcom/nianticproject/ingress/common/k/q;->e:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    add-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/nianticproject/ingress/common/k/q;->e:F

    .line 243
    iput v1, p0, Lcom/nianticproject/ingress/common/k/q;->g:F

    .line 244
    return-void

    :cond_0
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/q;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 80
    const/16 v0, 0xb44

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 81
    const/16 v0, 0x405

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glCullFace(I)V

    .line 82
    const/16 v0, 0x901

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glFrontFace(I)V

    .line 83
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 85
    sget-object v0, Lcom/nianticproject/ingress/common/k/c;->d:Lcom/badlogic/gdx/graphics/Texture;

    .line 86
    sget-object v1, Lcom/nianticproject/ingress/common/k/c;->c:Lcom/badlogic/gdx/graphics/Texture;

    .line 87
    sget-object v2, Lcom/nianticproject/ingress/common/k/c;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 88
    sget-object v5, Lcom/nianticproject/ingress/common/k/c;->a:Lcom/nianticproject/ingress/common/j/ai;

    .line 90
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 95
    :try_start_0
    const-string/jumbo v3, "DrawPlanetBorders"

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 99
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 100
    const-string/jumbo v0, "u_texture"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v0, "u_borderGradient"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "u_modelView"

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 103
    const-string/jumbo v0, "u_modelViewProject"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/q;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 104
    const-string/jumbo v0, "u_lightDir"

    sget-object v1, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v3, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v6, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 105
    const v0, 0x3ee66666

    const v1, 0x3e19999a

    const/high16 v3, 0x3f80

    iget v6, p0, Lcom/nianticproject/ingress/common/k/q;->c:F

    div-float/2addr v3, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v3, v6

    const/high16 v6, 0x3f80

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 106
    const v1, 0x3f666666

    const v3, 0x3ecccccd

    add-float/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 107
    const-string/jumbo v3, "u_glowRange"

    const/high16 v6, 0x3f80

    sub-float v7, v1, v0

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v0, v1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 110
    const v0, 0x3f666666

    mul-float/2addr v0, v1

    .line 111
    const-string/jumbo v1, "u_borderRange"

    const/high16 v3, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v0

    div-float/2addr v6, v7

    invoke-virtual {v2, v1, v0, v3, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 113
    invoke-virtual {v5, v2}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 114
    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 115
    invoke-virtual {v5, v2}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 116
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 123
    :cond_0
    const/16 v0, 0xbe2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 124
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {v4, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 125
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 127
    sget-object v6, Lcom/nianticproject/ingress/common/k/c;->h:Lcom/badlogic/gdx/graphics/Texture;

    .line 128
    sget-object v7, Lcom/nianticproject/ingress/common/k/c;->i:Ljava/util/ArrayList;

    .line 129
    sget-object v8, Lcom/nianticproject/ingress/common/k/c;->j:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    if-eqz v6, :cond_3

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/q;->h:Z

    if-eqz v0, :cond_3

    .line 137
    :try_start_1
    const-string/jumbo v0, "DrawFactionData"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 139
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 140
    const-string/jumbo v0, "u_texture"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 141
    const-string/jumbo v0, "u_lut"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 142
    const-string/jumbo v0, "u_modelView"

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 143
    const-string/jumbo v0, "u_modelViewProject"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/q;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 144
    const-string/jumbo v0, "u_lightDir"

    sget-object v1, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v2, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v3, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 160
    const v2, 0x3f83d70a

    .line 161
    const/high16 v0, 0x40c0

    iget v1, p0, Lcom/nianticproject/ingress/common/k/q;->c:F

    mul-float/2addr v0, v1

    .line 166
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 167
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v9

    .line 168
    invoke-virtual {v5, v8}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 169
    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v9, :cond_2

    .line 170
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 171
    add-int/lit8 v0, v9, -0x1

    if-ge v2, v0, :cond_1

    const/high16 v0, 0x3f80

    .line 172
    :goto_1
    const-string/jumbo v10, "u_shellSize"

    invoke-virtual {v8, v10, v3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 173
    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/j/ai;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    const v0, 0x3c3f2595

    add-float/2addr v3, v0

    .line 175
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    move v0, v1

    .line 171
    goto :goto_1

    .line 177
    :cond_2
    :try_start_2
    invoke-virtual {v5, v8}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 178
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 182
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 188
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/common/k/c;->k:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 190
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/k/q;->f:Z

    if-eqz v1, :cond_4

    .line 194
    :try_start_3
    const-string/jumbo v1, "DrawLocationBeacon"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 195
    const/16 v1, 0x203

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    .line 197
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 198
    const-string/jumbo v1, "u_modelView"

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 199
    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/q;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 200
    const-string/jumbo v1, "u_lightDir"

    sget-object v2, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v3, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v6, Lcom/nianticproject/ingress/common/k/q;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 201
    const-string/jumbo v1, "u_myLocation"

    iget v2, p0, Lcom/nianticproject/ingress/common/k/q;->e:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/q;->d:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 202
    const-string/jumbo v1, "u_pulseTimeAndViewScale"

    iget v2, p0, Lcom/nianticproject/ingress/common/k/q;->g:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/q;->c:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 204
    invoke-virtual {v5, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 205
    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 206
    invoke-virtual {v5, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 207
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 209
    const/16 v0, 0x201

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 215
    :cond_4
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 216
    const/16 v0, 0xbe2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 217
    return-void

    .line 184
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 211
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/k/q;->f:Z

    .line 248
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 221
    iget v0, p0, Lcom/nianticproject/ingress/common/k/q;->g:F

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/k/q;->g:F

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/q;->h:Z

    .line 236
    return-void
.end method

.method public final b(F)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput p1, p0, Lcom/nianticproject/ingress/common/k/q;->c:F

    .line 252
    return-void
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
