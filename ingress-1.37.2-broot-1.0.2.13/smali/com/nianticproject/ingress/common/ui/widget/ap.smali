.class public Lcom/nianticproject/ingress/common/ui/widget/ap;
.super Lcom/nianticproject/ingress/common/ui/widget/f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/i/d;

.field private final b:Lcom/nianticproject/ingress/common/i/d;

.field private final c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ap;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/ap;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 98
    iput-boolean p3, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->d:Z

    .line 101
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 103
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    .line 105
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v1

    instance-of v1, v1, Lcom/nianticproject/ingress/common/i/d;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 106
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/i/d;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->a:Lcom/nianticproject/ingress/common/i/d;

    .line 108
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    .line 110
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v1

    instance-of v1, v1, Lcom/nianticproject/ingress/common/i/d;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 111
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/i/d;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->b:Lcom/nianticproject/ingress/common/i/d;

    .line 112
    return-void

    .line 97
    :cond_1
    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/ap;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 75
    instance-of v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    .line 77
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 78
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 81
    :goto_0
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 83
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    .line 85
    new-instance v1, Lcom/nianticproject/ingress/common/i/d;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/i/d;-><init>()V

    .line 86
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/i/d;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 87
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 89
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->a:Lcom/nianticproject/ingress/common/i/d;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/i/d;->a(F)V

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->b:Lcom/nianticproject/ingress/common/i/d;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/i/d;->a(F)V

    .line 130
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->d:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method protected final a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ap;->c:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ap;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 142
    :cond_0
    return-void
.end method

.method protected final a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/widget/f;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 146
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/widget/f;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ap;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 136
    return-void
.end method
