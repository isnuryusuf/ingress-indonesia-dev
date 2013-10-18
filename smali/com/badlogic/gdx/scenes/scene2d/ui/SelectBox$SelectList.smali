.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"


# instance fields
.field itemHeight:F

.field listSelectedIndex:I

.field oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

.field stageListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field textOffsetX:F

.field textOffsetY:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;FF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 238
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 195
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectedIndex:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    .line 200
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stageListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 239
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getWidth()F

    move-result v0

    const/high16 v1, 0x42c8

    invoke-virtual {p0, p2, v4, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->setBounds(FFFF)V

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 241
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->layout()V

    .line 242
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getHeight()F

    move-result v1

    .line 244
    sub-float v2, p3, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v2

    add-float/2addr v2, p3

    add-float/2addr v2, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v1

    add-float/2addr v1, p3

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->setY(F)V

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stageListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 249
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 250
    const v0, 0x3e99999a

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 251
    return-void

    .line 247
    :cond_0
    sub-float v1, p3, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->setY(F)V

    goto :goto_0
.end method

.method private layout()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listSelection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 257
    const/4 v1, 0x0

    .line 258
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 262
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    .line 263
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    .line 267
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    .line 268
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getScaleY()F

    move-result v4

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    .line 269
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v4

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 270
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    mul-float/2addr v1, v4

    .line 271
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetX:F

    .line 272
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    neg-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetY:F

    .line 274
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getWidth()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 275
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->setWidth(F)V

    .line 276
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->setHeight(F)V

    .line 277
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2
    .parameter

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    .line 317
    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v12, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listSelection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v13, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v14, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getX()F

    move-result v3

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getY()F

    move-result v4

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getWidth()F

    move-result v5

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getHeight()F

    move-result v6

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getScaleX()F

    move-result v15

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getScaleY()F

    move-result v16

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v17

    .line 294
    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, v17

    iget v7, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, v17

    iget v8, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, v17

    iget v9, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v9, v9, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object/from16 v2, p1

    .line 295
    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 297
    const/4 v1, 0x0

    move v2, v6

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    if-ne v6, v1, :cond_0

    .line 299
    add-float v6, v4, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    sub-float v9, v6, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    move-object v6, v12

    move-object/from16 v7, p1

    move v8, v3

    move v10, v5

    invoke-interface/range {v6 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 301
    :cond_0
    iget v6, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v7, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v8, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, v17

    iget v9, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v10, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v9, v10

    mul-float v9, v9, p2

    invoke-virtual {v13, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 302
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 303
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    aget-object v6, v6, v1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetX:F

    add-float/2addr v7, v3

    add-float v8, v4, v2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetY:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 304
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-virtual {v13, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 305
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    sub-float v6, v2, v6

    .line 297
    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    .line 307
    :cond_1
    return-void
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    return-object p0
.end method
