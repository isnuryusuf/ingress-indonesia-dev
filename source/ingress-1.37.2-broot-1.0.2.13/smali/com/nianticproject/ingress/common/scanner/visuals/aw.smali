.class public final Lcom/nianticproject/ingress/common/scanner/visuals/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field public static final a:Lcom/badlogic/gdx/graphics/Color;

.field public static final b:Lcom/badlogic/gdx/graphics/Color;

.field private static final c:[F

.field private static final d:[S

.field private static e:Lcom/nianticproject/ingress/common/j/ai;

.field private static f:Lcom/badlogic/gdx/graphics/Texture;

.field private static g:Lcom/badlogic/gdx/graphics/Texture;

.field private static h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private static final i:Lcom/nianticproject/ingress/common/w/w;


# instance fields
.field private j:F

.field private k:Z

.field private l:F

.field private m:Z

.field private final n:Lcom/nianticproject/ingress/common/scanner/k;

.field private final o:Lcom/nianticproject/ingress/common/scanner/visuals/bb;

.field private final p:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->c:[F

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->d:[S

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/common/w/w;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/w;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->i:Lcom/nianticproject/ingress/common/w/w;

    return-void

    .line 60
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 62
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x3t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->n:Lcom/nianticproject/ingress/common/scanner/k;

    .line 88
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->p:Lcom/badlogic/gdx/graphics/Color;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->k:Z

    .line 90
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->l:F

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;

    invoke-direct {v0, p0, p2}, Lcom/nianticproject/ingress/common/scanner/visuals/bb;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/bb;

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->n:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/bb;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0
    .parameter

    .prologue
    .line 56
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->f:Lcom/badlogic/gdx/graphics/Texture;

    return-object p0
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 0
    .parameter

    .prologue
    .line 56
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object p0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/j/ai;)Lcom/nianticproject/ingress/common/j/ai;
    .locals 0
    .parameter

    .prologue
    .line 56
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->e:Lcom/nianticproject/ingress/common/j/ai;

    return-object p0
.end method

.method public static a(Z)V
    .locals 7
    .parameter

    .prologue
    .line 171
    :try_start_0
    const-string/jumbo v0, "InterferenceVisuals.createResources"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->i:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/w/w;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 230
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x0

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string/jumbo v5, "a_position"

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    .line 181
    const-string/jumbo v1, "CreateInterferenceMesh"

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->c:[F

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->d:[S

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/nianticproject/ingress/common/j/a;->a([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/nianticproject/ingress/common/j/c;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/ax;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/ax;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/c;Lcom/nianticproject/ingress/common/b/o;)V

    .line 192
    const-string/jumbo v0, "CreateInterferenceTexture"

    const-string/jumbo v1, "scanner/zeroxm_static.png"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->b(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v6, Lcom/nianticproject/ingress/common/scanner/visuals/ay;

    invoke-direct {v6}, Lcom/nianticproject/ingress/common/scanner/visuals/ay;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;)V

    .line 204
    const-string/jumbo v0, "CreateInterferenceNoiseTexture"

    const-string/jumbo v1, "scanner/zeroxm_static_noise.png"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->b(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v6, Lcom/nianticproject/ingress/common/scanner/visuals/az;

    invoke-direct {v6}, Lcom/nianticproject/ingress/common/scanner/visuals/az;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;)V

    .line 217
    const-string/jumbo v0, "CreateInterferenceShader"

    const-string/jumbo v1, "attribute vec2 a_position;\nuniform vec2 u_uvBias;\nvarying vec2 v_texCoord0;\nvarying vec2 v_texCoord1;\nvarying vec2 v_texCoord2;\nvoid main() {\n  v_texCoord0 = a_position.xy;\n  v_texCoord1 = u_uvBias + a_position.xy;\n  v_texCoord2 = u_uvBias - a_position.xy;\n  gl_Position = vec4(a_position.xy * 2.0 - 1.0, 1, 1);\n}\n"

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nuniform sampler2D u_texture;\nuniform sampler2D u_textureNoise;\nuniform float u_rampTarget;\nuniform vec3 u_noiseColor;\nvarying vec2 v_texCoord0;\nvarying vec2 v_texCoord1;\nvarying vec2 v_texCoord2;\nvoid main() {\n  vec4 scans = texture2D(u_texture, v_texCoord0);\n  vec4 noise_down = texture2D(u_textureNoise, v_texCoord1);\n  vec4 noise_up = texture2D(u_textureNoise, v_texCoord2);\n  float flicker_alpha = abs(noise_down.a - u_rampTarget);  flicker_alpha = flicker_alpha < 0.15 ? 0.0 : flicker_alpha * 0.6;\n  gl_FragColor = vec4(mix(scans.aaa, noise_up.aaa, 0.5) * u_noiseColor, flicker_alpha);\n}\n"

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/visuals/ba;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/ba;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    .line 227
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->i:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic b(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0
    .parameter

    .prologue
    .line 56
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->g:Lcom/badlogic/gdx/graphics/Texture;

    return-object p0
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->i:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->e:Lcom/nianticproject/ingress/common/j/ai;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->e:Lcom/nianticproject/ingress/common/j/ai;

    .line 238
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->f:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->f:Lcom/badlogic/gdx/graphics/Texture;

    .line 239
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 240
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->i:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->e()Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    :try_start_0
    const-string/jumbo v0, "InterferenceVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->k:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 113
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 114
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 115
    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 116
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 119
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->g:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 120
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->f:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 121
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 122
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_textureNoise"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 123
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_texture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 124
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_noiseColor"

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->p:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->p:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->p:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 128
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_uvBias"

    const/4 v3, 0x0

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->j:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    const/high16 v5, 0x4020

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    rem-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 132
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_rampTarget"

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->j:F

    const v4, 0x3e4ccccd

    rem-float/2addr v3, v4

    const v4, 0x3dcccccd

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 133
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->e:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 134
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->e:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 135
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->e:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 136
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->h:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 138
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 139
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 140
    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 141
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->j:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->j:F

    .line 103
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->j:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->l:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->k:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->k:Z

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->l:F

    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->k:Z

    const/high16 v3, 0x4080

    add-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->l:F

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->m:Z

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 103
    goto :goto_0

    :cond_2
    move v1, v2

    .line 104
    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->m:Z

    .line 155
    return-void
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->n:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/bb;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 98
    return-void
.end method
