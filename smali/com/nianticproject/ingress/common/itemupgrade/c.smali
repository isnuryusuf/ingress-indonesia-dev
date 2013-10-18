.class public final Lcom/nianticproject/ingress/common/itemupgrade/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private final E:Lcom/nianticproject/ingress/common/ui/a/c;

.field private F:Lcom/nianticproject/ingress/common/ui/a/c;

.field private G:Lcom/nianticproject/ingress/common/ui/a/c;

.field private H:F

.field private I:F

.field private J:Z

.field private K:Z

.field private L:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field protected final a:Lcom/nianticproject/ingress/common/model/k;

.field protected b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field protected c:Lcom/nianticproject/ingress/gameentity/f;

.field protected d:Lcom/nianticproject/ingress/common/scanner/modes/bf;

.field e:Lcom/nianticproject/ingress/common/ui/widget/au;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/nianticproject/ingress/common/ui/widget/w;

.field private i:Lcom/nianticproject/ingress/common/ui/widget/ar;

.field private j:Lcom/nianticproject/ingress/common/ui/widget/w;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/nianticproject/ingress/common/ui/widget/al;

.field private final n:Lcom/nianticproject/ingress/common/j/as;

.field private o:Lcom/nianticproject/ingress/shared/r;

.field private p:Lcom/nianticproject/ingress/gameentity/f;

.field private final q:Lcom/nianticproject/ingress/common/h/l;

.field private final r:Lcom/nianticproject/ingress/common/ui/widget/c;

.field private final s:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field private t:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private u:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private v:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private w:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private x:Lcom/nianticproject/ingress/common/ui/widget/as;

.field private y:F

.field private final z:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;Lcom/nianticproject/ingress/common/ui/a/c;Lcom/nianticproject/ingress/common/j/as;Lcom/nianticproject/ingress/common/scanner/modes/bf;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->f:Ljava/util/List;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->g:Z

    .line 140
    iput v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->y:F

    .line 142
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->A:Z

    .line 143
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->B:Z

    .line 144
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 145
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->D:Z

    .line 152
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    .line 156
    iput v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->I:F

    .line 158
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->J:Z

    .line 160
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->K:Z

    .line 162
    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/itemupgrade/d;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->L:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 426
    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/e;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/itemupgrade/e;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->e:Lcom/nianticproject/ingress/common/ui/widget/au;

    .line 322
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    .line 323
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    .line 324
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->s:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    .line 325
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/a/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->E:Lcom/nianticproject/ingress/common/ui/a/c;

    .line 326
    iput-object p4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->n:Lcom/nianticproject/ingress/common/j/as;

    .line 327
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    .line 328
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->f()Lcom/nianticproject/ingress/common/h/l;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->q:Lcom/nianticproject/ingress/common/h/l;

    .line 329
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->z:Lcom/nianticproject/ingress/common/scanner/k;

    .line 330
    iput-object p5, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->d:Lcom/nianticproject/ingress/common/scanner/modes/bf;

    .line 331
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    const-string/jumbo v1, "Entity is not a Portal"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->L:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 333
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->I:F

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;)Lcom/nianticproject/ingress/common/ui/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    return-object p1
.end method

.method private a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/Result;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    new-instance v0, Lcom/nianticproject/ingress/shared/ab;

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->b()Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/ab;-><init>(Lcom/nianticproject/ingress/knobs/PortalKnobBundle;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v2, :cond_0

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v4

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v5

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v6

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v8

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    invoke-virtual/range {v0 .. v9}, Lcom/nianticproject/ingress/shared/ab;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Resonator;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JILjava/lang/String;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v3

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v5

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v7

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/nianticproject/ingress/shared/ab;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JILjava/lang/String;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/shared/r;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(IZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 745
    if-ne p1, v5, :cond_0

    move p1, v1

    .line 749
    :cond_0
    const/4 v2, 0x0

    .line 750
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v5

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 751
    iget-object v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v8

    .line 752
    if-eqz v8, :cond_1

    .line 753
    const-class v4, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v8, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    .line 756
    invoke-static {v8}, Lcom/nianticproject/ingress/common/gameentity/g;->b(Lcom/nianticproject/ingress/gameentity/f;)I

    move-result v4

    .line 758
    if-ne v3, v5, :cond_3

    move v6, v1

    .line 759
    :goto_1
    if-eqz v6, :cond_9

    if-nez p2, :cond_2

    invoke-direct {p0, v8}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_2
    move v2, v4

    :goto_2
    move v3, v2

    move-object v2, v0

    .line 763
    goto :goto_0

    .line 758
    :cond_3
    sub-int v6, v3, p1

    sub-int v9, v4, p1

    if-gez v6, :cond_4

    if-gtz v9, :cond_6

    :cond_4
    if-lez v6, :cond_5

    if-gez v9, :cond_5

    move v6, v1

    goto :goto_1

    :cond_5
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v9, v6, :cond_6

    move v6, v1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 765
    :cond_7
    if-eqz v2, :cond_8

    .line 766
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/ar;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 768
    :cond_8
    return-void

    :cond_9
    move-object v0, v2

    move v2, v3

    goto :goto_2
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 783
    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    iget-object v3, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v3

    .line 786
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 788
    :goto_0
    if-ne p1, p2, :cond_1

    .line 789
    :goto_1
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 791
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->v:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 800
    :goto_2
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 801
    return-void

    :cond_0
    move v2, v1

    .line 786
    goto :goto_0

    :cond_1
    move v0, v1

    .line 788
    goto :goto_1

    .line 793
    :cond_2
    if-eqz v2, :cond_3

    .line 794
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->w:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    .line 795
    :cond_3
    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->t:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->u:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/shared/ad;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 93
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/high16 v1, 0x40a0

    iput v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->y:F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->l:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    :cond_1
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ad;->t:Lcom/nianticproject/ingress/shared/ad;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/itemupgrade/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->J:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/itemupgrade/c;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->g()V

    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/itemupgrade/c;)Lcom/nianticproject/ingress/common/scanner/k;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->z:Lcom/nianticproject/ingress/common/scanner/k;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/itemupgrade/c;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->j()V

    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/itemupgrade/c;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->i()I

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->K:Z

    .line 608
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    return v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 633
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    new-array v1, v4, [Lcom/nianticproject/ingress/shared/af;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;[Lcom/nianticproject/ingress/shared/af;)Ljava/util/Collection;

    move-result-object v0

    .line 634
    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 637
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 638
    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->D:Z

    .line 639
    return-void
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    return v0
.end method

.method private i()I
    .locals 2

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->l()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_0

    .line 647
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    .line 648
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v0

    .line 652
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->D:Z

    return v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ar;->d()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 772
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 773
    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    .line 775
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/itemupgrade/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->D:Z

    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->A:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "UPGRADE"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "CONFIRM"

    goto :goto_0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/itemupgrade/c;)V
    .locals 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    const-string/jumbo v0, "DeployResonatorScannerUi.doRefreshCarouselContents"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->h()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ar;->clear()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "large"

    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "small"

    const-class v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a()Lcom/nianticproject/ingress/shared/af;

    move-result-object v2

    sget-object v8, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    if-ne v2, v8, :cond_0

    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/google/a/a/an;->b(Z)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->f()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->e()I

    move-result v12

    invoke-static {v11, v5, v12}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->g()I

    move-result v0

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-le v0, v3, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v10, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v0, 0x12

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v11, Lcom/nianticproject/ingress/common/gameentity/g;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string/jumbo v12, "resonator_level_tint_icon"

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    const/16 v0, 0x9

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setAlign(I)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v11, v0, v4

    aput-object v10, v0, v3

    const/4 v2, 0x2

    aput-object v9, v0, v2

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-virtual {v0, v8}, Lcom/nianticproject/ingress/common/ui/widget/ar;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto/16 :goto_1

    :cond_0
    move v2, v4

    goto/16 :goto_2

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->A:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->B:Z

    if-nez v0, :cond_4

    :cond_3
    move v4, v3

    :cond_4
    invoke-direct {p0, v1, v4}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(IZ)V

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->j()V

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method private l()Lcom/nianticproject/ingress/gameentity/f;
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->K:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->J:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->I:F

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


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const v8, 0x3e99999a

    const/4 v4, 0x1

    .line 456
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 458
    const-string/jumbo v0, "item-disabled-selected"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->t:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 459
    const-string/jumbo v0, "item-disabled-unselected"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->u:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 460
    const-string/jumbo v0, "item-enabled-selected"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->v:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 461
    const-string/jumbo v0, "item-enabled-unselected"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->w:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 463
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v7

    .line 466
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/as;

    new-instance v1, Lcom/nianticproject/ingress/common/itemupgrade/f;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/itemupgrade/f;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;)V

    iget-object v5, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->q:Lcom/nianticproject/ingress/common/h/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->n:Lcom/nianticproject/ingress/common/j/as;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/widget/as;-><init>(Lcom/nianticproject/ingress/common/ui/widget/at;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;ZLcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/as;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    .line 485
    const-string/jumbo v0, "details-title"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 486
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/w;

    const-string/jumbo v2, " "

    invoke-direct {v1, v2, v0, v8}, Lcom/nianticproject/ingress/common/ui/widget/w;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    .line 487
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0, v10}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(I)V

    .line 490
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 491
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/w;->getPrefHeight()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 492
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 496
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->getPrefHeight()F

    move-result v0

    neg-float v0, v0

    const v2, 0x3e4ccccd

    mul-float/2addr v0, v2

    .line 497
    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/w;->getPrefHeight()F

    move-result v2

    neg-float v2, v2

    const v3, 0x3d8f5c29

    mul-float/2addr v2, v3

    .line 498
    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 500
    const-string/jumbo v0, "fc-error-message"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 501
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/w;

    const-string/jumbo v3, " "

    invoke-direct {v2, v3, v0, v8}, Lcom/nianticproject/ingress/common/ui/widget/w;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    .line 502
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0, v10}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(I)V

    .line 505
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 506
    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/w;->getPrefHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 508
    new-instance v2, Lcom/nianticproject/ingress/common/itemupgrade/g;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/itemupgrade/g;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;)V

    .line 527
    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 530
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 531
    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-direct {v3, p1, v9}, Lcom/nianticproject/ingress/common/ui/widget/al;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    .line 532
    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/al;->a()V

    .line 533
    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/al;->c()V

    .line 534
    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/al;->b()V

    .line 535
    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/al;->defaults()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 536
    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v3

    const v5, 0x3c23d70a

    invoke-static {v5}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/a/a/c;->g(Lcom/a/a/e;)Lcom/a/a/c;

    .line 538
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 539
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v1, v3, v9

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v0

    .line 540
    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->F:Lcom/nianticproject/ingress/common/ui/a/c;

    .line 541
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 543
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e6147ae

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 544
    int-to-float v0, v1

    const/high16 v3, 0x3f80

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 546
    const-string/jumbo v0, "modBrowser2"

    const-class v5, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    .line 547
    new-instance v5, Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-direct {v5, v1, v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/ar;-><init>(IILcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;)V

    iput-object v5, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    .line 548
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->G:Lcom/nianticproject/ingress/common/ui/a/c;

    .line 549
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    new-instance v1, Lcom/nianticproject/ingress/common/itemupgrade/h;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/itemupgrade/h;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ar;->a(Lcom/nianticproject/ingress/common/ui/widget/bc;)V

    .line 586
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 587
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 589
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->h()V

    .line 590
    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 592
    return-object v2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/shared/r;)V

    .line 598
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->g()V

    .line 599
    return-void
.end method

.method public final a(F)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 611
    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->y:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 612
    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->y:F

    .line 613
    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->y:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 619
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->I:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->I:F

    .line 620
    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    .line 621
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 622
    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    const/high16 v2, 0x4020

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    .line 626
    :cond_1
    :goto_0
    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/nianticproject/ingress/common/ui/widget/as;->setColor(FFFF)V

    .line 628
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/nianticproject/ingress/common/ui/widget/al;->setColor(FFFF)V

    .line 630
    :cond_2
    return-void

    .line 623
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->m()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 624
    iget v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    const/high16 v2, 0x40a0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->H:F

    goto :goto_0
.end method

.method public final a(Lcom/google/a/d/u;Lcom/google/a/d/u;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0, p1, p2}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/google/a/d/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->B:Z

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 355
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->j()V

    .line 357
    :cond_0
    return-void

    .line 352
    :cond_1
    invoke-static {p2, v0}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/gameentity/components/Portal;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 361
    :try_start_0
    const-string/jumbo v0, "DeployResonatorScannerUi.setGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 362
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    .line 365
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move v0, v3

    .line 420
    :goto_0
    return v0

    .line 371
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    new-instance v5, Lcom/nianticproject/ingress/common/itemupgrade/DeployResonatorScannerUi$2;

    invoke-direct {v5, p0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/DeployResonatorScannerUi$2;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;Lcom/nianticproject/ingress/common/model/GameState;)V

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/g;)V

    .line 378
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getFreeSlots()Lcom/google/a/c/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/du;->isEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->A:Z

    .line 381
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_2

    .line 383
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/gameentity/components/Portal;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->B:Z

    .line 387
    :cond_2
    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {v1, v4}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_6

    .line 392
    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    .line 396
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v1, :cond_4

    .line 397
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getResonatorAtOctant(Lcom/nianticproject/ingress/shared/r;)Ljava/lang/String;

    move-result-object v1

    .line 398
    iget-object v4, p1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v4, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    .line 401
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {v1, v4}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 402
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 406
    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    if-eqz v1, :cond_7

    .line 407
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v1, v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/g;)V

    .line 411
    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v0

    if-nez v0, :cond_8

    move v3, v2

    .line 413
    :cond_8
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->E:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Z)V

    .line 414
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->F:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Z)V

    .line 415
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->G:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Z)V

    .line 418
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 812
    return-void
.end method

.method protected final c()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 818
    const-string/jumbo v0, "DeployResonatorScannerUi.doUpdateLabels"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a()Z

    move-result v2

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->l()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    .line 823
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->q:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/h/l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    const-string/jumbo v2, "Deploying..."

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a()V

    .line 826
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a()V

    move v0, v1

    .line 869
    :goto_0
    if-nez v0, :cond_0

    .line 870
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "stats-rarity-bg"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ea;->H:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v5, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v0

    aget-object v0, v3, v0

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 873
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/p;)V

    .line 876
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a()V

    .line 880
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 881
    return-void

    .line 827
    :cond_2
    if-eqz v2, :cond_6

    .line 829
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    if-nez v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    const-string/jumbo v2, "Select a slot to upgrade"

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a()V

    .line 833
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 836
    :cond_3
    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v3

    if-nez v3, :cond_5

    .line 838
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/nianticproject/ingress/shared/ad;->F:Lcom/nianticproject/ingress/shared/ad;

    if-ne v3, v5, :cond_4

    .line 839
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    .line 840
    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v0

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->b()Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->a()Lcom/nianticproject/ingress/shared/ResonatorLimits;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/shared/ResonatorLimits;->a(I)I

    move-result v3

    const-string/jumbo v5, "Your L%d limit of %d reached for this portal"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    .line 844
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a()V

    .line 845
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    .line 842
    :cond_4
    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 848
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a()V

    .line 849
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "READY TO DEPLOY: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "Resonator"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1, v4}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 853
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v7

    .line 854
    invoke-static {v2}, Lcom/nianticproject/ingress/common/gameentity/g;->d(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    .line 855
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v5, "stats-rarity-bg"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 857
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->m:Lcom/nianticproject/ingress/common/ui/widget/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    new-instance v5, Lcom/nianticproject/ingress/gameentity/components/p;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v9, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    invoke-direct {v5, v8, v7, v9}, Lcom/nianticproject/ingress/gameentity/components/p;-><init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/Integer;Lcom/nianticproject/ingress/shared/r;)V

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/p;)V

    move v0, v6

    .line 860
    goto/16 :goto_0

    .line 864
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->h:Lcom/nianticproject/ingress/common/ui/widget/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/w;->a()V

    .line 865
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->j:Lcom/nianticproject/ingress/common/ui/widget/w;

    const-string/jumbo v2, "No Resonators"

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/w;->a(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 7

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->l()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    .line 981
    if-eqz v2, :cond_0

    .line 984
    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->C:Z

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_3

    .line 990
    invoke-static {v2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    const-string/jumbo v1, "Upgrading..."

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->p:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/itemupgrade/k;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->q:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    new-instance v5, Lcom/nianticproject/ingress/common/itemupgrade/i;

    const-string/jumbo v6, "UpgradeResonatorUi.upgrade"

    invoke-direct {v5, p0, v6, v0}, Lcom/nianticproject/ingress/common/itemupgrade/i;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;Ljava/lang/String;Lcom/nianticproject/ingress/common/itemupgrade/k;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/common/x/g;)V

    .line 995
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->e:Lcom/nianticproject/ingress/common/ui/widget/au;

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/common/ui/widget/au;)Lcom/nianticproject/ingress/shared/r;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/shared/r;)V

    goto :goto_0

    .line 992
    :cond_3
    invoke-static {v2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->r:Lcom/nianticproject/ingress/common/ui/widget/c;

    const-string/jumbo v1, "Deploying..."

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/c;->b(Ljava/lang/String;)V

    const/16 v0, 0xff

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->o:Lcom/nianticproject/ingress/shared/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v0

    move v1, v0

    :goto_2
    new-instance v3, Lcom/nianticproject/ingress/common/itemupgrade/k;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/k;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->q:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v5, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    new-instance v5, Lcom/nianticproject/ingress/common/itemupgrade/j;

    const-string/jumbo v6, "DeployResonatorUi.deploy"

    invoke-direct {v5, p0, v6, v3}, Lcom/nianticproject/ingress/common/itemupgrade/j;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/c;Ljava/lang/String;Lcom/nianticproject/ingress/common/itemupgrade/k;)V

    invoke-interface {v4, v2, v0, v5, v1}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/x/g;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/itemupgrade/k;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 1003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->g:Z

    .line 1004
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->i:Lcom/nianticproject/ingress/common/ui/widget/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ar;->a(Lcom/nianticproject/ingress/common/ui/widget/bc;)V

    .line 1005
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->x:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->a()V

    .line 1006
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->s:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/c;->L:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 1007
    return-void
.end method
