.class final Lcom/nianticproject/ingress/common/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/h;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/h;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/ui/h;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/i;-><init>(Lcom/nianticproject/ingress/common/ui/h;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/h;->a(Lcom/nianticproject/ingress/common/ui/h;)Lcom/nianticproject/ingress/common/ui/widget/af;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/h;->b(Lcom/nianticproject/ingress/common/ui/h;)Lcom/nianticproject/ingress/common/ui/widget/ag;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/widget/aa;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ILcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/ui/widget/ag;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/h;->a(Lcom/nianticproject/ingress/common/ui/h;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/h;->c(Lcom/nianticproject/ingress/common/ui/h;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 62
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 64
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2, p1}, Lcom/nianticproject/ingress/common/ui/h;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 66
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/h;->e(Lcom/nianticproject/ingress/common/ui/h;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "default-blue"

    invoke-direct {v1, v2, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/h;->d(Lcom/nianticproject/ingress/common/ui/h;)F

    move-result v2

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->e(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3d75c28f

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 70
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 71
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/h;->f(Lcom/nianticproject/ingress/common/ui/h;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 72
    new-instance v2, Lcom/nianticproject/ingress/common/ui/j;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/ui/j;-><init>(Lcom/nianticproject/ingress/common/ui/i;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 78
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/h;->h(Lcom/nianticproject/ingress/common/ui/h;)F

    move-result v2

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    .line 79
    const v3, 0x3df5c28f

    invoke-static {v3}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v1

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/i;->a:Lcom/nianticproject/ingress/common/ui/h;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/h;->d(Lcom/nianticproject/ingress/common/ui/h;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    .line 84
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 89
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/i;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 99
    return-void
.end method
