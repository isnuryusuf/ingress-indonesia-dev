.class public Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;
.source "SourceFile"


# instance fields
.field private sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 38
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 45
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 46
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 47
    return-void
.end method

.method public getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    return-object v0
.end method

.method public setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 51
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setMinWidth(F)V

    .line 52
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setMinHeight(F)V

    .line 53
    return-void
.end method
