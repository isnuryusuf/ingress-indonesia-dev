.class public final Lcom/nianticproject/ingress/common/factionchoice/ba;
.super Lcom/nianticproject/ingress/common/missions/a/a;
.source "SourceFile"


# instance fields
.field private final d:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p3}, Lcom/nianticproject/ingress/common/missions/a/a;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->h:Z

    .line 37
    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x3f666666

    .line 51
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 54
    const-string/jumbo v0, "jarvis-terminal"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 56
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const-string/jumbo v2, "EXEC->PATCH.JARVIS.*\nWRITING.\nWRITE OK.\n"

    const/high16 v3, 0x4270

    invoke-direct {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setWrap(Z)V

    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    mul-float v1, p2, v4

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setWidth(F)V

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->layout()V

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const v6, 0x3f666666

    const/4 v3, 0x0

    .line 89
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Welcome, friend, to the struggle for a brighter age.  Recruit the like minded for the Enlightened.\n\nSeek the future.  Find a nearby Portal.  Claim it.  XM is power.  XM is evolution.  XM is all.  Spread the enlightenment.\n\n- Collect XM\n- Discover and claim new Portals\n- Link Portals to form XM Fields\n- Dismantle Resistance XM Fields\n\n"

    const-string/jumbo v0, "jarvis-message-label"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 92
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 93
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 94
    mul-float v0, p2, v6

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    .line 95
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    .line 97
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/h;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    sget-object v4, Lcom/nianticproject/ingress/common/c/bs;->l:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/bs;->c()F

    move-result v4

    const v5, 0x3d4ccccd

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/h;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;FFF)V

    .line 105
    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollPercentY(F)V

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollingDisabled(ZZ)V

    .line 108
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 109
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 110
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v6}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v6}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3dcccccd

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->e(Lcom/a/a/e;)Lcom/a/a/c;

    .line 117
    return-object v1
.end method

.method protected final c(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    const/4 v3, 0x0

    const-string/jumbo v4, "Proceed"

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/factionchoice/ba;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Ljava/lang/String;Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/j;

    const v1, -0x42b33333

    const v2, 0x3ee66666

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/missions/a/j;-><init>(FF)V

    .line 43
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a/j;->b(F)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/ba;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->c:Lcom/nianticproject/ingress/common/ui/ac;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/ba;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 46
    return-void
.end method

.method protected final r_()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->h:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "PATCH INSTALLED."

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v4, "jarvis-terminal-red"

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 82
    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/factionchoice/ba;->h:Z

    .line 84
    :cond_0
    return v5
.end method
