.class final Lcom/nianticproject/ingress/common/ui/elements/q;
.super Lcom/nianticproject/ingress/common/ui/widget/ak;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

.field private final b:Lcom/nianticproject/ingress/common/j/ai;

.field private final c:Lcom/badlogic/gdx/graphics/Texture;

.field private final d:Lcom/badlogic/gdx/graphics/Texture;

.field private final e:Lcom/nianticproject/ingress/common/j/ac;

.field private final f:Lcom/badlogic/gdx/math/Matrix4;

.field private final g:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/Compass;FFFFLcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    .line 111
    invoke-direct {p0, p4, p5, p6}, Lcom/nianticproject/ingress/common/ui/widget/ak;-><init>(FFLcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V

    .line 107
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->g:Lcom/badlogic/gdx/math/Matrix4;

    .line 112
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/common/ui/elements/q;->setX(F)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/nianticproject/ingress/common/ui/elements/q;->setY(F)V

    .line 114
    invoke-virtual {p0, p4}, Lcom/nianticproject/ingress/common/ui/elements/q;->setWidth(F)V

    .line 115
    invoke-virtual {p0, p5}, Lcom/nianticproject/ingress/common/ui/elements/q;->setHeight(F)V

    .line 116
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/q;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 117
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ae:Lcom/nianticproject/ingress/common/j/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->b:Lcom/nianticproject/ingress/common/j/ai;

    .line 118
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->af:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->c:Lcom/badlogic/gdx/graphics/Texture;

    .line 119
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ag:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->d:Lcom/badlogic/gdx/graphics/Texture;

    .line 121
    new-instance v0, Lcom/nianticproject/ingress/common/j/ac;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->e()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->f()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/j/ac;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->e:Lcom/nianticproject/ingress/common/j/ac;

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->e:Lcom/nianticproject/ingress/common/j/ac;

    const/high16 v1, 0x4234

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ac;->a(F)V

    .line 123
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->f:Lcom/badlogic/gdx/math/Matrix4;

    .line 124
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 133
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aC:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->c:Lcom/badlogic/gdx/graphics/Texture;

    .line 136
    :goto_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 137
    const/16 v3, 0xb44

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 138
    const/16 v3, 0xbe2

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 140
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 141
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->g:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->e:Lcom/nianticproject/ingress/common/j/ac;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/j/ac;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->f:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 143
    const-string/jumbo v0, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->g:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 144
    const-string/jumbo v0, "u_color"

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/q;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->b:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->b:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->b:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 149
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->d:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0
.end method

.method protected final a(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->e:Lcom/nianticproject/ingress/common/j/ac;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v1, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/ac;->a(II)V

    .line 129
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->a(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->f:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->i()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->c(Lcom/nianticproject/ingress/common/ui/elements/Compass;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->h()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->b(Lcom/nianticproject/ingress/common/ui/elements/Compass;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/q;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->d(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Z

    .line 163
    :cond_0
    return-void
.end method
