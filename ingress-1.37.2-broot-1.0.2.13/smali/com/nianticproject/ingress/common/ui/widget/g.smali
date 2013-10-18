.class public Lcom/nianticproject/ingress/common/ui/widget/g;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/CharSequence;


# instance fields
.field protected final a:I

.field private c:F

.field private d:F

.field private e:Ljava/lang/CharSequence;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "..."

    sput-object v0, Lcom/nianticproject/ingress/common/ui/widget/g;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 27
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->c:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->d:F

    .line 31
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->f:Z

    .line 46
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->a:I

    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->e:Ljava/lang/CharSequence;

    .line 48
    return-void
.end method

.method private a(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/g;->getFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 96
    return-void
.end method


# virtual methods
.method public getMinWidth()F
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public layout()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 118
    :try_start_0
    const-string/jumbo v1, "AutoEllipsisLabel.layout"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 121
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    .line 123
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/g;->getWidth()F

    move-result v3

    .line 124
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->c:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 130
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->e:Ljava/lang/CharSequence;

    .line 132
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    .line 133
    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/common/ui/widget/g;->a(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;Ljava/lang/CharSequence;)V

    .line 135
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->d:F

    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 138
    :goto_1
    if-le v0, v2, :cond_4

    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_4

    .line 140
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    add-int/lit8 v7, v0, -0x1

    iget v8, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->a:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    add-int/lit8 v9, v0, -0x1

    sub-int v6, v9, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v6, v5, v6

    invoke-interface {v1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/nianticproject/ingress/common/ui/widget/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v5, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->d:F

    .line 144
    invoke-direct {p0, v4, v1}, Lcom/nianticproject/ingress/common/ui/widget/g;->a(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;Ljava/lang/CharSequence;)V

    .line 146
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 124
    :cond_1
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->f:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->c:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->c:F

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->d:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 153
    :cond_4
    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->c:F

    .line 156
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/g;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 159
    invoke-super {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->e:Ljava/lang/CharSequence;

    .line 68
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->c:F

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/g;->e:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setWrap(Z)V
    .locals 2
    .parameter

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setWrap is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
