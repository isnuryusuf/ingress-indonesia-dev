.class public Lcom/nianticproject/ingress/common/scanner/visuals/a;
.super Lcom/nianticproject/ingress/common/scanner/visuals/e;
.source "SourceFile"


# static fields
.field private static final g:Lcom/nianticproject/ingress/common/j/ad;


# instance fields
.field private a:Lcom/nianticproject/ingress/common/j/ai;

.field private final b:Lcom/badlogic/gdx/math/Vector3;

.field private c:F

.field private d:Lcom/badlogic/gdx/graphics/Color;

.field private final e:Lcom/badlogic/gdx/math/Rectangle;

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->g:Lcom/nianticproject/ingress/common/j/ad;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->g:Lcom/nianticproject/ingress/common/j/ad;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/e;-><init>(Lcom/nianticproject/ingress/common/j/ad;)V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->b:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    .line 62
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    .line 63
    const v0, 0x3f19999a

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->c:F

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const-string/jumbo v0, "ActionGlowVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->c:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Rectangle;)V

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/high16 v2, 0x4030

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const v3, -0x41666666

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/visuals/e;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 98
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 99
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 6
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_color"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_rect"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->e:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 106
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_time"

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->f:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 107
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_yCuttoff"

    const v2, -0x42b33334

    const v3, -0x41b33333

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 108
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/e;->a(Lcom/nianticproject/ingress/common/j/af;)V

    .line 109
    return-void
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->f:F

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->f:F

    return v0
.end method

.method public final b(F)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->d:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 81
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x3f99999a

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a;->c:F

    .line 77
    return-void
.end method
