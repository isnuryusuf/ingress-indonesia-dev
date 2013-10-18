.class public final Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;
.super Lcom/nianticproject/ingress/common/ui/widget/d;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-direct {p0, p3}, Lcom/nianticproject/ingress/common/ui/widget/d;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 35
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p3, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p3, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p3, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p3, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 42
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 43
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 44
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->setWidth(F)V

    .line 45
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->setHeight(F)V

    .line 46
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 95
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 96
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/widget/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 98
    return-void

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->isOver()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0
.end method

.method public final bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    return-object v0
.end method

.method public final setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    instance-of v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style must be a TwoTextButtonStyle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/d;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->c:Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    .line 56
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    .line 57
    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 58
    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_2

    .line 62
    check-cast p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;

    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    .line 64
    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 65
    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor2:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 66
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 68
    :cond_2
    return-void
.end method
