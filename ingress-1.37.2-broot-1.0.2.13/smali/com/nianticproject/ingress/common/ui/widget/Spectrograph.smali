.class public final Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/bm;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;

.field private d:D

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;-><init>(Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 42
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 43
    const-string/jumbo v0, "null SpectrographStyle"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->c:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;

    .line 46
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 47
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 48
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 51
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->setVisible(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 54
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->e:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    .line 76
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    .line 63
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->e:Z

    .line 64
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->b:Ljava/util/List;

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 66
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->b:Ljava/util/List;

    new-instance v3, Lcom/nianticproject/ingress/common/c/bm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/nianticproject/ingress/common/c/bm;-><init>(Lcom/nianticproject/ingress/common/c/ba;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->e:Z

    .line 90
    return-void
.end method

.method public final act(F)V
    .locals 4
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->e:Z

    if-nez v0, :cond_0

    .line 108
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    float-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    .line 110
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 111
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a:I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->clearActions()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->e:Z

    .line 99
    new-instance v0, Lcom/nianticproject/ingress/common/ui/a/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/a/d;-><init>()V

    const/high16 v1, 0x3f80

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 101
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v1, p2

    .line 117
    const/high16 v1, 0x3f80

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v12, v1

    .line 119
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->b:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/nianticproject/ingress/common/c/bm;

    .line 123
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    const-wide v5, 0x3fc6666660000000L

    sub-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 124
    if-gez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 127
    :cond_0
    invoke-virtual {v11}, Lcom/nianticproject/ingress/common/c/bm;->b()I

    move-result v3

    .line 128
    if-le v1, v3, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a:I

    .line 131
    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    float-to-double v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    .line 133
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    const-wide v3, 0x3fc6666660000000L

    sub-double/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->d:D

    .line 156
    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    const/4 v1, 0x0

    move v12, v1

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getWidth()F

    move-result v3

    invoke-virtual {v11}, Lcom/nianticproject/ingress/common/c/bm;->a()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v3, v4

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getHeight()F

    move-result v15

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->c:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;

    iget-object v0, v3, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph$SpectrographStyle;->bar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v16, v0

    .line 140
    if-eqz v12, :cond_6

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 142
    iget v3, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v7, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object v13, v2

    .line 144
    :goto_2
    invoke-virtual {v11, v1}, Lcom/nianticproject/ingress/common/c/bm;->a(I)[B

    move-result-object v17

    .line 145
    const/4 v1, 0x0

    move v14, v1

    :goto_3
    invoke-virtual {v11}, Lcom/nianticproject/ingress/common/c/bm;->a()I

    move-result v1

    if-ge v14, v1, :cond_4

    .line 146
    aget-byte v1, v17, v14

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    .line 147
    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getX()F

    move-result v3

    int-to-float v4, v14

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->getY()F

    move-result v4

    mul-float v6, v15, v1

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v8

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v10

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v19

    sub-float v18, v18, v19

    mul-float v1, v1, v18

    add-float/2addr v10, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 145
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_3

    .line 151
    :cond_4
    if-eqz v12, :cond_5

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 154
    :cond_5
    invoke-super/range {p0 .. p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto/16 :goto_1

    :cond_6
    move-object v13, v2

    goto :goto_2
.end method
