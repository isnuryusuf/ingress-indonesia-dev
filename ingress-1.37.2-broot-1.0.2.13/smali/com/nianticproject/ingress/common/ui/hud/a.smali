.class public abstract Lcom/nianticproject/ingress/common/ui/hud/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/hud/b;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "hudGroup"

    sput-object v0, Lcom/nianticproject/ingress/common/ui/hud/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->e:Z

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 26
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 27
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 28
    sget-object v2, Lcom/nianticproject/ingress/common/ui/hud/a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/hud/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 35
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 37
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/hud/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 40
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->e:Z

    .line 46
    return-void
.end method

.method public a(F)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 51
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 56
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->e:Z

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 61
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-static {v1, p1}, Lcom/nianticproject/ingress/common/ui/hud/d;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/ui/hud/a;->b(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 66
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Lcom/badlogic/gdx/math/Rectangle;)V
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/a;->d:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 77
    return-void
.end method
