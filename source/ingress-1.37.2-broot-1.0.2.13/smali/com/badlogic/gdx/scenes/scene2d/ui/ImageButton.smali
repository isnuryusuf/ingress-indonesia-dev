.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "SourceFile"


# instance fields
.field private final image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 43
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 46
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->setWidth(F)V

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->setHeight(F)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V

    .line 61
    return-void
.end method

.method private updateImage()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->isPressed()Z

    move-result v0

    .line 76
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->isChecked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->updateImage()V

    .line 86
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 87
    return-void
.end method

.method public getImage()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v0
.end method

.method public getImageCell()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    return-object v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style must be an ImageButtonStyle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 66
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->updateImage()V

    .line 68
    :cond_1
    return-void
.end method
