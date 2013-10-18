.class public final Lcom/nianticproject/ingress/common/scanner/visuals/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static a:Lcom/badlogic/gdx/graphics/Texture;

.field private static b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private static c:Lcom/nianticproject/ingress/common/j/ai;


# instance fields
.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:Lcom/nianticproject/ingress/common/scanner/eo;

.field private final h:Lcom/nianticproject/ingress/common/scanner/eo;

.field private i:F

.field private final j:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/eo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->d:F

    .line 60
    const/high16 v0, 0x42c8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->e:F

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->j:Lcom/badlogic/gdx/math/Matrix4;

    .line 85
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->f:F

    .line 86
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->g:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 87
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->h:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->i:F

    .line 90
    return-void
.end method

.method private static a(II)F
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 269
    if-gt p0, p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 270
    if-ltz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 273
    if-lez p1, :cond_3

    .line 274
    int-to-float v0, p0

    int-to-float v3, p1

    div-float/2addr v0, v3

    move v3, v0

    .line 279
    :goto_3
    cmpl-float v0, v3, v4

    if-ltz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 280
    const/high16 v0, 0x3f80

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_5

    :goto_5
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 282
    return v3

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v0, v2

    .line 269
    goto :goto_1

    :cond_2
    move v0, v2

    .line 270
    goto :goto_2

    :cond_3
    move v3, v4

    .line 276
    goto :goto_3

    :cond_4
    move v0, v2

    .line 279
    goto :goto_4

    :cond_5
    move v1, v2

    .line 280
    goto :goto_5
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0
    .parameter

    .prologue
    .line 38
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->a:Lcom/badlogic/gdx/graphics/Texture;

    return-object p0
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 0
    .parameter

    .prologue
    .line 38
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object p0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/j/ai;)Lcom/nianticproject/ingress/common/j/ai;
    .locals 0
    .parameter

    .prologue
    .line 38
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->c:Lcom/nianticproject/ingress/common/j/ai;

    return-object p0
.end method

.method public static b()V
    .locals 13

    .prologue
    const/16 v12, 0x13

    const/4 v11, 0x3

    const/4 v7, 0x0

    .line 169
    :try_start_0
    const-string/jumbo v0, "FireTargetedWeaponVisuals.createResources"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "CreateFireTargetedWeaponTexture"

    const-string/jumbo v1, "scanner/portalAttackTexture.png"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->b(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v6, Lcom/nianticproject/ingress/common/scanner/visuals/ac;

    invoke-direct {v6}, Lcom/nianticproject/ingress/common/scanner/visuals/ac;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;)V

    .line 182
    const-string/jumbo v0, "shaders/portal_attack.glsl.vert"

    const-string/jumbo v1, "shaders/portal_attack.glsl.frag"

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/ad;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/ad;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    .line 191
    const-string/jumbo v3, "CreateFireTargetedWeaponMesh"

    const/4 v0, 0x1

    new-array v4, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x0

    const/4 v5, 0x3

    const-string/jumbo v6, "v_interps"

    invoke-direct {v1, v2, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v4, v0

    const/16 v0, 0x168

    new-array v5, v0, [F

    const/16 v0, 0x156

    new-array v6, v0, [S

    move v2, v7

    :goto_0
    if-ge v2, v11, :cond_3

    move v1, v7

    :goto_1
    const/16 v0, 0x14

    if-ge v1, v0, :cond_2

    move v0, v7

    :goto_2
    const/4 v8, 0x2

    if-ge v0, v8, :cond_0

    mul-int/lit8 v8, v2, 0x14

    add-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v9, v8, 0x0

    const/4 v10, 0x3

    invoke-static {v2, v10}, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->a(II)F

    move-result v10

    aput v10, v5, v9

    add-int/lit8 v9, v8, 0x1

    const/16 v10, 0x13

    invoke-static {v1, v10}, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->a(II)F

    move-result v10

    aput v10, v5, v9

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->a(II)F

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    if-ge v1, v12, :cond_1

    mul-int/lit8 v0, v2, 0x13

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v8, v2, 0x14

    add-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v0, 0x0

    add-int/lit8 v10, v8, 0x0

    int-to-short v10, v10

    aput-short v10, v6, v9

    add-int/lit8 v9, v0, 0x1

    add-int/lit8 v10, v8, 0x1

    int-to-short v10, v10

    aput-short v10, v6, v9

    add-int/lit8 v9, v0, 0x2

    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v6, v9

    add-int/lit8 v9, v0, 0x3

    add-int/lit8 v10, v8, 0x2

    int-to-short v10, v10

    aput-short v10, v6, v9

    add-int/lit8 v9, v0, 0x4

    add-int/lit8 v10, v8, 0x1

    int-to-short v10, v10

    aput-short v10, v6, v9

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, v6, v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v5, v6, v0, v4}, Lcom/nianticproject/ingress/common/j/a;->a([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/nianticproject/ingress/common/j/c;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/ae;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/ae;-><init>()V

    invoke-static {v3, v0, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/c;Lcom/nianticproject/ingress/common/b/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    :try_start_0
    const-string/jumbo v0, "FireTargetedWeaponVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->i:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 117
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 118
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 120
    const/16 v1, 0x302

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 124
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 125
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 127
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->j:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->g:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->h:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->i:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->e:F

    add-float/2addr v3, v4

    const/high16 v4, 0x44fa

    rem-float/2addr v3, v4

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->a:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->c:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v4, v5}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v5, "u_texture"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v5, "u_modelViewProject"

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->j:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v5, "u_xz0"

    invoke-virtual {v4, v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v4, "u_xz1"

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_time"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->c:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 129
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 130
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 131
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 132
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->i:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->i:F

    .line 95
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->i:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ab;->f:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 96
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 95
    goto :goto_0

    :cond_1
    move v0, v1

    .line 96
    goto :goto_1
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
