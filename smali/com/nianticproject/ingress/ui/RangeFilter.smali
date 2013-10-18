.class public Lcom/nianticproject/ingress/ui/RangeFilter;
.super Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/SeekBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->a()V

    .line 169
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->b()V

    .line 170
    iput-boolean v3, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->g:Z

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->i:Landroid/graphics/Paint;

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->i:Landroid/graphics/Paint;

    const v1, -0xfaafb0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->j:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->j:Landroid/graphics/Paint;

    const v1, -0xfe6767

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/ui/RangeFilter;->setWillNotDraw(Z)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->a()V

    .line 169
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->b()V

    .line 170
    iput-boolean v3, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->g:Z

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->i:Landroid/graphics/Paint;

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->i:Landroid/graphics/Paint;

    const v1, -0xfaafb0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->j:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->j:Landroid/graphics/Paint;

    const v1, -0xfe6767

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/ui/RangeFilter;->setWillNotDraw(Z)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->a()V

    .line 169
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->b()V

    .line 170
    iput-boolean v3, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->g:Z

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->i:Landroid/graphics/Paint;

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->i:Landroid/graphics/Paint;

    const v1, -0xfaafb0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->j:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->j:Landroid/graphics/Paint;

    const v1, -0xfe6767

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/ui/RangeFilter;->setWillNotDraw(Z)V

    .line 145
    return-void
.end method

.method private a(Landroid/view/View;[I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 376
    aget v0, p2, v3

    .line 377
    aget v1, p2, v4

    .line 378
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/ui/RangeFilter;->getLocationOnScreen([I)V

    .line 379
    aget v2, p2, v3

    sub-int/2addr v0, v2

    aput v0, p2, v3

    .line 380
    aget v0, p2, v4

    sub-int v0, v1, v0

    aput v0, p2, v4

    .line 381
    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->d()V

    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->a:Landroid/view/View;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 337
    return-void
.end method

.method protected final e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-super {p0}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->e()V

    .line 330
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->a:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->a:Lcom/nianticproject/ingress/ui/ag;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->c:Lcom/nianticproject/ingress/ui/ag;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter

    .prologue
    .line 250
    invoke-super/range {p0 .. p1}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->a:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/nianticproject/ingress/ui/RangeFilter;->a(Landroid/view/View;[I)V

    .line 261
    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 262
    const/4 v3, 0x1

    aget v3, v1, v3

    add-int/lit8 v7, v3, -0x4

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/nianticproject/ingress/ui/RangeFilter;->a(Landroid/view/View;[I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 266
    const/4 v4, 0x0

    aget v1, v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-double v8, v6

    div-double/2addr v4, v8

    int-to-double v8, v3

    mul-double v3, v4, v8

    double-to-int v3, v3

    add-int v8, v1, v3

    .line 268
    int-to-float v2, v2

    int-to-float v3, v7

    int-to-float v4, v8

    int-to-float v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    int-to-float v2, v8

    int-to-float v3, v7

    add-int/lit8 v1, v8, 0x8

    int-to-float v4, v1

    add-int/lit8 v1, v7, 0x8

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/nianticproject/ingress/ui/RangeFilter;->a(Landroid/view/View;[I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v8, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    add-int v11, v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v12, v1, v11

    add-int/lit8 v9, v8, -0x10

    add-int/lit8 v10, v8, 0x10

    invoke-static {}, Lcom/nianticproject/ingress/ui/ag;->values()[Lcom/nianticproject/ingress/ui/ag;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v14, :cond_1

    aget-object v1, v13, v7

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v12

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v11

    add-int/lit8 v2, v1, -0x2

    int-to-float v2, v2

    int-to-float v3, v9

    add-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v8, -0x8

    add-int/lit8 v14, v8, 0x8

    invoke-static {}, Lcom/nianticproject/ingress/ui/ag;->values()[Lcom/nianticproject/ingress/ui/ag;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_3

    aget-object v1, v15, v10

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v12

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v17, v11, v1

    const/4 v8, 0x6

    const/4 v2, 0x6

    const/4 v1, 0x0

    move v7, v1

    move v9, v8

    move v8, v2

    :goto_2
    const/4 v1, 0x6

    if-ge v7, v1, :cond_2

    sub-int v1, v17, v8

    add-int/lit8 v1, v1, -0x1

    int-to-float v2, v1

    int-to-float v3, v13

    sub-int v1, v17, v8

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->h:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v2, v8, v9

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v9, v8

    move v8, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 287
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getHeight()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/ui/RangeFilter;->j:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 289
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 196
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->a:Landroid/view/View;

    .line 197
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->b:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    .line 199
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->d:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->e:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->f:Landroid/widget/TextView;

    .line 204
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/ag;->a(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->e(I)I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/ag;->b(I)Lcom/nianticproject/ingress/ui/ag;

    move-result-object v2

    .line 205
    const/high16 v1, -0x8000

    .line 206
    invoke-static {}, Lcom/nianticproject/ingress/ui/ag;->values()[Lcom/nianticproject/ingress/ui/ag;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 207
    invoke-static {v5}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 211
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-static {v2}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-super/range {p0 .. p5}, Lcom/nianticproject/ingress/ui/TouchCollapsibleLayout;->onLayout(ZIIII)V

    .line 222
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->g:Z

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 234
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->a(Landroid/view/View;[I)V

    .line 235
    aget v0, v0, v3

    .line 236
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    .line 237
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 238
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getHeight()I

    move-result v1

    .line 239
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 240
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/RangeFilter;->a(F)V

    .line 243
    invoke-virtual {p0, v2, v2}, Lcom/nianticproject/ingress/ui/RangeFilter;->a(ZZ)V

    .line 245
    iput-boolean v3, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->g:Z

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f070021

    const v4, 0x7f07000b

    .line 293
    invoke-static {p2}, Lcom/nianticproject/ingress/ui/ag;->a(I)Lcom/nianticproject/ingress/ui/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/nianticproject/ingress/ui/af;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/ag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/RangeFilter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/ag;->a(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/service/CommService;->a(Landroid/content/Context;I)V

    .line 294
    return-void

    .line 293
    :pswitch_0
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/RangeFilter;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/ag;->a(I)Lcom/nianticproject/ingress/ui/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/ag;->b(Lcom/nianticproject/ingress/ui/ag;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 304
    return-void
.end method
