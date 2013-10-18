.class public Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
.source "SourceFile"


# instance fields
.field public checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

.field public checkedFontColor2:Lcom/badlogic/gdx/graphics/Color;

.field public disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

.field public disabledFontColor2:Lcom/badlogic/gdx/graphics/Color;

.field public downFontColor:Lcom/badlogic/gdx/graphics/Color;

.field public downFontColor2:Lcom/badlogic/gdx/graphics/Color;

.field public font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public font2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public fontColor:Lcom/badlogic/gdx/graphics/Color;

.field public fontColor2:Lcom/badlogic/gdx/graphics/Color;

.field public overFontColor:Lcom/badlogic/gdx/graphics/Color;

.field public overFontColor2:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 139
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 140
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->font2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 141
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 142
    :cond_0
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 143
    :cond_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 144
    :cond_2
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 145
    :cond_3
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_4

    .line 146
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 147
    :cond_4
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor2:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->downFontColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 148
    :cond_5
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor2:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->fontColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 149
    :cond_6
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor2:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_7

    .line 150
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->checkedFontColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 151
    :cond_7
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor2:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->overFontColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 152
    :cond_8
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor2:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_9

    .line 153
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/AudibleTwoTextButton$TwoTextButtonStyle;->disabledFontColor2:Lcom/badlogic/gdx/graphics/Color;

    .line 154
    :cond_9
    return-void
.end method
