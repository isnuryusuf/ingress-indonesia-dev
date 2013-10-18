.class public final Lcom/nianticproject/ingress/common/missions/tutorial/r;
.super Lcom/nianticproject/ingress/common/ui/elements/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/b;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private c:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/w/b;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/w/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->a:Lcom/nianticproject/ingress/common/w/b;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/tutorial/r;)Lcom/nianticproject/ingress/common/w/b;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->a:Lcom/nianticproject/ingress/common/w/b;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 78
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setChecked(Z)V

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 79
    goto :goto_1

    .line 81
    :cond_1
    return-void
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4100

    .line 33
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setSize(FF)V

    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->r()Lcom/a/a/c;

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Agent Training"

    const-string/jumbo v3, "tutorial-header"

    invoke-direct {v1, v2, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->s()Lcom/a/a/c;

    .line 39
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "tutorial-step"

    invoke-direct {v2, v3, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "tutorial-step"

    invoke-direct {v2, v3, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "tutorial-step"

    invoke-direct {v2, v3, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v3, "4"

    const-string/jumbo v4, "tutorial-step"

    invoke-direct {v2, v3, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->c:Lcom/google/a/c/dc;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setDisabled(Z)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/nianticproject/ingress/common/missions/tutorial/r;->a(I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->s()Lcom/a/a/c;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v1, "Abort"

    const-string/jumbo v2, "tutorial-abort"

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->s()Lcom/a/a/c;

    .line 44
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v6}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Z)V

    .line 46
    invoke-virtual {v1, v7}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 48
    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/s;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/s;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/r;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method
