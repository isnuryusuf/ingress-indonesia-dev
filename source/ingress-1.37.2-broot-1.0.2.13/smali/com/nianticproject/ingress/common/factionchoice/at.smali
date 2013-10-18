.class final Lcom/nianticproject/ingress/common/factionchoice/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/factionchoice/az;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/nianticproject/ingress/shared/ai;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/az;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    .line 53
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->c:Ljava/lang/String;

    .line 54
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->d:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->e:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->f:Lcom/nianticproject/ingress/shared/ai;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/at;)Lcom/nianticproject/ingress/common/factionchoice/az;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    return-object v0
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 168
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "[%s is a member of this faction]"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 172
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    .line 174
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->pack()V

    .line 176
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 180
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4248

    const/4 v1, 0x0

    .line 61
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 68
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->d:Ljava/lang/String;

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    const-string/jumbo v0, "ada-wheels-sm"

    const-class v4, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-direct {v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 73
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v5, "Join the Resistance"

    const-string/jumbo v0, "fc-choose-humanist"

    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {v4, v5, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/au;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/factionchoice/au;-><init>(Lcom/nianticproject/ingress/common/factionchoice/at;)V

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->f:Lcom/nianticproject/ingress/shared/ai;

    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->e:Ljava/lang/String;

    const-string/jumbo v0, "fc-hint-humanist"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-static {v3, v4, v0}, Lcom/nianticproject/ingress/common/factionchoice/at;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :cond_0
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v5, "Join the Enlightened"

    const-string/jumbo v0, "fc-choose-enlightened"

    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {v4, v5, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/av;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/factionchoice/av;-><init>(Lcom/nianticproject/ingress/common/factionchoice/at;)V

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->f:Lcom/nianticproject/ingress/shared/ai;

    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->e:Ljava/lang/String;

    const-string/jumbo v0, "fc-hint-enlightened"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-static {v3, v4, v0}, Lcom/nianticproject/ingress/common/factionchoice/at;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :cond_1
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 81
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/at;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 190
    return-void
.end method
