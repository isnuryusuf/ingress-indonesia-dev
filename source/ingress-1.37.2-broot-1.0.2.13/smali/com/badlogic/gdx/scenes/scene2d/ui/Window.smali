.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field final dragOffset:Lcom/badlogic/gdx/math/Vector2;

.field dragging:Z

.field isModal:Z

.field isMovable:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

.field private title:Ljava/lang/String;

.field private titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x4316

    .line 57
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    .line 58
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "title cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setClip(Z)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setWidth(F)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setHeight(F)V

    .line 66
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 72
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 85
    return-void
.end method


# virtual methods
.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 118
    return-void
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    return-object v0
.end method

.method getTitleBarHeight()F
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/e;->c(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    return v0
.end method

.method public layout()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 107
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout()V

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTitleBarHeight()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    div-float/2addr v0, v6

    add-float/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 111
    return-void
.end method

.method public setModal(Z)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    .line 140
    return-void
.end method

.method public setMovable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 136
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .line 90
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 91
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->invalidateHierarchy()V

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    .line 128
    return-void
.end method
