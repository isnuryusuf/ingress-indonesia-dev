.class public final Lcom/nianticproject/ingress/common/scanner/visuals/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/m;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field static final a:[F

.field static final b:[F

.field private static final c:Lcom/nianticproject/ingress/common/t/b;

.field private static final d:Lcom/nianticproject/ingress/common/j/ad;


# instance fields
.field private final e:Lcom/badlogic/gdx/math/Matrix4;

.field private final f:Lcom/badlogic/gdx/math/Vector3;

.field private final g:Lcom/nianticproject/ingress/common/j/an;

.field private final h:Lcom/nianticproject/ingress/common/j/am;

.field private final i:Lcom/nianticproject/ingress/common/scanner/visuals/b/b;

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 42
    const-string/jumbo v0, "Disposable Particle Render"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->c:Lcom/nianticproject/ingress/common/t/b;

    .line 44
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->a:[F

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->b:[F

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/f;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->d:Lcom/nianticproject/ingress/common/j/ad;

    return-void

    .line 44
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/b;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->e:Lcom/badlogic/gdx/math/Matrix4;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 71
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/b;

    .line 73
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/b;->b()Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->h()I

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->j:I

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->k:Z

    .line 76
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->l:Z

    .line 77
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->g()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 79
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->j()Lcom/nianticproject/ingress/common/j/an;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->g:Lcom/nianticproject/ingress/common/j/an;

    .line 80
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->k()Lcom/nianticproject/ingress/common/j/am;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->h:Lcom/nianticproject/ingress/common/j/am;

    .line 83
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->au:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ai;

    .line 84
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->e()Lcom/badlogic/gdx/math/Vector3;

    .line 85
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->d()Lcom/badlogic/gdx/math/Vector3;

    .line 86
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/w/ao;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->k()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 102
    if-eqz p3, :cond_0

    .line 103
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->d:Lcom/nianticproject/ingress/common/j/ad;

    invoke-virtual {p3, v0, p0}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->d:Lcom/nianticproject/ingress/common/j/ad;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->a(Lcom/nianticproject/ingress/common/j/af;)V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 6
    .parameter

    .prologue
    .line 112
    :try_start_0
    const-string/jumbo v0, "ParticleVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 115
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 116
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 117
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 119
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->l:Z

    if-eqz v1, :cond_0

    .line 120
    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 125
    :goto_0
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->k:Z

    if-eqz v1, :cond_1

    .line 126
    const/16 v1, 0x302

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 130
    :goto_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 132
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aX:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 133
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 135
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->h:Lcom/nianticproject/ingress/common/j/am;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/am;->a()V

    .line 136
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->g:Lcom/nianticproject/ingress/common/j/an;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/an;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 138
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_modelViewProject"

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 139
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_cameraPos"

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V

    .line 141
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/b;->a(Lcom/badlogic/gdx/math/Vector3;)V

    .line 147
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Effect class: %s: Unexpected GL Error occured before glDrawElements (%d): %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/badlogic/gdx/Gdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/graphics/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 177
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    throw v0

    .line 122
    :cond_0
    const/16 v1, 0xb71

    :try_start_1
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto/16 :goto_0

    .line 128
    :cond_1
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    goto/16 :goto_1

    .line 155
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x4

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->j:I

    mul-int/lit8 v3, v3, 0x6

    const/16 v4, 0x1403

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 158
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v1

    .line 159
    if-eqz v1, :cond_3

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Effect class: %s: GL Error during glDrawElements (%d): %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/badlogic/gdx/Gdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/graphics/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->g:Lcom/nianticproject/ingress/common/j/an;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/an;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->m:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 168
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 169
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 170
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 173
    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 174
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 177
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 178
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/b;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/b;->a(F)Z

    move-result v0

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->i:Lcom/nianticproject/ingress/common/scanner/visuals/b/b;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/b;->dispose()V

    .line 189
    return-void
.end method
