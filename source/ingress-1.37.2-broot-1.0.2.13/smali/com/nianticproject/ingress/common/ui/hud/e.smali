.class public abstract Lcom/nianticproject/ingress/common/ui/hud/e;
.super Lcom/nianticproject/ingress/common/ui/hud/a;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/hud/b;


# instance fields
.field private final a:F

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method private constructor <init>(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/hud/a;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 52
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->a:F

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    if-eqz p4, :cond_0

    .line 55
    const-string/jumbo v1, "Critical! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->b:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JZLjava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/nianticproject/ingress/common/ui/hud/e;-><init>(Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .parameter

    .prologue
    .line 74
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->c:Ljava/lang/String;

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    const v2, 0x3f4ccccd

    .line 67
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->g:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->a:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 68
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->a:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->g:F

    .line 70
    :cond_0
    return-void
.end method

.method public final a(F)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x3f4ccccd

    .line 89
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->g:F

    .line 90
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->g:F

    const v1, 0x3ecccccd

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->e:F

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->f:F

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v4

    sub-float/2addr v3, v2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setY(F)V

    .line 93
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->g:F

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->a:F

    sub-float/2addr v3, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    mul-float/2addr v0, v1

    iput v0, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 97
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/hud/a;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->g:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setX(F)V

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->e:F

    .line 82
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/e;->f:F

    .line 83
    return-void
.end method
