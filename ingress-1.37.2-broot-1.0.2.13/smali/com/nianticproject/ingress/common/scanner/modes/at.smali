.class public Lcom/nianticproject/ingress/common/scanner/modes/at;
.super Lcom/nianticproject/ingress/common/scanner/modes/ag;
.source "SourceFile"


# static fields
.field private static final g:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private h:Lcom/nianticproject/ingress/gameentity/f;

.field private i:Lcom/nianticproject/ingress/common/model/k;

.field private j:Lcom/nianticproject/ingress/common/model/GameState;

.field private final k:Lcom/nianticproject/ingress/common/h/l;

.field private l:Z

.field private m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

.field private n:Lcom/nianticproject/ingress/common/scanner/modes/af;

.field private o:Lcom/nianticproject/ingress/common/scanner/visuals/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/modes/at;->g:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-interface {p6}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    invoke-direct {p0, p1, p5, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 124
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-static {p6, v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->a(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 126
    iput-object p6, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    .line 127
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->j:Lcom/nianticproject/ingress/common/model/GameState;

    .line 128
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->i:Lcom/nianticproject/ingress/common/model/k;

    .line 129
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->k:Lcom/nianticproject/ingress/common/h/l;

    .line 131
    invoke-virtual {p0, p3}, Lcom/nianticproject/ingress/common/scanner/modes/at;->a(Lcom/nianticproject/ingress/common/model/k;)V

    .line 132
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->d()V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/scanner/modes/aw;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/at;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/at;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->l:Z

    return p1
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 160
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 161
    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/model/GameState;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->j:Lcom/nianticproject/ingress/common/model/GameState;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->i:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/h/l;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->k:Lcom/nianticproject/ingress/common/h/l;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/modes/at;)Z
    .locals 3
    .parameter

    .prologue
    .line 76
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->i:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/modes/at;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/modes/at;)V
    .locals 6
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->n:Lcom/nianticproject/ingress/common/scanner/modes/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->n:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->n:Lcom/nianticproject/ingress/common/scanner/modes/af;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    check-cast v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->d()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->e()I

    move-result v2

    if-eqz v1, :cond_1

    if-ltz v2, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/modes/at;->g:Lcom/nianticproject/ingress/common/w/aa;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    const-string/jumbo v3, "Installing..."

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/i;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->i:Lcom/nianticproject/ingress/common/model/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/nianticproject/ingress/common/scanner/modes/i;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/i;->a()V

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/modes/au;

    invoke-direct {v3, p0, v2, v0}, Lcom/nianticproject/ingress/common/scanner/modes/au;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/at;ILcom/nianticproject/ingress/common/scanner/modes/i;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    const-class v4, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->k:Lcom/nianticproject/ingress/common/h/l;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0, v2, v3}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Modable;ILcom/nianticproject/ingress/common/x/g;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/a/d/u;Lcom/google/a/d/u;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0, p1, p2}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/google/a/d/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    check-cast v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    .line 221
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/l;->b()V

    .line 224
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 4
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 184
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/at;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 187
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->n()Lcom/nianticproject/ingress/common/j/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;-><init>(Lcom/nianticproject/ingress/common/j/h;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a:Lcom/nianticproject/ingress/common/ui/widget/al;

    const v2, -0x435c28f6

    const/high16 v3, 0x3f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/common/scanner/modes/aw;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string/jumbo v2, "ochre-line"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 191
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/common/scanner/modes/aw;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string/jumbo v2, "ochre-line"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b(Lcom/badlogic/gdx/graphics/Color;)V

    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    const v1, 0x3d6147ae

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b(F)V

    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/nianticproject/ingress/common/j/f;)V

    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 195
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 2
    .parameter

    .prologue
    .line 228
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/GameState;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->j:Lcom/nianticproject/ingress/common/model/GameState;

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->j:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 237
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/at;->a(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    .line 240
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {v0, v1}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/o;->a(Lcom/nianticproject/ingress/common/model/GameState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->b(Lcom/nianticproject/ingress/common/scanner/modes/aw;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->c(Lcom/nianticproject/ingress/common/scanner/modes/aw;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V

    .line 257
    :cond_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {v0, v1}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->d(Lcom/nianticproject/ingress/common/scanner/modes/aw;)V

    .line 263
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e:Lcom/nianticproject/ingress/common/itemupgrade/o;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/itemupgrade/l;

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;)V

    .line 268
    :cond_2
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 275
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e(Lcom/nianticproject/ingress/common/scanner/modes/aw;)V

    .line 278
    :cond_0
    return v0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->b()V

    .line 200
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->e()V

    .line 202
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->m:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->n:Lcom/nianticproject/ingress/common/scanner/modes/af;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->n:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/af;->e()V

    .line 207
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->n:Lcom/nianticproject/ingress/common/scanner/modes/af;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 212
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/at;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    .line 214
    :cond_2
    return-void
.end method
