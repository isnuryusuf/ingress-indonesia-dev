.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v5, v0

    .line 26
    rem-float v10, p4, v4

    rem-float v16, p5, v5

    .line 28
    add-float v0, p2, p4

    sub-float v17, v0, v10

    add-float v0, p3, p5

    sub-float v18, v0, v16

    move/from16 v9, p3

    move/from16 v2, p2

    .line 29
    :goto_0
    cmpg-float v0, v2, v17

    if-gez v0, :cond_1

    move/from16 v3, p3

    .line 31
    :goto_1
    cmpg-float v0, v3, v18

    if-gez v0, :cond_0

    move-object/from16 v0, p1

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 33
    add-float/2addr v3, v5

    goto :goto_1

    .line 35
    :cond_0
    add-float/2addr v2, v4

    move v9, v3

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    .line 38
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v12

    .line 39
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v13

    .line 40
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_3

    .line 42
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v10, v0

    add-float v14, v12, v0

    .line 43
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v15

    move/from16 v9, p3

    .line 45
    :goto_2
    cmpg-float v0, v9, v18

    if-gez v0, :cond_2

    move-object/from16 v6, p1

    move v8, v2

    move v11, v5

    .line 46
    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 47
    add-float/2addr v9, v5

    goto :goto_2

    .line 50
    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_3

    .line 51
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v16, v0

    sub-float v15, v13, v0

    move-object/from16 v6, p1

    move v8, v2

    move/from16 v11, v16

    .line 52
    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 55
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_4

    .line 57
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v14

    .line 58
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v16, v0

    sub-float v15, v13, v0

    move/from16 v8, p2

    .line 60
    :goto_3
    cmpg-float v0, v8, v17

    if-gez v0, :cond_4

    move-object/from16 v6, p1

    move v10, v4

    move/from16 v11, v16

    .line 61
    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 62
    add-float/2addr v8, v4

    goto :goto_3

    .line 65
    :cond_4
    return-void
.end method
