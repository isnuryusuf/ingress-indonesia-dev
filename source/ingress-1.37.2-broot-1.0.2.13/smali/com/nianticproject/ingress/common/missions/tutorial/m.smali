.class final Lcom/nianticproject/ingress/common/missions/tutorial/m;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/l;Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/m;->a:Lcom/nianticproject/ingress/common/missions/tutorial/l;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 48
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "Let\'s create a simulation portal for training purposes."

    aput-object v2, v1, v3

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/m;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 50
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const-string/jumbo v2, "Walk to any interesting object and take a picture."

    aput-object v2, v1, v4

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/m;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 53
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v2, "Launch Camera"

    const-string/jumbo v3, "tutorial-launch-camera"

    invoke-direct {v1, v2, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 55
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v3

    const v4, 0x3f266666

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    .line 56
    invoke-virtual {v0, v2}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 58
    new-instance v2, Lcom/nianticproject/ingress/common/missions/tutorial/n;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/n;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/m;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 72
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
