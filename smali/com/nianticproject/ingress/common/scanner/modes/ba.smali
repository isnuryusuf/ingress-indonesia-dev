.class public final Lcom/nianticproject/ingress/common/scanner/modes/ba;
.super Lcom/nianticproject/ingress/common/scanner/modes/ag;
.source "SourceFile"


# instance fields
.field private final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            ">;"
        }
    .end annotation
.end field

.field private B:F

.field private C:Lcom/nianticproject/ingress/common/model/GameState;

.field private D:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private E:F

.field private F:Z

.field private G:Lcom/nianticproject/ingress/common/ui/a/c;

.field private H:Lcom/nianticproject/ingress/common/ui/a/c;

.field private I:Z

.field protected g:Lcom/nianticproject/ingress/gameentity/f;

.field protected h:Lcom/nianticproject/ingress/shared/r;

.field private i:Lcom/nianticproject/ingress/gameentity/components/Portal;

.field private final j:Lcom/nianticproject/ingress/common/h/l;

.field private final k:Lcom/nianticproject/ingress/common/model/k;

.field private final l:Lcom/nianticproject/ingress/gameentity/f;

.field private m:Lcom/nianticproject/ingress/common/model/ab;

.field private n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

.field private o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

.field private p:Lcom/nianticproject/ingress/common/ui/widget/as;

.field private q:Lcom/nianticproject/ingress/common/scanner/modes/af;

.field private r:Lcom/nianticproject/ingress/common/ui/widget/al;

.field private s:Z

.field private t:F

.field private u:Lcom/nianticproject/ingress/common/j/as;

.field private v:Z

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/ui/hud/e;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/r;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/ab;Ljava/util/Set;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/scanner/k;",
            "Lcom/nianticproject/ingress/common/scanner/modes/j;",
            "Lcom/nianticproject/ingress/common/scanner/ej;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/common/h/l;",
            "Lcom/nianticproject/ingress/common/model/k;",
            "Lcom/nianticproject/ingress/common/model/ab;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            ">;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/modes/ag;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 99
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->s:Z

    .line 104
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->w:Ljava/util/Map;

    .line 105
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->x:Ljava/util/Map;

    .line 106
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->y:Ljava/util/Map;

    .line 107
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/a/c/hc;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->z:Ljava/util/Map;

    .line 108
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->E:F

    .line 119
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->F:Z

    .line 135
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 136
    iput-object p5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->j:Lcom/nianticproject/ingress/common/h/l;

    .line 137
    iput-object p6, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    invoke-interface {v0, p8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 139
    iput-object p9, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->l:Lcom/nianticproject/ingress/gameentity/f;

    .line 140
    iput-object p7, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m:Lcom/nianticproject/ingress/common/model/ab;

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 142
    invoke-virtual {p0, p6}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/model/k;)V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->B:F

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/nianticproject/ingress/common/model/ab;)Lcom/nianticproject/ingress/common/model/ab;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m:Lcom/nianticproject/ingress/common/model/ab;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/nianticproject/ingress/common/scanner/modes/af;)Lcom/nianticproject/ingress/common/scanner/modes/af;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEnergyCapacity()I

    move-result v0

    int-to-double v1, v0

    .line 552
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Energy;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Energy;

    .line 553
    if-eqz v0, :cond_0

    .line 554
    const-wide/high16 v3, 0x4059

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Energy;->getTotal()I

    move-result v0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    div-double v0, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->f()V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/as;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/bb;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/modes/bb;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->j:Lcom/nianticproject/ingress/common/h/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->u:Lcom/nianticproject/ingress/common/j/as;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/widget/as;-><init>(Lcom/nianticproject/ingress/common/ui/widget/at;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;ZLcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/as;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->C:Lcom/nianticproject/ingress/common/model/GameState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->C:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/g;)V

    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/as;->getPrefHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->G:Lcom/nianticproject/ingress/common/ui/a/c;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/al;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nianticproject/ingress/common/ui/widget/al;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->a()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->c()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->b()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->d()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    const-string/jumbo v0, "stats-rarity-bg"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->D:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->D:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ca3d70a

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->H:Lcom/nianticproject/ingress/common/ui/a/c;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fu;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/c;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->c:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ea;->t:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/c;->c()V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/c;->d()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/fu;->b(Lcom/nianticproject/ingress/common/j/o;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/components/Portal;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    return-object v0
.end method

.method private static b(Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 538
    if-nez p0, :cond_0

    .line 547
    :goto_0
    return-object v0

    .line 541
    :cond_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 542
    if-nez v1, :cond_1

    .line 544
    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->a:Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v2, "Orphaned Resonator"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/a/b;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_1
    invoke-static {v1, p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/Double;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/ae;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->u:Lcom/nianticproject/ingress/common/j/as;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ae;-><init>(Lcom/nianticproject/ingress/common/j/as;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m:Lcom/nianticproject/ingress/common/model/ab;

    sget-object v3, Lcom/nianticproject/ingress/common/model/ab;->c:Lcom/nianticproject/ingress/common/model/ab;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->e()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    return-void
.end method

.method private static c(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/Double;
    .locals 1
    .parameter

    .prologue
    .line 524
    if-nez p0, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 530
    :goto_0
    return-object v0

    .line 527
    :cond_0
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 529
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->l:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method private e()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v5

    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v2

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    const-string/jumbo v1, "Distance: %s"

    new-array v7, v3, [Ljava/lang/Object;

    double-to-float v8, v5

    invoke-static {v8}, Lcom/nianticproject/ingress/common/ui/l;->a(F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->a(Ljava/lang/String;)V

    .line 198
    const-wide/16 v0, 0x0

    .line 200
    int-to-long v7, v2

    const-wide/32 v9, 0x3d090

    mul-long/2addr v7, v9

    long-to-double v7, v7

    cmpg-double v2, v5, v7

    if-gez v2, :cond_1

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    .line 201
    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v2

    int-to-long v7, v2

    const-wide v9, 0x407f400000000000L

    long-to-double v7, v7

    mul-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    div-double/2addr v5, v7

    sub-double/2addr v0, v5

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    const-string/jumbo v5, "Range efficiency: %.1f %%"

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/high16 v6, 0x4059

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->b(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->b()Lcom/nianticproject/ingress/common/ui/widget/an;

    move-result-object v2

    double-to-float v0, v0

    invoke-virtual {v2, v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/an;->a(FZ)V

    .line 208
    return-void

    :cond_1
    move v2, v4

    .line 200
    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->l:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a(Lcom/nianticproject/ingress/common/scanner/modes/bd;Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V

    .line 254
    :cond_1
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->z:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i()V

    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 329
    .line 330
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->C:Lcom/nianticproject/ingress/common/model/GameState;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 335
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->C:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-virtual {v0, v2, v1}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/g;)V

    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/p;)V

    .line 337
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->r:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->D:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ea;->H:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 340
    :cond_0
    return-void

    :cond_1
    move-object v2, v4

    goto :goto_0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h:Lcom/nianticproject/ingress/shared/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h:Lcom/nianticproject/ingress/shared/r;

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a(Lcom/nianticproject/ingress/common/scanner/modes/bd;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m:Lcom/nianticproject/ingress/common/model/ab;

    sget-object v2, Lcom/nianticproject/ingress/common/model/ab;->b:Lcom/nianticproject/ingress/common/model/ab;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->j:Lcom/nianticproject/ingress/common/h/l;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/modes/bc;

    invoke-direct {v3, p0, v4}, Lcom/nianticproject/ingress/common/scanner/modes/bc;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;B)V

    invoke-interface {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/h/l;->a(Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getOccupiedSlots()Lcom/google/a/c/du;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->l:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m:Lcom/nianticproject/ingress/common/model/ab;

    sget-object v2, Lcom/nianticproject/ingress/common/model/ab;->c:Lcom/nianticproject/ingress/common/model/ab;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->j:Lcom/nianticproject/ingress/common/h/l;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->l:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/modes/bc;

    invoke-direct {v3, p0, v4}, Lcom/nianticproject/ingress/common/scanner/modes/bc;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;B)V

    invoke-interface {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/h/l;->b(Ljava/lang/String;Ljava/util/Set;Lcom/nianticproject/ingress/common/x/g;)V

    goto :goto_1
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->F:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->s:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->E:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->s:Z

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->z:Ljava/util/Map;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->F:Z

    .line 384
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/scanner/modes/ba;)F
    .locals 1
    .parameter

    .prologue
    .line 73
    const v0, 0x40333333

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->E:F

    return v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 562
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 563
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 564
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEntityGuid()Ljava/lang/String;

    move-result-object v3

    .line 566
    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_0

    .line 568
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->w:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 573
    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/af;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/j/as;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->u:Lcom/nianticproject/ingress/common/j/as;

    return-object v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/bd;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    return-object v0
.end method

.method static synthetic n(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->w:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic o(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->x:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic p(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->y:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/a/d/u;Lcom/google/a/d/u;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a:Z

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->e()V

    .line 433
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/google/a/d/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->A:Ljava/util/Set;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k:Lcom/nianticproject/ingress/common/model/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->l:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a(Lcom/nianticproject/ingress/common/scanner/modes/bd;Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->u:Lcom/nianticproject/ingress/common/j/as;

    .line 148
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 150
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bd;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/bd;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 153
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->j()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->v:Z

    .line 156
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 4
    .parameter

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 283
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->C:Lcom/nianticproject/ingress/common/model/GameState;

    .line 289
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 290
    if-eqz v0, :cond_3

    .line 291
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v0, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g()V

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 297
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 300
    if-eqz v1, :cond_0

    .line 301
    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v1, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 302
    if-eqz v1, :cond_0

    .line 303
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->f()V

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-virtual {v0, v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/g;)V

    .line 312
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->B:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->g:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/Double;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/shared/r;)V

    .line 326
    :cond_2
    :goto_1
    return-void

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c()V

    goto :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 6
    .parameter

    .prologue
    const v2, 0x43408000

    const/high16 v3, 0x4220

    const/4 v4, 0x0

    .line 261
    if-nez p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    const v5, 0x3dcccccd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/ej;FFFF)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    const v5, 0x3e428f5c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/ej;FFFF)V

    goto :goto_0
.end method

.method public final a(F)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x4000

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 388
    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->t:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 389
    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->t:F

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->t:F

    .line 390
    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->t:F

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->j()V

    .line 394
    :cond_0
    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->v:Z

    if-eqz v3, :cond_1

    .line 396
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->v:Z

    .line 397
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->d()V

    .line 400
    :cond_1
    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->B:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_2

    .line 401
    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->B:F

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->B:F

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m:Lcom/nianticproject/ingress/common/model/ab;

    sget-object v4, Lcom/nianticproject/ingress/common/model/ab;->c:Lcom/nianticproject/ingress/common/model/ab;

    if-ne v3, v4, :cond_3

    const/high16 v0, 0x3f80

    .line 406
    :cond_3
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 407
    cmpg-float v4, v3, v0

    if-gez v4, :cond_6

    .line 408
    mul-float v4, v5, p1

    add-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 409
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput v0, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 416
    :cond_4
    :goto_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->E:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->E:F

    .line 418
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->I:Z

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h()Z

    move-result v3

    if-eq v0, v3, :cond_5

    .line 419
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->I:Z

    .line 420
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->G:Lcom/nianticproject/ingress/common/ui/a/c;

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->I:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 421
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->H:Lcom/nianticproject/ingress/common/ui/a/c;

    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->I:Z

    if-nez v3, :cond_8

    :goto_2
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 424
    :cond_5
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(F)Z

    move-result v0

    return v0

    .line 410
    :cond_6
    cmpl-float v4, v3, v0

    if-lez v4, :cond_4

    .line 411
    mul-float v4, v5, p1

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 412
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput v0, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_7
    move v0, v2

    .line 420
    goto :goto_1

    :cond_8
    move v1, v2

    .line 421
    goto :goto_2
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 2
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/shared/r;)V

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i()V

    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->b()V

    .line 345
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->e()V

    .line 347
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ae;->e()V

    .line 352
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o:Lcom/nianticproject/ingress/common/scanner/modes/ae;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->a()V

    .line 357
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p:Lcom/nianticproject/ingress/common/ui/widget/as;

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/af;->e()V

    .line 362
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->q:Lcom/nianticproject/ingress/common/scanner/modes/af;

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/e;

    .line 366
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    goto :goto_0

    .line 368
    :cond_4
    return-void
.end method
