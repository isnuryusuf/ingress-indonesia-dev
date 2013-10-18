.class public Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public disabledButtonStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field public enabledButtonStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field public errorLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public mainDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public subDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public subLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 244
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 245
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 246
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 247
    iput-object p5, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->errorLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 248
    iput-object p7, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->enabledButtonStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 249
    iput-object p8, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->disabledButtonStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 250
    return-void
.end method


# virtual methods
.method public setScale(F)Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->errorLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->errorLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 273
    :cond_4
    return-object p0
.end method
