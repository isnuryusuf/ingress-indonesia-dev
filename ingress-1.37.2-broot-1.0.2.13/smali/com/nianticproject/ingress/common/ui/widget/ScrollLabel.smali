.class public final Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.source "SourceFile"


# static fields
.field private static a:Lcom/nianticproject/ingress/common/ui/g;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

.field private c:F

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 104
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v4, 0x41a0

    const v5, 0x7fffffff

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FI)V

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;B)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v4, 0x41a0

    const v5, 0x7fffffff

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FIZ)V

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const v5, 0x7fffffff

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FI)V

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 82
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    .line 83
    invoke-static {p1}, Lcom/google/a/a/br;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ax;

    invoke-direct {v0, p0, p2}, Lcom/nianticproject/ingress/common/ui/widget/ax;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->i:I

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/g;)Lcom/nianticproject/ingress/common/ui/g;
    .locals 0
    .parameter

    .prologue
    .line 31
    sput-object p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    move v0, p1

    .line 243
    :goto_1
    if-ltz v0, :cond_1

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v0

    .line 250
    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ay;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/ui/widget/ay;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 402
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    const/4 v0, 0x0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    .line 406
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->d:I

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->e:Z

    .line 263
    return-void
.end method

.method public final act(F)V
    .locals 4
    .parameter

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->e:Z

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->f:Z

    .line 341
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    .line 343
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->maxCharacters:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->scrollCps:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    sub-float v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f00

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->scrollCps:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 347
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-boolean v1, v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->startFull:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->i:I

    if-ge v0, v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->d:I

    .line 356
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->act(F)V

    .line 357
    return-void

    .line 350
    :cond_1
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->d:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getGlyphCount()I

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v0, p2

    .line 363
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 366
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 367
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 368
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v1

    .line 372
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getX()F

    move-result v0

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->k:F

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getY()F

    move-result v2

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->l:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    .line 375
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->d:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getGlyphCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 376
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->maxCharacters:I

    sub-int v3, v2, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 377
    mul-int/lit8 v0, v0, 0x14

    .line 378
    sget-object v3, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    invoke-virtual {v3, p1}, Lcom/nianticproject/ingress/common/ui/g;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 379
    sget-object v3, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getGlyphCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/ui/g;->b(I)V

    .line 380
    sget-object v3, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/g;->a(I)V

    .line 382
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_2

    move-object v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 383
    sget-object v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    invoke-virtual {v1, v0, v7, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 385
    sget-object v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a:Lcom/nianticproject/ingress/common/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/g;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 387
    :cond_1
    return-void

    .line 382
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPrefWidth()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->j:F

    return v0
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->c:F

    .line 147
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/br;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->g:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->maxCharacters:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->i:I

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v1, v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->maxCharacters:I

    if-nez p1, :cond_3

    const-string/jumbo v0, ""

    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->h:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->getFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel$ScrollLabelStyle;->maxCharacters:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->j:F

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->h:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a()V

    .line 156
    :cond_1
    return-void

    .line 148
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Lcom/google/a/a/br;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "          "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
