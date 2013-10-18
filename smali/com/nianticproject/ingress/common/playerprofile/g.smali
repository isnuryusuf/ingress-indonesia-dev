.class final Lcom/nianticproject/ingress/common/playerprofile/g;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/av;

.field private final b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private e:Lcom/nianticproject/ingress/common/j/d;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 34
    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->f:Z

    .line 38
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->a:Lcom/nianticproject/ingress/common/j/av;

    .line 39
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 40
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/az;

    const-string/jumbo v1, "item-button-selection"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    const v2, 0xffc85e

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;I)V

    .line 43
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v1, v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 44
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 45
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v2

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 50
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v2, v0, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/g;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 55
    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/common/playerprofile/g;->a(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    return-object v0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    .line 81
    return-void
.end method

.method public final act(F)V
    .locals 4
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 65
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->f:Z

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->e:Lcom/nianticproject/ingress/common/j/d;

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->a:Lcom/nianticproject/ingress/common/j/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/g;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/g;->getHeight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->e:Lcom/nianticproject/ingress/common/j/d;

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->e:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->e:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->f:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->f:Z

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->e:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->e:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    .line 88
    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->e:Lcom/nianticproject/ingress/common/j/d;

    .line 90
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "option"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/g;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
