.class public Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# instance fields
.field private bottomHeight:F

.field private leftWidth:F

.field private minHeight:F

.field private minWidth:F

.field private rightWidth:F

.field private topHeight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->leftWidth:F

    .line 32
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->rightWidth:F

    .line 33
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->topHeight:F

    .line 34
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->bottomHeight:F

    .line 35
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->minWidth:F

    .line 36
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->minHeight:F

    .line 37
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    return-void
.end method

.method public getBottomHeight()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->bottomHeight:F

    return v0
.end method

.method public getLeftWidth()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->leftWidth:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->minHeight:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->minWidth:F

    return v0
.end method

.method public getRightWidth()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->rightWidth:F

    return v0
.end method

.method public getTopHeight()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->topHeight:F

    return v0
.end method

.method public setBottomHeight(F)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->bottomHeight:F

    .line 72
    return-void
.end method

.method public setLeftWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->leftWidth:F

    .line 48
    return-void
.end method

.method public setMinHeight(F)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->minHeight:F

    .line 88
    return-void
.end method

.method public setMinWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->minWidth:F

    .line 80
    return-void
.end method

.method public setRightWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->rightWidth:F

    .line 56
    return-void
.end method

.method public setTopHeight(F)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/EmptyDrawable;->topHeight:F

    .line 64
    return-void
.end method
