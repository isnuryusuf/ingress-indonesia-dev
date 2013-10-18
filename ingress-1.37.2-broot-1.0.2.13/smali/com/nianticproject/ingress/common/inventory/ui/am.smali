.class public final Lcom/nianticproject/ingress/common/inventory/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private a:Lcom/nianticproject/ingress/common/inventory/ui/an;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/an;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->a:Lcom/nianticproject/ingress/common/inventory/ui/an;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    const-string/jumbo v0, "large"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3c75c28f

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->d(Lcom/a/a/e;)Lcom/a/a/c;

    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->a:Lcom/nianticproject/ingress/common/inventory/ui/an;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-interface {v0, v1, p1}, Lcom/nianticproject/ingress/common/inventory/ui/an;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->a:Lcom/nianticproject/ingress/common/inventory/ui/an;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-interface {v0, v1, p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/an;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->a:Lcom/nianticproject/ingress/common/inventory/ui/an;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-interface {v0, v1, p1}, Lcom/nianticproject/ingress/common/inventory/ui/an;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const-string/jumbo v1, "act_container"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 55
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->a:Lcom/nianticproject/ingress/common/inventory/ui/an;

    invoke-interface {v1, v0, p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/an;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 56
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3df5c28f

    invoke-static {v1}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 59
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->a:Lcom/nianticproject/ingress/common/inventory/ui/an;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/inventory/ui/an;->a()Z

    move-result v0

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/am;->a:Lcom/nianticproject/ingress/common/inventory/ui/an;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/inventory/ui/an;->b()V

    .line 69
    return-void
.end method
