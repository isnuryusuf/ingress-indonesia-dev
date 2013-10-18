.class final Lcom/nianticproject/ingress/common/ui/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/b/r;->a:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 48
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 50
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    const-string/jumbo v0, "ada-wheels-sm"

    const-class v3, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 53
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 56
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 58
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/b/r;->a:Ljava/lang/String;

    const-string/jumbo v0, "message-label"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 59
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 66
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    const-string/jumbo v0, "default"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/b/r;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setX(F)V

    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 74
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->remove()Z

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/r;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 85
    return-void
.end method
