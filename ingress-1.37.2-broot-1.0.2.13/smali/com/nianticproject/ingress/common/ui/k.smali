.class public Lcom/nianticproject/ingress/common/ui/k;
.super Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.source "SourceFile"


# instance fields
.field a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 30
    return-void
.end method

.method public begin()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 35
    return-void
.end method

.method public disableBlending()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->disableBlending()V

    .line 134
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 149
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 91
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 96
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 86
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 68
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 74
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V

    .line 80
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 101
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    .line 106
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 111
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 117
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V

    .line 124
    return-void
.end method

.method public enableBlending()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    .line 139
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 40
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 129
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isBlendingEnabled()Z

    move-result v0

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    .line 144
    return-void
.end method

.method public setColor(F)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 55
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 50
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 45
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 164
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 174
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/k;->a:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 169
    return-void
.end method
