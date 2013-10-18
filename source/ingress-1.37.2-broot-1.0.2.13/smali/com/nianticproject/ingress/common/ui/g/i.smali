.class final Lcom/nianticproject/ingress/common/ui/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/g/a;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/inventory/ui/q;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

.field private final d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private final f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private final h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final i:Lcom/nianticproject/ingress/common/j/d;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ILcom/nianticproject/ingress/shared/n;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 69
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/g/i;->a:Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 70
    iput-object p5, p0, Lcom/nianticproject/ingress/common/ui/g/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 72
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-direct {v0, p5}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 75
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 76
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 84
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const-string/jumbo v1, "level-background"

    invoke-virtual {p5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 91
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/i;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/i;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 94
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 97
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalLocation()Lcom/google/a/d/u;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->row()Lcom/a/a/c;

    .line 102
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 105
    invoke-interface {p4}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    .line 107
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    double-to-float v0, v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/l;->a(F)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "small"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p5, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/i;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    .line 112
    invoke-interface {p4}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "portal-faction-aliens"

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v1

    .line 113
    :goto_1
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 117
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 118
    const-string/jumbo v0, "[ %d ]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 122
    :goto_2
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v0, "small"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p5, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 123
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    .line 126
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, -0x3f80

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 128
    if-nez p7, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "primary-info"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-static {v1, p7}, Lcom/nianticproject/ingress/common/ui/g/j;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/shared/n;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 129
    invoke-virtual {p0, p6}, Lcom/nianticproject/ingress/common/ui/g/i;->a(I)V

    .line 131
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/f;->a(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->i:Lcom/nianticproject/ingress/common/j/d;

    .line 133
    return-void

    .line 112
    :cond_0
    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "portal-faction-resistance"

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 120
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_2

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "orange"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->a:Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 160
    if-gez p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "L%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/g/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v4, "small-font"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v1, v2, p1}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->a:Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->i:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    .line 182
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->i:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->i:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/g/i;->i:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/i;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    .line 177
    :cond_0
    return-void
.end method
