.class public Lcom/nianticproject/ingress/common/ui/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private final a:Lcom/badlogic/gdx/graphics/Color;

.field private b:F

.field private c:F

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nianticproject/ingress/common/ui/widget/t;-><init>(FFFLcom/badlogic/gdx/graphics/Color;)V

    .line 79
    return-void
.end method

.method public constructor <init>(FFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->g:F

    .line 62
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->h:F

    .line 63
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 64
    iput p3, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->c:F

    .line 65
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->c:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->b:F

    .line 66
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 98
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->c:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->b:F

    div-float/2addr v0, v1

    .line 99
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->h:F

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->g:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 100
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setColor(FFFF)V

    .line 103
    :cond_0
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/common/ui/ad;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/u;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, p0}, Lcom/nianticproject/ingress/common/ui/widget/u;-><init>(Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/common/ui/ad;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 83
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string/jumbo v2, "white"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setX(F)V

    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setY(F)V

    .line 86
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->e:F

    .line 87
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->f:F

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->e:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->f:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setHeight(F)V

    .line 92
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/t;->a()V

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 95
    return-void
.end method

.method public a(F)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 108
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->c:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->c:F

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/t;->a()V

    .line 111
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/t;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->remove()Z

    .line 117
    return-void
.end method
