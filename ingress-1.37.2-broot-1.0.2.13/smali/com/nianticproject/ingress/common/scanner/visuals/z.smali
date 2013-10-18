.class public Lcom/nianticproject/ingress/common/scanner/visuals/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field protected static final c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/j/ai;

.field protected final b:Lcom/badlogic/gdx/graphics/Texture;

.field protected final d:F

.field protected final e:F

.field protected final f:F

.field protected final g:F

.field protected final h:Lcom/badlogic/gdx/math/Matrix4;

.field protected i:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aC:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-void
.end method

.method protected constructor <init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->h:Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->a:Lcom/nianticproject/ingress/common/j/ai;

    .line 71
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->b:Lcom/badlogic/gdx/graphics/Texture;

    .line 72
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->d:F

    .line 73
    div-float v0, v1, p3

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->e:F

    .line 74
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->f:F

    .line 75
    iput p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->g:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    .line 77
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/shared/af;FFF)Lcom/nianticproject/ingress/common/scanner/visuals/z;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aa;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have an associated FireRadialWeaponVisuals"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_0
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->ai:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->aj:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/nianticproject/ingress/common/scanner/visuals/z;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 61
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;

    invoke-direct {v0, p2, p3}, Lcom/nianticproject/ingress/common/scanner/visuals/af;-><init>(FF)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4234

    const/high16 v3, 0x3fe0

    .line 97
    :try_start_0
    const-string/jumbo v0, "FireRadialWeaponVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 98
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    const/high16 v2, 0x3e80

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 99
    const/high16 v0, 0x3fe0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->d:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v7, v0, v3

    .line 100
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/z;->b()F

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v0, v2, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    mul-float/2addr v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 109
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 110
    const/16 v0, 0xbe2

    invoke-interface {v8, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 111
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 112
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->b:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->a:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 120
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 121
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_texture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 123
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->h:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    iget v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->h:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 128
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 129
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->a:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 133
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {v8, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 134
    const/16 v0, 0xbe2

    invoke-interface {v8, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 135
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    .line 82
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()F
    .locals 5

    .prologue
    .line 86
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->e:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 87
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->f:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->g:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->i:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/z;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
