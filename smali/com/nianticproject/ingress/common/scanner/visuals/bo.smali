.class public final Lcom/nianticproject/ingress/common/scanner/visuals/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/m;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final a:F

.field private static final b:F

.field private static c:Lcom/nianticproject/ingress/common/j/ai;

.field private static d:Lcom/badlogic/gdx/graphics/Texture;

.field private static e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private static final f:Lcom/nianticproject/ingress/common/w/w;


# instance fields
.field private final g:Lcom/nianticproject/ingress/common/scanner/ed;

.field private final h:Lcom/nianticproject/ingress/common/model/k;

.field private final i:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/high16 v0, 0x4034

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->a:F

    .line 47
    const-wide v0, 0x4046800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->b:F

    .line 53
    new-instance v0, Lcom/nianticproject/ingress/common/w/w;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/w;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->f:Lcom/nianticproject/ingress/common/w/w;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->i:Lcom/badlogic/gdx/math/Matrix4;

    .line 60
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->g:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 61
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->h:Lcom/nianticproject/ingress/common/model/k;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->d:Lcom/badlogic/gdx/graphics/Texture;

    return-object p0
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object p0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/j/ai;)Lcom/nianticproject/ingress/common/j/ai;
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c:Lcom/nianticproject/ingress/common/j/ai;

    return-object p0
.end method

.method public static b()V
    .locals 7

    .prologue
    .line 145
    :try_start_0
    const-string/jumbo v0, "PlayerCompassVisuals.createResources"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->f:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 185
    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_1
    const-string/jumbo v0, "CreateXmpRingMesh"

    const-string/jumbo v1, "scanner/emp_ring.obj"

    invoke-static {v1}, Lcom/nianticproject/ingress/common/b/c;->e(Ljava/lang/String;)Lcom/nianticproject/ingress/common/j/c;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/bp;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bp;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/c;Lcom/nianticproject/ingress/common/b/o;)V

    .line 160
    const-string/jumbo v0, "CreatePlayerCompassTexture"

    const-string/jumbo v1, "scanner/compass_ring.png"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->b(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v6, Lcom/nianticproject/ingress/common/scanner/visuals/bq;

    invoke-direct {v6}, Lcom/nianticproject/ingress/common/scanner/visuals/bq;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;)V

    .line 172
    const-string/jumbo v0, "CreatePlayerCompassShader"

    const-string/jumbo v1, "attribute vec4 a_position;\nattribute vec2 a_texCoord0;\nuniform mat4 u_modelViewProject;\nuniform vec2 u_uvScale;\nuniform vec3 u_bearing;\nuniform vec2 u_bearingThreshold;\nuniform vec4 u_color;\nuniform vec4 u_bearingColor;\nvarying vec2 v_texCoord0;\nvarying vec4 v_bearingColor;\nvoid main() {\n   v_texCoord0 = u_uvScale * a_texCoord0;\n   vec3 normalizedPos = normalize(a_position.xyz);\n   float bearingDot = dot(normalizedPos, u_bearing);   float bearingStrength = (bearingDot - u_bearingThreshold.x) * u_bearingThreshold.y;   v_bearingColor = mix(u_color, u_bearingColor, clamp(bearingStrength, 0.0, 1.0));\n   gl_Position = u_modelViewProject * a_position;\n}\n"

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nuniform sampler2D u_texture;\nvarying vec4 v_bearingColor;\nvarying vec2 v_texCoord0;\nvoid main() {\n  gl_FragColor = v_bearingColor + texture2D(u_texture, v_texCoord0);\n}\n"

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/visuals/br;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/br;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    .line 182
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->f:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->f:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c:Lcom/nianticproject/ingress/common/j/ai;

    .line 193
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->d:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->d:Lcom/badlogic/gdx/graphics/Texture;

    .line 194
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 195
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->f:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->e()Z

    goto :goto_0
.end method

.method static d()Lcom/nianticproject/ingress/common/j/ai;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c:Lcom/nianticproject/ingress/common/j/ai;

    return-object v0
.end method

.method static e()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->d:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method static f()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4220

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->i:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 80
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->e:Lcom/nianticproject/ingress/common/j/ad;

    invoke-virtual {p3, v0, p0}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 81
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x4348

    const/high16 v6, 0x3f80

    .line 86
    :try_start_0
    const-string/jumbo v0, "PlayerCompassVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    .line 88
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ea;->u:Lcom/badlogic/gdx/graphics/Color;

    .line 93
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->d:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 94
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 95
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_texture"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 96
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_color"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 97
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_uvScale"

    const/high16 v4, 0x40a0

    const/high16 v5, 0x3f80

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 98
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_modelViewProject"

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->i:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 101
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->g:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->g:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->f()D

    move-result-wide v2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->h:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 108
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_bearing"

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 110
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_bearingColor"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->g:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->c()D

    move-result-wide v0

    double-to-float v0, v0

    .line 113
    const/high16 v1, 0x4348

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 114
    div-float/2addr v0, v7

    .line 115
    sget v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->a:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 116
    sget v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 117
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_bearingThreshold"

    sub-float v3, v6, v0

    div-float v3, v6, v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 126
    :goto_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 127
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 128
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 131
    return-void

    .line 122
    :cond_0
    :try_start_1
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_bearing"

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 123
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_bearingColor"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 124
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_bearingThreshold"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
