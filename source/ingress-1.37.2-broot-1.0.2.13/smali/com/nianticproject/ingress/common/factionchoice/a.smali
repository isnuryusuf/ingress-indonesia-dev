.class public final Lcom/nianticproject/ingress/common/factionchoice/a;
.super Lcom/nianticproject/ingress/common/missions/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/ao;


# instance fields
.field private final d:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p3}, Lcom/nianticproject/ingress/common/missions/a/a;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/t;)V

    .line 36
    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 37
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 46
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Authenticating operative code"

    const-string/jumbo v0, "fc-message"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 56
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 57
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a()Lcom/nianticproject/ingress/common/ui/widget/an;

    move-result-object v1

    const v2, 0x3f2a7efa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/an;->a(FZ)V

    .line 59
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a()Lcom/nianticproject/ingress/common/ui/widget/an;

    move-result-object v1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/an;->a(FZ)V

    .line 60
    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ao;)V

    .line 61
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 112
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "Authentication complete."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const v7, 0x3f666666

    const/4 v3, 0x0

    const/high16 v6, 0x4120

    .line 72
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Authentication complete.  You are now a Humanist agent.  Our struggle is only beginning.  If you know others who want to save the future, initiate them.\n\nKeep Exploring.  Find a Portal near you.  Claim it.  Save humanity.  Save yourself.  Resist corrupting thoughts.\n\n- Collect XM\n- Discover and claim new Portals\n- Link Portals to form XM Fields\n- Dismantle Enlightened XM Fields\n\n"

    const-string/jumbo v0, "message-label"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 75
    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 76
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 77
    mul-float v0, p2, v7

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    .line 78
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    .line 80
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/h;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    sget-object v4, Lcom/nianticproject/ingress/common/c/bs;->j:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/bs;->c()F

    move-result v4

    const v5, 0x3d4ccccd

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/h;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;FFF)V

    .line 88
    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollPercentY(F)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollingDisabled(ZZ)V

    .line 91
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 92
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 93
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 94
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3f733333

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    .line 99
    return-object v1
.end method

.method protected final c(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 105
    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    const/4 v3, 0x0

    const-string/jumbo v4, "Proceed"

    const-string/jumbo v5, ""

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/factionchoice/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Ljava/lang/String;Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method
