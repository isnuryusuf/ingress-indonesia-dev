.class final Lcom/nianticproject/ingress/common/scanner/visuals/av;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/av;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    .line 145
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController$HackResultsDialogStyle;-><init>()V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 159
    const/high16 v0, 0x4180

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 162
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/av;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->a(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/av;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->b(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 164
    add-int/lit8 v1, p3, -0x20

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    .line 165
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 167
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    .line 168
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 172
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/av;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->c(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 173
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->b()I

    move-result v0

    rem-int v0, v2, v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/av;->a:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->c(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;

    .line 179
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    iget-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->j:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->d(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string/jumbo v3, "menu-item-button-list"

    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v1, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v6, "OPEN"

    invoke-direct {v3, v6, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/at;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/at;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/as;)V

    invoke-virtual {v3, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v1

    const/high16 v3, 0x4080

    invoke-virtual {v1, v3}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    :cond_1
    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->g:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v7, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->j:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v7}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->e(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    :cond_2
    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->j:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->e(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    iget-boolean v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->g:Z

    if-eqz v3, :cond_3

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->j:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->e(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->e:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->h:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->d()I

    move-result v7

    if-le v6, v7, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->d()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v6, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    :cond_5
    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v1

    const/high16 v3, 0x4180

    invoke-virtual {v1, v3}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v1

    const/high16 v3, 0x4080

    invoke-virtual {v1, v3}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v1

    .line 181
    iget-boolean v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->h:Z

    if-eqz v3, :cond_6

    .line 183
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 172
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 186
    :cond_6
    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->f:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    .line 187
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/as;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->j:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->e(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    goto :goto_1

    .line 189
    :cond_7
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/a/a/c;

    goto :goto_1

    .line 193
    :cond_8
    return-object v4
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    const-string/jumbo v0, "subtle-dialog-bg"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 151
    return-void
.end method
