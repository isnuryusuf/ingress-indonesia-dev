.class public final Lcom/nianticproject/ingress/common/scanner/visuals/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;
.implements Lcom/nianticproject/ingress/common/scanner/g;


# static fields
.field private static a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private static b:Lcom/nianticproject/ingress/common/j/ai;


# instance fields
.field private final c:Lcom/badlogic/gdx/math/Matrix4;

.field private final d:Lcom/nianticproject/ingress/common/model/k;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->c:Lcom/badlogic/gdx/math/Matrix4;

    .line 49
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->e:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->f:F

    .line 53
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object p0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/j/ai;)Lcom/nianticproject/ingress/common/j/ai;
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->b:Lcom/nianticproject/ingress/common/j/ai;

    return-object p0
.end method

.method public static b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x168

    const/4 v1, 0x0

    .line 57
    const-string/jumbo v0, "CreatePulseShader"

    const-string/jumbo v2, "uniform mat4 u_modelViewProject;\nattribute vec2 a_position;\nvoid main() { \n  gl_Position = u_modelViewProject * vec4(a_position.x, 0, a_position.y, 1.0);\n}"

    const-string/jumbo v3, "#ifdef GL_ES\nprecision mediump float;\n#endif\nuniform vec4 u_color;\nvoid main() {\n  gl_FragColor = u_color;\n}"

    new-instance v4, Lcom/nianticproject/ingress/common/scanner/visuals/cl;

    invoke-direct {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/cl;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    .line 67
    const-string/jumbo v3, "CreatePulseMesh"

    new-array v4, v7, [F

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    add-int/lit8 v5, v0, 0x0

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v0, 0x1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v6

    aput v6, v4, v5

    const v5, 0x3d0efa35

    add-float/2addr v2, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v5, 0x2

    const-string/jumbo v6, "a_position"

    invoke-direct {v2, v1, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v4, v8, v8, v0}, Lcom/nianticproject/ingress/common/j/a;->a([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/nianticproject/ingress/common/j/c;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/cm;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cm;-><init>()V

    invoke-static {v3, v0, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/c;Lcom/nianticproject/ingress/common/b/o;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4396

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 138
    invoke-static {p1}, Lcom/nianticproject/ingress/common/w/z;->a(Lcom/badlogic/gdx/math/Matrix4;)F

    move-result v0

    .line 139
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->f:F

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->f:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4370

    sub-float/2addr v1, v2

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v4, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->d:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "PulseVisuals.draw"

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v4, 0xbe2

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v0, v4, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_modelViewProject"

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_color"

    invoke-static {v0, v3, v2, v1}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;F)V

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->b:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->b:Lcom/nianticproject/ingress/common/j/ai;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->b(I)V

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->b:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/h;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->f:F

    const v1, 0x3e19999a

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->f:F

    .line 125
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->f:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->f:F

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/h;

    .line 129
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/h;->a()V

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 81
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ck;->b:Lcom/nianticproject/ingress/common/j/ai;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 82
    return-void
.end method
